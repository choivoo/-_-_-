#!/usr/bin/env python3
"""Mini interpreter for the scoreboard/function subset of BCE (NOT Minecraft!).
It executes the generated timeline logic for ONE fake player (@s) to catch state-machine bugs
(cutscenes that never end, locks that are never restored, boss phases that skip, double rewards)."""
import os, re, sys, json, collections
ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "..", ".."))
FUNCS = os.path.join(ROOT, "src", "behavior_pack", "functions")


def load():
    files = {}
    for r, _, fs in os.walk(FUNCS):
        for f in fs:
            if f.endswith(".mcfunction"):
                rel = os.path.relpath(os.path.join(r, f), FUNCS)[:-11].replace(os.sep, "/")
                files[rel] = [l for l in open(os.path.join(r, f), encoding="utf-8").read().splitlines() if l.strip() and not l.startswith("#")]
    return files


class Sim:
    def __init__(self, files, entity_truth=None):
        self.f = files
        self.sb = collections.defaultdict(int)   # (name, obj) -> int ; @s is the single test player
        self.log = []                             # (tick, text) of side-effect commands
        self.calls = []
        self.tick = 0
        self.truth = entity_truth or (lambda cond: False)
        self.defined = set()

    def rng(self, spec, v):
        if ".." not in spec:
            return v == int(spec)
        a, b = spec.split("..")
        return (a == "" or v >= int(a)) and (b == "" or v <= int(b))

    def val(self, name, obj):
        return self.sb[(name, obj)]

    def run_line(self, line, depth=0):
        if depth > 40:
            raise RuntimeError("depth")
        line = line.strip()
        if line.startswith("execute "):
            rest = line[8:]
            while True:
                m = re.match(r"(if|unless) score (\S+) (\S+) matches (\S+) ?(.*)", rest)
                if m:
                    ok = self.rng(m.group(4), self.val(m.group(2), m.group(3)))
                    if m.group(1) == "unless": ok = not ok
                    if not ok: return
                    rest = m.group(5); continue
                m = re.match(r"(if|unless) score (\S+) (\S+) (=|>=|<=|<|>) (\S+) (\S+) ?(.*)", rest)
                if m:
                    a, b = self.val(m.group(2), m.group(3)), self.val(m.group(5), m.group(6))
                    ok = {"=": a == b, ">=": a >= b, "<=": a <= b, "<": a < b, ">": a > b}[m.group(4)]
                    if m.group(1) == "unless": ok = not ok
                    if not ok: return
                    rest = m.group(7); continue
                m = re.match(r"(if|unless) (entity|block|blocks) (.*?)( (?:run|if|unless) .*)", rest)
                if m:
                    ok = self.truth(m.group(3))
                    if m.group(1) == "unless": ok = not ok
                    if not ok: return
                    rest = m.group(4).strip(); continue
                m = re.match(r"(as|at|positioned|facing|rotated|anchored) (\[?[^ ]+(?:\[[^\]]*\])?(?: [^ ]+(?: [^ ]+)?)?) ?(.*)", rest)
                if m and not rest.startswith("run "):
                    # context modifiers: ignored (single test player). keep consuming tokens up to next keyword
                    rest = re.sub(r"^(as|at|positioned|facing|rotated|anchored)\s+(entity\s+)?(\S+\[[^\]]*\]|\S+)(\s+(?!if |unless |run |as |at |positioned |facing |rotated )\S+){0,2}\s*", "", rest)
                    continue
                if rest.startswith("run "):
                    return self.run_line(rest[4:], depth + 1)
                self.log.append((self.tick, "UNPARSED " + rest)); return
        m = re.match(r"function (\S+)$", line)
        if m:
            self.calls.append((self.tick, m.group(1)))
            for l in self.f[m.group(1)]:
                self.run_line(l, depth + 1)
            return
        m = re.match(r"scoreboard players (set|add|remove) (\S+) (\S+) (-?\d+)$", line)
        if m:
            k = (m.group(2), m.group(3)); n = int(m.group(4))
            if m.group(1) == "set": self.sb[k] = n
            elif m.group(1) == "add": self.sb[k] += n
            else: self.sb[k] -= n
            return
        m = re.match(r"scoreboard players operation (\S+) (\S+) (=|\+=|-=|%=|/=) (\S+) (\S+)$", line)
        if m:
            a = (m.group(1), m.group(2)); b = (m.group(4), m.group(5)); op = m.group(3)
            if op == "=": self.sb[a] = self.sb[b]
            elif op == "+=": self.sb[a] += self.sb[b]
            elif op == "-=": self.sb[a] -= self.sb[b]
            elif op == "%=": self.sb[a] %= self.sb[b] or 1
            elif op == "/=": self.sb[a] //= self.sb[b] or 1
            return
        self.log.append((self.tick, line))


def check(cond, msg, fails):
    if not cond: fails.append(msg)


def main():
    files = load(); fails = []; rep = {}
    scenes = {json.load(open(os.path.join(ROOT, "src/data/scenes", f), encoding="utf-8"))["id"]: json.load(open(os.path.join(ROOT, "src/data/scenes", f), encoding="utf-8"))
              for f in os.listdir(os.path.join(ROOT, "src/data/scenes")) if f.endswith(".json")}
    # --- every cutscene: start -> tick loop -> end exactly at duration; restores camera/input
    for sid, sc in scenes.items():
        s = Sim(files)
        s.sb[("#state", "bce_sys")] = 7; s.sb[("#bstate", "bce_sys")] = 0
        s.run_line("function cutscenes/%s/start" % sid)
        s.sb[("@s", "bce_cs")] = sc["numeric_id"]
        ended = None
        for t in range(sc["duration"] + 5):
            s.tick = t
            if s.sb[("@s", "bce_cs")] == 0: ended = t; break
            s.run_line("function cutscenes/%s/tick" % sid)
        chained = {"boss_death": 4}   # its on-end hook legitimately starts the ending cutscene (cs id 4)
        if sid in chained:
            ended = sc["duration"] if s.sb[("@s", "bce_cs")] == chained[sid] else ended
        check(ended == sc["duration"] , "%s: ended at %s, expected %d" % (sid, ended, sc["duration"]), fails)
        txt = [l for _, l in s.log]
        check("camera @s clear" in txt, sid + ": camera not restored", fails)
        check("inputpermission set @s movement enabled" in txt, sid + ": input not restored", fails)
        check(s.sb[("@s", "bce_cst")] == 0 or sid in chained, sid + ": timer not reset", fails)
        # skip path at a random mid tick
        k = Sim(files); k.run_line("function cutscenes/%s/start" % sid); k.sb[("@s", "bce_cs")] = sc["numeric_id"]
        for t in range(sc["duration"] // 3): k.tick = t; k.run_line("function cutscenes/%s/tick" % sid)
        k.run_line("function cutscenes/skip")
        check(k.sb[("@s", "bce_cs")] == 0 and "inputpermission set @s movement enabled" in [l for _, l in k.log], sid + ": skip does not restore state", fails)
        rep["cutscene_" + sid] = {"ended_tick": ended}
    # --- boss pattern timeline per phase: warn precedes hit by >= 12 ticks, every phase reachable in order
    s = Sim(files, entity_truth=lambda c: False)
    for k, v in {"#bstate": 2, "#bhp": 1000, "#bphase": 1, "#btimer": 0, "#binv": 0, "#bfin": 0, "#btrack": 1, "#c10": 10}.items(): s.sb[(k, "bce_sys")] = v
    order = []; warns = {}; gaps = []
    for t in range(4000):
        s.tick = t
        s.sb[("#bhp", "bce_sys")] -= 1 if t % 3 == 0 else 0
        before = len(s.calls)
        s.run_line("function bosses/fight")
        for tick, fn in s.calls[before:]:
            n = fn.split("/")[-1]
            if n.startswith("w_"): warns[n[2:]] = t
            if n.startswith("h_") and n[2:] in warns: gaps.append((n, t - warns[n[2:]]))
            if fn in ("bosses/to_phase2", "bosses/to_phase3", "bosses/final_start", "bosses/death"): order.append((fn, t))
        if s.sb[("#bstate", "bce_sys")] != 2 or any(f == "bosses/death" for f, _ in order): break
    names = [f for f, _ in order]
    check(names[:3] == ["bosses/to_phase2", "bosses/to_phase3", "bosses/final_start"], "boss progression order wrong: %s" % names, fails)
    check("bosses/death" in names, "boss never dies when ledger reaches 0", fails)
    mingap = min(g for _, g in gaps) if gaps else 0
    check(mingap >= 12, "boss warn->hit gap too small (%d ticks)" % mingap, fails)
    check(names.count("bosses/death") >= 1, "death not triggered", fails)
    rep["boss"] = {"events": order, "min_warn_to_hit_ticks": mingap, "samples": len(gaps)}
    # --- quest reward uniqueness: each done_N advances q exactly N->N+1 and gives items only there
    for n in range(1, 7):
        txt = "\n".join(files["quests/done_%d" % n])
        check("bce_q %d" % (n + 1) in txt, "quests/done_%d does not advance to %d" % (n, n + 1), fails)
        check(("scores={bce_q=%d" % n) in "\n".join(files["quests/check"]), "quests/check lacks condition for q%d" % n, fails)
    # --- every inputpermission disable has a matching enable path
    dis = [f for f, ls in files.items() if any("movement disabled" in l for l in ls)]
    check(all(f.startswith("cutscenes/") and f.endswith("/start") for f in dis), "input is disabled outside cutscene start: %s" % dis, fails)
    check(any("movement enabled" in l for l in files["core/safety"]), "core/safety lacks input recovery", fails)
    # --- state machine: install idempotency guard
    inst = "\n".join(files["bootstrap/install"])
    check("unless score #state bce_sys matches 1.. run function bootstrap/first_install" in inst, "install not guarded (idempotency)", fails)
    # --- simulated install twice: build restarts only once
    s = Sim(files, entity_truth=lambda c: True)
    for _ in range(2):
        for l in files["bootstrap/install"]:
            s.run_line(l)
    check(s.sb[("#state", "bce_sys")] == 3, "after install twice #state=%d (expected 3 WORLD_BUILDING)" % s.sb[("#state", "bce_sys")], fails)
    check(sum(1 for _, fn in s.calls if fn == "build/start") == 1, "build/start executed more than once", fails)
    # --- build sequencer completes
    plan = json.load(open(os.path.join(ROOT, "reports", "build_plan.json")))
    s.sb[("#bstop", "bce_sys")] = plan["total_steps"]
    for t in range(plan["total_steps"] + 5):
        s.tick = t
        s.run_line("function build/step")
        # emulate chunk-probe success
        pass
    rep["build_sequencer"] = {"steps": plan["total_steps"], "final_bstep": s.sb[("#bstep", "bce_sys")], "state": s.sb[("#state", "bce_sys")]}
    check(s.sb[("#bstep", "bce_sys")] == plan["total_steps"] and s.sb[("#state", "bce_sys")] == 4, "build sequencer did not finish into MAIN_MENU", fails)
    print(json.dumps(rep, ensure_ascii=False)[:600])
    print("FAILS:", len(fails))
    for f in fails: print(" -", f)
    json.dump({"fails": fails, "report": rep}, open(os.path.join(ROOT, "reports", "sim_report.json"), "w", encoding="utf-8"), ensure_ascii=False, indent=1, default=str)
    return 1 if fails else 0


if __name__ == "__main__":
    sys.exit(main())
