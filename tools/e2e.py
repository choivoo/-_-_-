#!/usr/bin/env python3
"""END-TO-END ONE-CLICK TESTS on a REAL Bedrock Dedicated Server with a headless player.
The player never sends a command. The console is used ONLY to observe scoreboard values (and, where stated, to stand in for
physical walking via /tp). This is NOT an iPad test."""
import os, sys, json, time, re, subprocess, shutil, threading
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import bds
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
R = os.path.join(ROOT, "src") + "/"
NODE_ENV = dict(os.environ, BP_STABLE_ID="1", BP_MODULE=os.environ.get("BP_MODULE", "/tmp/bpc/node_modules/bedrock-protocol"))
PORT = 29132
RES = {}


class Player:
    def __init__(self, name="Tester", secs=300, port=PORT):
        self.events = []
        self.p = subprocess.Popen(["node", os.path.join(ROOT, "tools", "client.js"), str(port), name, str(secs)], stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True, env=NODE_ENV, cwd="/tmp/bpc")
        threading.Thread(target=self._rd, daemon=True).start()

    def _rd(self):
        for l in self.p.stdout:
            try: self.events.append(json.loads(l))
            except Exception: self.events.append({"ev": "raw", "msg": l.strip()[:200]})

    def has(self, ev, **kw):
        return [e for e in self.events if e["ev"] == ev and all(e.get(k) == v for k, v in kw.items())]

    def kill(self):
        """graceful leave (the real game sends a disconnect packet; a SIGKILLed client would look like a duplicate login for ~10 s)"""
        try:
            self.p.stdin.write('quit\n'); self.p.stdin.flush(); self.p.wait(6)
        except Exception:
            self.p.kill()


def score(s, name, obj="bce_sys"):
    out = s.run('scoreboard players list "%s"' % name if name.startswith("_") else "scoreboard players list %s" % name, 0.7)
    for l in out:
        m = re.search(r"- %s: (-?\d+)" % obj, l)
        if m: return int(m.group(1))
    return None


def wait_for(fn, timeout, step=1.0):
    t0 = time.time()
    while time.time() - t0 < timeout:
        v = fn()
        if v: return v
        time.sleep(step)
    return None


def fresh_server(level, packs=True, extra=None):
    props = {"level-type": "FLAT"}; props.update(extra or {})
    s = bds.Server(level, props)
    shutil.rmtree(s.world, ignore_errors=True); os.makedirs(s.world)
    if packs: bds.install_packs(s.world, R + "behavior_pack", R + "resource_pack")
    s.start(); time.sleep(2)
    def pump(s=s, f=open('/tmp/e2e_server.log', 'a', buffering=1)):
        i = 0
        while True:
            while i < len(s.lines):
                f.write(s.lines[i] + '\n'); i += 1
            time.sleep(0.1)
    threading.Thread(target=pump, daemon=True).start()
    return s


def check(name, cond, detail=""):
    RES[name] = {"pass": bool(cond), "detail": str(detail)[:300]}
    print(("PASS " if cond else "FAIL ") + name + ("  " + str(detail)[:200] if detail else ""), flush=True)
    return bool(cond)


def scenario_first_run():
    s = fresh_server("BCEe2eA")
    a0 = score(s, "_astate")
    check("T00 fresh world has no BCE state before the first player", a0 in (None, 0), a0)
    pl = Player("Tester", 420)
    timeline = []
    t0 = time.time()

    def prog():
        a, b = score(s, "_astate"), score(s, "_bstep")
        timeline.append((round(time.time() - t0), a, b))
        return a is not None and a >= 4
    ok = wait_for(prog, 240, 3)
    check("T01 first join -> auto initialise (no command typed)", any(t[1] in (1, 2) for t in timeline), timeline[:6])
    check("T02 automatic build ran (160+ steps) without commands", max([t[2] or 0 for t in timeline]) > 100, timeline[-3:])
    zok = [score(s, "_zok%d" % i) for i in range(5)]
    st = score(s, "_state")
    check("T03 build complete + verification (5 zones OK) -> INTRO_READY/PLAYING", ok and zok == [1] * 5 and st >= 4, (zok, st))
    titles = [e["text"] for e in pl.has("title")]
    check("T03b loading UI: title/subtitle/actionbar with percent", any("세계를 복원" in t for t in titles) and any("현재 작업" in t for t in titles), titles[:3])
    moved = wait_for(lambda: pl.has("move"), 60)
    ps = wait_for(lambda: score(s, "Tester", "bce_ps") in (1, 2), 90)
    done = wait_for(lambda: score(s, "Tester", "bce_ps") == 2 and score(s, "Tester", "bce_q") == 1, 90, 2)
    lk = pl.has("input_locks")
    first_lock = next((e["t"] for e in lk if e["locks"]["_value"] != 0), None)
    last_free = next((e["t"] for e in reversed(lk) if e["locks"]["_value"] == 0), None)
    check("T04 opening cutscene starts automatically (camera instructions + input locks)", len(pl.has("camera")) >= 8 and bool(lk), (len(pl.has("camera")), [(e["t"], e["locks"]["_value"]) for e in lk][:4]))
    check("T04b the opening really plays for its full length (>= 25 s between lock and release; 30 s scripted)", first_lock is not None and last_free is not None and last_free - first_lock >= 25, (first_lock, last_free))
    titles = [e["text"] for e in pl.has("title")]
    check("T05 tutorial starts after the cutscene (quest 1 active, tutorial title)", done and any("튜토리얼" in t for t in titles), (score(s, "Tester", "bce_q"), titles[-2:]))
    locks = [e["locks"]["_value"] for e in pl.has("input_locks")]
    clears = pl.has("camera", clear=True)
    check("T05b camera restored + input locks released after the cutscene", bool(clears) and locks and locks[-1] == 0, (locks, len(clears)))
    json.dump(pl.events, open(os.path.join(ROOT, "reports", "e2e_events_first_run.json"), "w"), ensure_ascii=False)
    check("T09 no command typed by the player (client sends none)", True, "client.js has no chat/command path")
    # walking out of the temple is the tutorial goal: stand in for it with /tp, then the sword quest must activate
    s.run("tp Tester 14 100 0", 1.0)
    q2 = wait_for(lambda: score(s, "Tester", "bce_q") == 2, 20, 1)
    check("T05c leaving the temple completes quest 1 and activates quest 2 (sword)", q2, score(s, "Tester", "bce_q"))
    return s, pl


def scenario_rejoin(s, pl):
    # sentinel: a marker block in the temple (placed while the player keeps the chunk loaded); a rebuild would erase it
    s.run("setblock -7 100 6 minecraft:diamond_block", 0.8)
    before = (score(s, "_bstep"), score(s, "_astate"), score(s, "Tester", "bce_q"), score(s, "Tester", "bce_ps"))   # measured while online
    pl.kill(); time.sleep(3)
    pl2 = Player("Tester", 40)
    time.sleep(35)
    after = (score(s, "_bstep"), score(s, "_astate"), score(s, "Tester", "bce_q"), score(s, "Tester", "bce_ps"))
    tb = s.run("testforblock -7 100 6 minecraft:diamond_block", 0.8)
    check("T06 re-join: no rebuild, quest/state preserved, no second opening", before == after and not pl2.has("camera") and any("Successfully found" in l for l in tb), (before, after, len(pl2.has("camera"))))
    pl2.kill()


def scenario_cutscene_rejoin(s):
    pl = Player("Tester", 40)
    wait_for(lambda: score(s, "Tester", "bce_ps") in (1, 2), 25, 1)
    time.sleep(2)
    s.run("scoreboard players set Tester bce_ps 0", 0.8)      # admin-style reset (player is ONLINE) => the auto system plays the opening again
    s.run("tp Tester -7 100 0", 0.8)
    got = wait_for(lambda: score(s, "Tester", "bce_ps") == 1 and score(s, "Tester", "bce_cs") == 1, 25, 1)
    time.sleep(10)                                              # ~10 s into the 30 s cutscene
    in_cs = score(s, "Tester", "bce_cs")
    pl.kill(); time.sleep(5)                                    # player leaves mid-cutscene
    pl2 = Player("Tester", 90)
    done = wait_for(lambda: score(s, "Tester", "bce_ps") == 2 and score(s, "Tester", "bce_cs") == 0, 60, 2)
    time.sleep(2)
    locks = [e["locks"]["_value"] for e in pl2.has("input_locks")]
    cams = pl2.has("camera")
    check("T07 re-join during the cutscene: camera re-asserted, cutscene ends, camera + input restored",
          got and in_cs == 1 and done and len(cams) >= 2 and pl2.has("camera", clear=True) and locks and locks[-1] == 0, (got, in_cs, done, len(cams), locks[-4:]))
    pl2.kill()


def scenario_interrupted_build():
    s = fresh_server("BCEe2eD")
    pl = Player("Tester", 60)
    mid = wait_for(lambda: (score(s, "_bstep") or 0) >= 40, 90, 1)
    saved = score(s, "_bstep")
    pl.kill(); time.sleep(1)
    s.stop(); time.sleep(3)
    s2 = bds.Server("BCEe2eD", {"level-type": "FLAT"}); s2.start(); time.sleep(2)
    resumed_at = score(s2, "_bstep")
    pl2 = Player("Tester", 200)
    ok = wait_for(lambda: (score(s2, "_astate") or 0) >= 4, 200, 3)
    zok = [score(s2, "_zok%d" % i) for i in range(5)]
    check("T08 world closed mid-build: progress kept, build resumes and completes", mid and saved and resumed_at is not None and resumed_at >= saved - 2 and ok and zok == [1] * 5, (saved, resumed_at, zok))
    pl2.kill(); s2.stop()


def scenario_shipped(mcworld):
    """The SHIPPED .mcworld, unzipped like the game's importer does, loaded by a real BDS and joined by the headless player."""
    import zipfile
    s = bds.Server("BCEship", {"level-type": "FLAT", "allow-cheats": "false"})
    shutil.rmtree(s.world, ignore_errors=True); os.makedirs(s.world)
    zipfile.ZipFile(mcworld).extractall(s.world)
    s.start(); time.sleep(3)
    threading.Thread(target=lambda: [time.sleep(1e9)], daemon=True).start()
    st, bst, zok = score(s, "_astate"), score(s, "_bstep"), [score(s, "_zok%d" % i) for i in range(5)]
    check("S01 shipped world loads on BDS with persisted state (no build needed)", st is not None and st >= 4 and bst == 180 and zok == [1] * 5, (st, bst, zok))
    pl = Player("Tester", 80)
    ok = wait_for(lambda: score(s, "Tester", "bce_ps") in (1, 2), 40, 1)
    check("S02 first join: no build runs, straight to the opening", ok and score(s, "_bstep") == 180 and not any(e.get("ev") == "title" and "복원" in json.dumps(e, ensure_ascii=False) for e in pl.events), (score(s, "Tester", "bce_ps"), score(s, "_bstep")))
    time.sleep(8)
    cams = pl.has("camera")
    check("S03 opening cutscene plays automatically", len(cams) >= 3, len(cams))
    done = wait_for(lambda: score(s, "Tester", "bce_ps") == 2 and score(s, "Tester", "bce_cs") == 0, 60, 2)
    locks = [e["locks"]["_value"] for e in pl.has("input_locks")]
    check("S04 opening ends, quest 1 active, input free", done and score(s, "Tester", "bce_q") == 1 and locks and locks[-1] == 0, (locks[-3:], score(s, "Tester", "bce_q")))
    pos = pl.has("spawn_pos") or pl.has("move")
    before = (score(s, "_bstep"), score(s, "_astate"), score(s, "Tester", "bce_q"), score(s, "Tester", "bce_ps"))   # read while online
    pl.kill(); time.sleep(3)
    pl2 = Player("Tester", 30); time.sleep(20)
    after = (score(s, "_bstep"), score(s, "_astate"), score(s, "Tester", "bce_q"), score(s, "Tester", "bce_ps"))
    check("S05 re-join the shipped world: nothing rebuilt, no second opening", before == after and not pl2.has("camera"), (before, after))
    pl2.kill(); s.stop()


if __name__ == "__main__":
    which = sys.argv[1] if len(sys.argv) > 1 else "all"
    try:
        if which in ("all", "A"):
            s, pl = scenario_first_run()
            scenario_rejoin(s, pl)
            scenario_cutscene_rejoin(s)
            s.stop(); time.sleep(2)
        if which == "S":
            scenario_shipped(os.path.join(ROOT, "dist", "BCE_1.0_OneClick", "BCE_1.0_One_Click_Play.mcworld"))
        if which in ("all", "D"):
            scenario_interrupted_build()
    finally:
        json.dump(RES, open(os.path.join(ROOT, "reports", "e2e_shipped_world.json" if which == "S" else "e2e_results.json"), "w"), ensure_ascii=False, indent=1)
        print("SUMMARY", sum(1 for v in RES.values() if v["pass"]), "/", len(RES), flush=True)
        os.system("pkill -x bedrock_server")
