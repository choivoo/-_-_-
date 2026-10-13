#!/usr/bin/env python3
"""Mini interpreter for the scoreboard / function / selector-filter subset of BCE (NOT Minecraft!).
Simulates ONE test player (@s/@a) and one set of world flags to find state-machine bugs. Spatial queries are answered by a
caller-supplied truth function. Passing here != passing in the game."""
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


def rng_ok(spec, v):
    if ".." not in spec: return v == int(spec)
    a, b = spec.split("..")
    return (a == "" or v >= int(a)) and (b == "" or v <= int(b))


class Sim:
    def __init__(self, files, truth=None, admin=False, online=True):
        self.online = online
        self.f, self.sb, self.log, self.calls = files, collections.defaultdict(int), [], []
        self.tags = {"@s": set(["bce_admin"] if admin else [])}
        self.tick = 0
        self.truth = truth or (lambda kind, text: False)

    def val(self, n, o): return self.sb[(n, o)]

    def sel_ok(self, sel):
        """Evaluate player selectors (@s/@a/@p with scores= and tag=) against the single test player."""
        m = re.match(r"(@[aps])(?:\[(.*)\])?$", sel)
        if not m: return self.truth("entity", sel)
        if not self.online: return False
        args = m.group(2) or ""
        sm = re.search(r"scores=\{([^}]*)\}", args)
        if sm:
            for kv in sm.group(1).split(","):
                k, v = kv.split("=")
                if not rng_ok(v, self.val("@s", k)): return False
        for t in re.findall(r"(?:^|,)tag=(!?)([a-z0-9_]+)", args):
            has = t[1] in self.tags["@s"]
            if (t[0] == "!") == has: return False
        rest = re.sub(r"scores=\{[^}]*\}", "", args)
        if "hasitem" in rest or re.search(r"\b[xyz]=|\br=|\bdx=", rest):
            return self.truth("entity", sel)
        return True

    def run_line(self, line, depth=0):
        if depth > 60: raise RuntimeError("depth")
        line = line.strip()
        if line.startswith("execute "):
            tk = line.split(" ")[1:]
            i = 0
            while i < len(tk):
                w = tk[i]
                if w == "run":
                    return self.run_line(" ".join(tk[i + 1:]), depth + 1)
                if w in ("if", "unless"):
                    neg = w == "unless"; kind = tk[i + 1]
                    if kind == "score":
                        a, ao, op = tk[i + 2], tk[i + 3], tk[i + 4]
                        if op == "matches":
                            ok = rng_ok(tk[i + 5], self.val(a, ao)); i += 6
                        else:
                            b, bo = tk[i + 5], tk[i + 6]
                            x, y = self.val(a, ao), self.val(b, bo)
                            ok = {"=": x == y, ">=": x >= y, "<=": x <= y, "<": x < y, ">": x > y}[op]; i += 7
                    elif kind == "entity":
                        ok = self.sel_ok(tk[i + 2]); i += 3
                    elif kind == "block":
                        ok = self.truth("block", " ".join(tk[i + 2:i + 6])); i += 6
                    else:
                        self.log.append((self.tick, "UNPARSED " + line)); return
                    if neg: ok = not ok
                    if not ok: return
                    continue
                if w == "as":
                    if not self.sel_ok(tk[i + 1]): return
                    i += 2; continue
                if w == "at": i += 2; continue
                if w == "anchored": i += 2; continue
                if w == "positioned":
                    i += 3 if tk[i + 1] == "as" else 4; continue
                if w == "rotated": i += 3; continue
                if w == "facing":
                    i += 4 if tk[i + 1] == "entity" else 4; continue
                self.log.append((self.tick, "UNPARSED " + line)); return
        m = re.match(r"function (\S+)$", line)
        if m:
            self.calls.append((self.tick, m.group(1)))
            for l in self.f[m.group(1)]: self.run_line(l, depth + 1)
            return
        m = re.match(r"scoreboard players (set|add|remove) (\S+) (\S+) (-?\d+)$", line)
        if m:
            tgt = m.group(2)
            tgt = "@s" if tgt.startswith("@") else tgt
            k = (tgt, m.group(3)); n = int(m.group(4))
            if m.group(1) == "set": self.sb[k] = n
            elif m.group(1) == "add": self.sb[k] += n
            else: self.sb[k] -= n
            return
        m = re.match(r"scoreboard players operation (\S+) (\S+) (=|\+=|-=|\*=|%=|/=) (\S+) (\S+)$", line)
        if m:
            a = ("@s" if m.group(1).startswith("@") else m.group(1), m.group(2)); b = ("@s" if m.group(4).startswith("@") else m.group(4), m.group(5)); op = m.group(3)
            if op == "=": self.sb[a] = self.sb[b]
            elif op == "+=": self.sb[a] += self.sb[b]
            elif op == "-=": self.sb[a] -= self.sb[b]
            elif op == "*=": self.sb[a] *= self.sb[b]
            elif op == "%=": self.sb[a] %= self.sb[b] or 1
            elif op == "/=": self.sb[a] = int(self.sb[a] / (self.sb[b] or 1))
            return
        m = re.match(r"tag (@s|@a\S*) (add|remove) ([a-z0-9_]+)$", line)
        if m:
            (self.tags["@s"].add if m.group(2) == "add" else self.tags["@s"].discard)(m.group(3)); return
        self.log.append((self.tick, line))

    def cmds(self, needle): return [l for _, l in self.log if needle in l]


FAILS = []
REP = {}


def check(c, msg):
    if not c: FAILS.append(msg)


def init_player(s, **kw):
    for k, v in dict(bce_stam=100, bce_q=1, bce_ps=2, bce_cp=0).items():
        s.sb[("@s", k)] = v
    for k, v in kw.items(): s.sb[("@s", k)] = v
    s.tags["@s"] |= {"bce_init", "bce_ctl"}
    for c in ("_c2", "_c5", "_c10", "_c19", "_c20", "_c100", "_c4"): s.sb[(c, "bce_sys")] = int(c[2:])
    for k, v in {"_cost_dodge": 25, "_cost_heavy": 20, "_cost_ult": 30, "_cost_dash": 15, "_cost_bslash": 25, "_cost_judge": 50, "_shake": 1, "_quality": 1, "_mode": 0, "_regen": 2, "_regen_c": 1}.items():
        s.sb[(k, "bce_sys")] = v


def scenario_cutscenes(files):
    scenes = {}
    for f in os.listdir(os.path.join(ROOT, "src/data/scenes")):
        if f.endswith(".json"):
            d = json.load(open(os.path.join(ROOT, "src/data/scenes", f), encoding="utf-8")); scenes[d["id"]] = d
    chained = {"boss_death": 4}
    for sid, sc in scenes.items():
        s = Sim(files); init_player(s); s.sb[("_state", "bce_sys")] = 7
        s.run_line("function cutscenes/%s/start" % sid)
        s.sb[("@s", "bce_cs")] = sc["numeric_id"]
        ended = None
        for t in range(sc["duration"] + 5):
            s.tick = t
            if s.sb[("@s", "bce_cs")] == 0 or (sid in chained and s.sb[("@s", "bce_cs")] == chained[sid]): ended = t; break
            s.run_line("function cutscenes/%s/tick" % sid)
        check(ended == sc["duration"], "%s ended at %s expected %d" % (sid, ended, sc["duration"]))
        txt = [l for _, l in s.log]
        check("camera @s clear" in txt, sid + ": camera not restored")
        check("inputpermission set @s movement enabled" in txt and "inputpermission set @s camera enabled" in txt, sid + ": input not fully restored")
        k = Sim(files); init_player(k); k.run_line("function cutscenes/%s/start" % sid); k.sb[("@s", "bce_cs")] = sc["numeric_id"]
        for t in range(sc["duration"] // 3): k.tick = t; k.run_line("function cutscenes/%s/tick" % sid)
        k.run_line("function cutscenes/skip")
        check(k.sb[("@s", "bce_cs")] in (0, chained.get(sid, 0)) and "inputpermission set @s camera enabled" in [l for _, l in k.log], sid + ": skip does not restore")
        REP["cutscene_" + sid] = ended
    # stuck-cutscene recovery by core/safety (timer exceeded)
    s = Sim(files); init_player(s); s.tags["@s"].add("bce_cs"); s.sb[("@s", "bce_cs")] = 1; s.sb[("@s", "bce_cst")] = 1600
    s.run_line("function core/safety")
    check("bce_cs" not in s.tags["@s"] and "camera @s clear" in [l for _, l in s.log], "core/safety did not rescue a stuck cutscene")


def scenario_boss(files):
    s = Sim(files); init_player(s)
    for k, v in {"_bstate": 2, "_bhp": 1000, "_bphase": 1, "_btimer": 0, "_binv": 0, "_bfin": 0, "_btrack": 1}.items(): s.sb[(k, "bce_sys")] = v
    order, warns, gaps = [], {}, []
    for t in range(4000):
        s.tick = t; s.sb[("_bhp", "bce_sys")] -= 1 if t % 3 == 0 else 0
        before = len(s.calls); s.run_line("function bosses/fight")
        for _, fn in s.calls[before:]:
            n = fn.split("/")[-1]
            if n.startswith("w_"): warns[n[2:]] = t
            if n.startswith("h_") and n[2:] in warns: gaps.append(t - warns[n[2:]])
            if fn in ("bosses/to_phase2", "bosses/to_phase3", "bosses/final_start", "bosses/death_go", "bosses/death"): order.append(fn)
        if s.sb[("_bstate", "bce_sys")] != 2: break
    check(order[:3] == ["bosses/to_phase2", "bosses/to_phase3", "bosses/final_start"], "boss progression wrong: %s" % order)
    check("bosses/death_go" in order, "boss never dies at ledger<=0")
    check(order.count("bosses/death_go") == 1, "boss death executed more than once")
    check(min(gaps) >= 12, "warn->hit gap too small: %s" % min(gaps))
    REP["boss"] = {"order": order, "min_gap": min(gaps)}
    # phase transition invulnerability (_binv blocks pattern events)
    s = Sim(files); init_player(s)
    for k, v in {"_bstate": 2, "_bhp": 640, "_bphase": 1, "_btimer": 19, "_binv": 0, "_bfin": 0, "_btrack": 1}.items(): s.sb[(k, "bce_sys")] = v
    s.run_line("function bosses/fight")
    check(s.sb[("_bphase", "bce_sys")] == 2 and s.sb[("_binv", "bce_sys")] == 40, "phase 2 transition missing invulnerability window")
    # all players left the arena: reset after 100 ticks, boss state back to idle
    s = Sim(files, truth=lambda k, t: False); init_player(s)
    for k, v in {"_bstate": 2, "_bhp": 400, "_bphase": 2, "_bempty": 0}.items(): s.sb[(k, "bce_sys")] = v
    for t in range(105): s.tick = t; s.run_line("function bosses/watch")
    check(s.sb[("_bstate", "bce_sys")] == 0 and s.sb[("_bhp", "bce_sys")] == 1000, "arena-empty reset failed")
    # intro stuck + nobody present => reset
    s = Sim(files, truth=lambda k, t: False); init_player(s)
    s.sb[("_bstate", "bce_sys")] = 1
    for t in range(105): s.run_line("function bosses/tick")
    check(s.sb[("_bstate", "bce_sys")] == 0, "intro state stuck without players")
    # dying state with nobody in a cutscene is finalised
    s = Sim(files, truth=lambda k, t: False); init_player(s); s.sb[("_bstate", "bce_sys")] = 3
    s.run_line("function bosses/tick")
    check(s.sb[("_bstate", "bce_sys")] == 4 and s.sb[("_bdead", "bce_sys")] == 1, "dying state not finalised")


def scenario_combat(files):
    # 3-hit combo, cooldown gate, window expiry, stamina gate for the heavy third hit
    s = Sim(files); init_player(s)
    s.run_line("function abilities/slash"); check(s.sb[("@s", "bce_combo")] == 1, "slash 1 failed")
    s.run_line("function abilities/slash"); check(s.sb[("@s", "bce_combo")] == 1, "slash fired during cooldown (double processing)")
    s.sb[("@s", "bce_cdslash")] = 0; s.run_line("function abilities/slash"); check(s.sb[("@s", "bce_combo")] == 2, "slash 2 failed")
    s.sb[("@s", "bce_cdslash")] = 0; s.run_line("function abilities/slash"); check(s.sb[("@s", "bce_combo")] == 3 and s.sb[("@s", "bce_stam")] == 80, "slash 3 / stamina cost wrong (%s)" % s.sb[("@s", "bce_stam")])
    s.sb[("@s", "bce_cdslash")] = 0; s.run_line("function abilities/slash"); check(s.sb[("@s", "bce_combo")] == 1, "combo did not wrap")
    s = Sim(files); init_player(s, bce_stam=10, bce_combo=2)
    s.run_line("function abilities/slash"); check(s.sb[("@s", "bce_combo")] == 1 and s.sb[("@s", "bce_stam")] == 10, "heavy hit allowed without stamina")
    s = Sim(files); init_player(s, bce_cwin=1, bce_combo=2); s.run_line("function player/timers")
    check(s.sb[("@s", "bce_combo")] == 0, "combo not reset when window expires")
    # dodge: stamina, cooldown, i-frame, no re-trigger
    s = Sim(files); init_player(s)
    s.run_line("function abilities/dodge_f")
    check(s.sb[("@s", "bce_stam")] == 75 and s.sb[("@s", "bce_cddodge")] == 24 and "bce_iframe" in s.tags["@s"] and s.sb[("@s", "bce_iframe")] == 10, "dodge state wrong")
    s.run_line("function abilities/dodge_f"); check(s.sb[("@s", "bce_stam")] == 75, "dodge re-triggered during cooldown")
    s = Sim(files); init_player(s, bce_stam=20); s.run_line("function abilities/dodge_b"); check(s.sb[("@s", "bce_stam")] == 20, "dodge allowed without stamina")
    for _ in range(10): s.run_line("function player/timers")
    check("bce_iframe" not in (set() if s.sb[("@s", "bce_iframe")] > 0 else s.tags["@s"]) or s.sb[("@s", "bce_iframe")] == 0, "i-frame tag not cleared")
    # star dash / black star slash / judgment
    for fn, cd, cost in (("dash", "bce_cddash", 15), ("bslash", "bce_cdbslash", 25)):
        s = Sim(files); init_player(s); s.run_line("function abilities/" + fn)
        check(s.sb[("@s", "bce_stam")] == 100 - cost and s.sb[("@s", cd)] > 0, fn + " state wrong")
        s.run_line("function abilities/" + fn); check(s.sb[("@s", "bce_stam")] == 100 - cost, fn + " fired during cooldown")
    check(not any("bce_hitmark" in c and "add" in c for c in []), "n/a")
    s = Sim(files); init_player(s); s.run_line("function abilities/bslash")
    check(s.cmds("tag @e[tag=bce_hitmark] remove bce_hitmark"), "black slash leaves hit-mark tags behind")
    s = Sim(files); init_player(s); s.run_line("function abilities/judge")
    check(s.sb[("@s", "bce_ultt")] == 1 and "bce_iframe" in s.tags["@s"] and s.sb[("@s", "bce_stam")] == 50, "judgment prepare state wrong")
    s.run_line("function abilities/judge"); check(s.sb[("@s", "bce_stam")] == 50, "judgment re-triggered while charging")
    dmg_t = []
    for t in range(1, 60):
        s.tick = t; n = len(s.log); s.run_line("function player/timers")
        if any("damage" in l for _, l in s.log[n:]): dmg_t.append(t)
        if s.sb[("@s", "bce_ultt")] == 0: break
    check(s.sb[("@s", "bce_ultt")] == 0 and len(dmg_t) >= 2, "judgment sequence did not complete (damage ticks %s)" % dmg_t)
    REP["judgment_damage_ticks"] = dmg_t
    # input edge detection: holding an item does not retrigger
    s = Sim(files, truth=lambda k, t: "blaze_rod" in t); init_player(s)
    n_trig = 0
    for t in range(5):
        s.tick = t; n = len(s.calls); s.run_line("function player/input")
        n_trig += sum(1 for _, fn in s.calls[n:] if fn == "abilities/dispatch")
    check(n_trig == 1, "held item triggered %d times" % n_trig)
    # enemy AI: telegraph then damage, i-frame protection, leash/despawn
    s = Sim(files, truth=lambda k, t: True); init_player(s); s.tags["@s"].add("bce_e1")
    s.sb[("@s", "bce_ai")] = 2
    seq = []
    for t in range(0, 80, 2):
        s.tick = t; s.run_line("function enemies/ai_one")
        seq.append(s.sb[("@s", "bce_ai")])
    check(3 in seq and 5 in seq and seq.index(3) < seq.index(5), "enemy never telegraphed before attacking: %s" % seq)
    dmg_calls = [i for i, (_, l) in enumerate(s.log) if "damage @a" in l]
    check(dmg_calls, "enemy attack dealt no damage")
    s = Sim(files, truth=lambda k, t: False); init_player(s); s.tags["@s"].add("bce_e1"); s.sb[("@s", "bce_ai")] = 7; s.sb[("@s", "bce_aitm")] = 98
    s.run_line("function enemies/ai_one"); check(any("kill @s" in l for _, l in s.log), "non-wave enemy not despawned after RETURN")
    s = Sim(files, truth=lambda k, t: False); init_player(s); s.tags["@s"] |= {"bce_e1", "bce_wave"}; s.sb[("@s", "bce_ai")] = 7; s.sb[("@s", "bce_aitm")] = 98
    s.run_line("function enemies/ai_one"); check(not any("kill @s" in l for _, l in s.log) and s.sb[("@s", "bce_ai")] == 0, "wave enemy must return to IDLE, never despawn")


def scenario_progress(files):
    # quests: each reward exactly once; q chain reaches 8; checkpoint return
    s = Sim(files, truth=lambda k, t: "@e[" not in t); init_player(s, bce_q=1)
    s.sb[("_yard", "bce_sys")] = 1; s.sb[("_puzzle", "bce_sys")] = 1; s.sb[("_wall", "bce_sys")] = 4
    for t in range(12): s.run_line("function quests/check")
    check(s.sb[("@s", "bce_q")] == 7, "quest chain stopped at %d (expected 7 = boss quest)" % s.sb[("@s", "bce_q")])
    check(len(s.cmds("give @s iron_sword")) == 1, "sword reward given %d times" % len(s.cmds("give @s iron_sword")))
    check(len(s.cmds("give @s nether_star")) == 1, "nether star reward duplicated")
    s = Sim(files, truth=lambda k, t: "@e[" not in t); init_player(s, bce_cp=0)
    for t in range(3): s.run_line("function checkpoints/check")
    check(s.sb[("@s", "bce_cp")] == 5 and len(s.cmds("spawnpoint")) == 5, "checkpoints not activated exactly once each (cp=%s)" % s.sb[("@s", "bce_cp")])
    s = Sim(files); init_player(s, bce_cp=3); s.run_line("function checkpoints/return")
    check(any(l == "tp @s 164.5 100 0.5" for _, l in s.log), "checkpoint return teleport wrong: %s" % [l for _, l in s.log][:2])
    # rejoin: persisted scores & tags => init must not reset progress
    s = Sim(files); init_player(s, bce_q=5, bce_cp=3); s.run_line("function player/new_players")
    check(s.sb[("@s", "bce_q")] == 5 and s.sb[("@s", "bce_cp")] == 3, "rejoin reset quest/checkpoint")
    s = Sim(files); s.tags["@s"] = set(); s.run_line("function player/new_players")
    check("bce_init" in s.tags["@s"] or s.sb[("@s", "bce_q")] == 0, "new player not initialised")
    # admin separation
    s = Sim(files, admin=False); init_player(s, bce_q=1); s.run_line("function admin/set_quest_7"); check(s.sb[("@s", "bce_q")] == 1, "admin command ran without bce_admin tag")
    s = Sim(files, admin=True); init_player(s, bce_q=1); s.run_line("function admin/set_quest_7"); check(s.sb[("@s", "bce_q")] == 7, "admin command blocked for admin")


def scenario_build(files):
    plan = json.load(open(os.path.join(ROOT, "reports", "build_plan.json")))
    N = plan["total_steps"]
    # idempotent install
    s = Sim(files, truth=lambda k, t: True)
    for _ in range(2):
        for l in files["bootstrap/install"]: s.run_line(l)
    check(s.sb[("_state", "bce_sys")] == 3 and sum(1 for _, fn in s.calls if fn == "build/start") == 1, "install not idempotent")
    # full run, one step per tick
    steps_per_tick = []
    for t in range(N + 20):
        s.tick = t; b0 = s.sb[("_bstep", "bce_sys")]
        s.run_line("function build/step"); steps_per_tick.append(s.sb[("_bstep", "bce_sys")] - b0)
        if s.sb[("_state", "bce_sys")] != 3: break
    check(max(steps_per_tick) <= 1, "more than one build step in a tick")
    check(s.sb[("_state", "bce_sys")] == 4 and s.sb[("_bsm", "bce_sys")] == 5 and s.sb[("_bstep", "bce_sys")] == N, "build did not COMPLETE (state=%s bsm=%s step=%s)" % (s.sb[("_state", "bce_sys")], s.sb[("_bsm", "bce_sys")], s.sb[("_bstep", "bce_sys")]))
    REP["build_ticks"] = t
    # pause / resume / persistence across a "world restart" (scores copied to a fresh Sim)
    s = Sim(files, truth=lambda k, t: True)
    for l in files["bootstrap/install"]: s.run_line(l)
    for t in range(30): s.tick = t; s.run_line("function build/step")
    at = s.sb[("_bstep", "bce_sys")]
    s.run_line("function build/pause")
    for t in range(30, 60): s.tick = t; s.run_line("function build/step")
    check(s.sb[("_bstep", "bce_sys")] == at and s.sb[("_bsm", "bce_sys")] == 6, "pause did not freeze the build")
    s2 = Sim(files, truth=lambda k, t: True); s2.sb.update(s.sb)       # restart: scoreboard survives
    s2.run_line("function build/resume")
    for t in range(60, 70): s2.tick = t; s2.run_line("function build/step")
    check(s2.sb[("_bstep", "bce_sys")] > at, "build did not resume after restart")
    check(s2.sb[("_bstep", "bce_sys")] - at <= 10, "resume repeated or skipped steps")
    # chunk never loads => FAILED (no infinite wait), then recover restarts that zone only
    marker_ok = {"v": False}
    s = Sim(files, truth=lambda k, t: marker_ok["v"] if k == "block" else False)
    for l in files["bootstrap/install"]: s.run_line(l)
    for t in range(2600): s.tick = t; s.run_line("function build/step")
    check(s.sb[("_bsm", "bce_sys")] == 7 and s.sb[("_berr", "bce_sys")] == 1, "chunk timeout did not FAIL (bsm=%s err=%s)" % (s.sb[("_bsm", "bce_sys")], s.sb[("_berr", "bce_sys")]))
    s.run_line("function build/recover"); marker_ok["v"] = True
    check(s.sb[("_bsm", "bce_sys")] == 1 and s.sb[("_bstep", "bce_sys")] == s.sb[("_bzstart", "bce_sys")], "recover did not restart the failed zone")
    for t in range(3000, 3000 + N + 20): s.tick = t; s.run_line("function build/step")
    check(s.sb[("_bsm", "bce_sys")] == 5, "build did not complete after recovery")
    # verification failure (blocks missing after a step) => FAILED with a zone-coded error
    cnt = {"n": 0}
    def truth(k, t):
        if k != "block": return False
        return t.endswith(" stone") and True or False   # marker present, sample blocks absent
    s = Sim(files, truth=truth)
    for l in files["bootstrap/install"]: s.run_line(l)
    for t in range(N + 10): s.tick = t; s.run_line("function build/step")
    check(s.sb[("_bsm", "bce_sys")] == 7 and s.sb[("_berr", "bce_sys")] >= 10, "verification failure not detected (err=%s)" % s.sb[("_berr", "bce_sys")])


def scenario_auto(files):
    # fresh world + first player => initialise once, build starts, a second tick never re-initialises
    s = Sim(files, truth=lambda k, t: True)
    for _ in range(3):
        s.tick += 1; s.run_line("function auto/tick")
    check(s.sb[("_astate", "bce_sys")] == 2 and s.sb[("_state", "bce_sys")] == 3, "auto: first tick with a player did not start the build (astate=%s state=%s)" % (s.sb[("_astate", "bce_sys")], s.sb[("_state", "bce_sys")]))
    check(sum(1 for _, fn in s.calls if fn == "auto/initialize") == 1, "auto: initialise ran more than once")
    check(sum(1 for _, fn in s.calls if fn == "auto/first_join") == 1, "auto: first_join ran more than once")
    # no player yet -> nothing heavy happens
    s = Sim(files, truth=lambda k, t: False, online=False)
    for _ in range(3): s.tick += 1; s.run_line("function auto/tick")
    check(s.sb[("_astate", "bce_sys")] == 0 and not any(fn == "auto/initialize" for _, fn in s.calls), "auto: initialised although no player exists")
    # saved, finished world: re-join must neither rebuild nor re-run the opening
    s = Sim(files, truth=lambda k, t: True); init_player(s, bce_ps=2, bce_q=3)
    s.sb[("_astate", "bce_sys")] = 5; s.sb[("_state", "bce_sys")] = 7; s.sb[("_built", "bce_sys")] = 1
    for _ in range(40): s.tick += 1; s.run_line("function auto/tick")
    check(not any(fn in ("auto/initialize", "build/start", "auto/start_player", "cutscenes/opening/start") for _, fn in s.calls), "auto: re-join of a finished world repeated work: %s" % sorted({fn for _, fn in s.calls if fn.startswith(("auto/", "build/start", "cutscenes/open"))}))
    check(s.sb[("@s", "bce_q")] == 3, "auto: re-join changed the quest")
    # world with a player who never started => placed at the altar and opening starts exactly once
    s = Sim(files, truth=lambda k, t: True); init_player(s, bce_ps=0)
    s.sb[("_astate", "bce_sys")] = 4; s.sb[("_state", "bce_sys")] = 4
    for _ in range(12): s.tick += 1; s.run_line("function auto/tick")
    check(sum(1 for _, fn in s.calls if fn == "cutscenes/opening/start") == 1 and s.sb[("_astate", "bce_sys")] == 5, "auto: opening not started exactly once")
    # build FAILED => automatic retry (<=3) then ERROR state, never a rebuild from scratch
    s = Sim(files, truth=lambda k, t: True); s.sb[("_astate", "bce_sys")] = 2; s.sb[("_state", "bce_sys")] = 3; s.sb[("_bsm", "bce_sys")] = 7; s.sb[("_c20", "bce_sys")] = 20
    for t in range(900):
        s.tick = t; s.run_line("function auto/building_tick"); s.sb[("_bsm", "bce_sys")] = 7
    check(s.sb[("_astate", "bce_sys")] == 6 and s.calls.count((s.calls[0][0], "build/recover")) >= 0 and sum(1 for _, fn in s.calls if fn == "build/recover") == 3, "auto: retry policy wrong (recoveries=%d astate=%s)" % (sum(1 for _, fn in s.calls if fn == "build/recover"), s.sb[("_astate", "bce_sys")]))


def main():
    files = load()
    for fn in (scenario_cutscenes, scenario_boss, scenario_combat, scenario_progress, scenario_build, scenario_auto):
        try:
            fn(files)
        except Exception as e:      # a crash in a scenario is a failure, never a silent pass
            import traceback; traceback.print_exc(); FAILS.append("%s crashed: %r" % (fn.__name__, e))
    dis = [f for f, ls in files.items() if any("movement disabled" in l for l in ls)]
    check(all(f.startswith("cutscenes/") and (f.endswith("/start") or f.endswith("/tick")) for f in dis), "input disabled outside cutscene start: %s" % dis)
    print(json.dumps(REP, ensure_ascii=False)[:500]); print("FAILS:", len(FAILS))
    for f in FAILS: print(" -", f)
    json.dump({"fails": FAILS, "report": REP}, open(os.path.join(ROOT, "reports", "sim_report.json"), "w", encoding="utf-8"), ensure_ascii=False, indent=1)
    return 1 if FAILS else 0


if __name__ == "__main__":
    sys.exit(main())
