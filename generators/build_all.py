#!/usr/bin/env python3
"""Master generator: world model -> build sequencer 2.0, structures (TYPE B), construction lists (TYPE A), gameplay functions."""
import os, sys, json, shutil, random, re
HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE); sys.path.insert(0, os.path.join(HERE, "building_generator"))
from common import *
import layout as L
import qa, structure
from building_generator.builder import STAGES, base
from building_generator import voxel
from command_generator import engine, auto
from cutscene_generator import gen as cgen

CHUNK = 36
Y = L.Y0
STAGE_CODE = {s: i for i, s in enumerate(STAGES)}
STAGE_NAMES = ["지형·기초", "구조물 외형", "실내 공간", "세부 장식", "조명", "기능 블록", "엔티티 배치", "검증"]
SOLID_OK = {"stone_bricks", "polished_andesite", "polished_blackstone_bricks", "deepslate_bricks", "mossy_stone_bricks", "cobblestone", "polished_blackstone", "spruce_planks", "gravel", "coarse_dirt", "blackstone", "deepslate_tiles", "polished_diorite"}
WAIT_LIMIT = 2400            # ticks (2 min) of waiting for a chunk before FAILED


OBS = 5      # zone id of the sky observatory (built FIRST, players wait there)


def area(zi):
    """tick-area rectangle (x1,x2,z1,z2) and marker height for a zone id."""
    if zi == OBS:
        ox, oy, oz = L.OBS
        return (ox - 34, ox + 34, oz - 34, oz + 34, oy - 40)
    cx = L.CX[zi]
    return (cx - 40, cx + 60, -40, 40, 79)


def marker_pts(zi):
    """One marker block (under the platform) in EVERY chunk of the tick-area. ALL must exist = every chunk really loaded.
    (Found by the real-server E2E test: 5 markers were not enough - interior chunks can load later than the corner ones.)"""
    x1, x2, z1, z2, my = area(zi)
    pts = []
    for cxk in range(x1 // 16, x2 // 16 + 1):
        for czk in range((z1 - 4) // 16, (z2 + 4) // 16 + 1):
            pts.append((cxk * 16 + 8, my, czk * 16 + 8))
    return pts


def ready_lines(zi):
    pts = marker_pts(zi)
    return ["function build/ready_z%d" % zi]


def ready_function(zi):
    pts = marker_pts(zi)
    return (["scoreboard players set _bcnt bce_sys 0"] + ["execute if block %d %d %d stone run scoreboard players add _bcnt bce_sys 1" % p for p in pts] +
            ["scoreboard players set _bready bce_sys 0", "execute if score _bcnt bce_sys matches %d run scoreboard players set _bready bce_sys 1" % len(pts)])


def pick_samples(w, zi, rng, n=6):
    cx = L.CX[zi]
    ban = [L.GATE_RUINS, L.HIDDEN_DOOR, L.WALL_GATE_FILL, L.CIT_DOOR, (13, 99, -3, 16, 107, 3), (L.CX[4] + 1, 98, -18, L.CX[4] + 38, 100, 18), (L.BRIDGE_X0 - 1, 80, -2, L.BRIDGE_X0 + 9, 90, 2)]
    out, tries = [], 0
    while len(out) < n and tries < 4000:
        tries += 1
        x = rng.randint(cx - 38, cx + 37); z = rng.randint(-38, 37); y = rng.choice([Y - 1, Y - 1, Y, Y + 3, Y + 8])
        nm = w.name(x, y, z)
        if nm not in SOLID_OK or any(b[0] <= x <= b[3] and b[1] <= y <= b[4] and b[2] <= z <= b[5] for b in ban):
            continue
        out.append((x, y, z, nm))
    return out


def fill_volume(cmd):
    p = cmd.split()
    if p[0] == "setblock": return 1
    if p[0] == "fill":
        v = 1
        for i in range(3): v *= abs(int(p[4 + i]) - int(p[1 + i])) + 1
        return v
    return 0


def export_structures(w, bs):
    """Tile the replica world into <=40x40x64 modules and write real .mcstructure files."""
    outdir = os.path.join(BP, "structures", "bce")
    shutil.rmtree(os.path.join(BP, "structures"), ignore_errors=True)
    os.makedirs(outdir, exist_ok=True)
    tiles = []
    for zi, cx in enumerate(L.CX):
        boxes = []
        for qx in (0, 1):
            for qz in (0, 1):
                boxes.append(("q%d%d" % (qx, qz), cx - 40 + qx * 40, cx - 1 + qx * 40, -40 + qz * 40, -1 + qz * 40))
        if zi < 4:
            boxes.append(("link", cx + 40, cx + 59, -4, 4))
        for tag, x1, x2, z1, z2 in boxes:
            for li, (ya, yb) in enumerate([(80, 143), (144, 207)]):
                # crop to the non-air bounding box
                xs, ys, zs = [], [], []
                lo = [10 ** 9] * 3; hi = [-10 ** 9] * 3
                for x in range(x1, x2 + 1):
                    for y in range(ya, min(yb, voxel.Y1) + 1):
                        i = w._i(x, y, z1)
                        row = w.a[i:i + (z2 - z1 + 1)]
                        if any(row):
                            lo[0] = min(lo[0], x); hi[0] = max(hi[0], x); lo[1] = min(lo[1], y); hi[1] = max(hi[1], y)
                            nz = [k for k, v in enumerate(row) if v]
                            lo[2] = min(lo[2], z1 + nz[0]); hi[2] = max(hi[2], z1 + nz[-1])
                if lo[0] > hi[0]:
                    continue
                size = (hi[0] - lo[0] + 1, hi[1] - lo[1] + 1, hi[2] - lo[2] + 1)
                blocks = []
                for x in range(lo[0], hi[0] + 1):
                    for y in range(lo[1], hi[1] + 1):
                        i = w._i(x, y, lo[2])
                        blocks.extend(w.pal[v] for v in w.a[i:i + size[2]])
                name = "z%d_%s_%d" % (zi, tag, li)
                nbytes, npal = structure.write(os.path.join(outdir, name + ".mcstructure"), size, tuple(lo), [b if base(b) != "air" else "air" for b in blocks])
                tiles.append(dict(name="bce:" + name, file=name + ".mcstructure", zone=zi, origin=lo, size=list(size), bytes=nbytes, palette=npal))
    return tiles


def main():
    w, bs = qa.make_world()
    res, _, _ = qa.run()
    os.makedirs(os.path.join(ROOT, "reports"), exist_ok=True)
    write_json(os.path.join(ROOT, "reports", "world_qa.json"), res)

    # ------------------------------------------------------------------ steps (command mode)
    import observatory
    ob = observatory.build()
    w.apply(ob)
    ZN = L.ZNAME + ["별의 관측소"]
    ox, oy, oz = L.OBS
    # objects every zone MUST contain before the world counts as PLAY_READY (taken from the replica and asserted against it)
    hx = L.CX[4] - 11
    REQ = {
        0: [(-12, 102, 0, "gilded_blackstone"), (22, 101, -10, "smithing_table"), (-8, 100, 0, "air"), (-8, 101, 0, "air"), (-8, 99, 0, None), (0, 99, 0, "gilded_blackstone")],
        1: [(100, 101, 0, "chiseled_stone_bricks"), (100, 105, 0, "sea_lantern"), (110, 100, 27, "chest")],
        2: [(L.LEVERS[0][0], L.LEVERS[0][1], L.LEVERS[0][2], "lever"), (L.LEVERS[2][0], L.LEVERS[2][1], L.LEVERS[2][2], "lever"), (L.GATE_RUINS[0], 88, 0, "iron_bars")],
        3: [(L.WALL_GATE_FILL[0], 101, 0, "iron_bars"), (L.CX[3] + 1, 105, 20, "stone_bricks")],
        4: [(hx, Y + 89, 0, "amethyst_block"), (int(L.ARENA_C[0]), 99, 0, "crying_obsidian"), (L.CIT_DOOR[0], 101, 0, "obsidian"), (int(L.ARENA_C[0]), 100, 0, "air")],
        OBS: [(ox, oy, oz, "gold_block"), (ox, oy + 1, oz, "sea_lantern")],
    }
    for zk in REQ:       # drop placeholders and verify against the replica
        REQ[zk] = [(x, y, z, bl if bl else w.name(x, y, z)) for (x, y, z, bl) in REQ[zk] if not (bl is None and w.name(x, y, z) == "air")]
        for (x, y, z, bl) in REQ[zk]:
            assert w.name(x, y, z) == bl, ("replica mismatch", zk, (x, y, z), bl, w.name(x, y, z))
    steps = []           # dicts: doc, lines, kind, zone, stage
    zone_range = []
    rng = random.Random(7)
    samples = {zi: pick_samples(w, zi, rng) for zi in range(5)}
    samples[OBS] = []

    def add_zone(zi, b, tag=""):
        start = len(steps)
        steps.append(dict(doc="%szone %d probe" % (tag, zi), lines=[], kind="probe", zone=zi, stage=0))
        for st in STAGES:
            ls = b.cmds[st]
            for k in range(0, len(ls), CHUNK):
                steps.append(dict(doc="%szone %d %s %d" % (tag, zi, st, k // CHUNK), lines=ls[k:k + CHUNK], kind="plain", zone=zi, stage=STAGE_CODE[st]))
        steps.append(dict(doc="%szone %d verify" % (tag, zi), lines=[], kind="verify", zone=zi, stage=7))
        steps.append(dict(doc="%szone %d release" % (tag, zi), lines=[], kind="release", zone=zi, stage=7))
        return start

    obs_start = add_zone(OBS, ob, "observatory ")
    spx, spy, spz = observatory.spawn_point()
    steps.append(dict(doc="observatory arrival", kind="plain", zone=OBS, stage=7, lines=[
        "tp @a[tag=!bce_cs] %s %s %s facing %d %d %d" % (spx, spy, spz, ox, oy + 2, oz),
        "setworldspawn %d %d %d" % (spx, spy, spz), "spawnpoint @a %d %d %d" % (spx, spy, spz),
        "effect @a resistance 1000000 255 true", "effect @a saturation 1000000 10 true",
        "playsound random.levelup @a %s %s %s 0.6 0.7" % (spx, spy, spz)]))
    obs_end = len(steps)
    for zi, b in enumerate(bs):
        zone_range.append((add_zone(zi, b), None))
    zone_range = [(a, (zone_range[i + 1][0] if i + 1 < len(zone_range) else len(steps))) for i, (a, _) in enumerate(zone_range)]
    n_cmd = len(steps)

    # ------------------------------------------------------------------ steps (structure mode, TYPE B)
    tiles = export_structures(w, bs)
    tb_range = []
    for zi, b in enumerate(bs):
        start = len(steps)
        steps.append(dict(doc="tb zone %d probe" % zi, lines=[], kind="probe", zone=zi, stage=0))
        zt = [t for t in tiles if t["zone"] == zi]
        for k in range(0, len(zt), 4):
            steps.append(dict(doc="tb zone %d load %d" % (zi, k // 4), lines=["structure load %s %d %d %d" % (t["name"], t["origin"][0], t["origin"][1], t["origin"][2]) for t in zt[k:k + 4]], kind="plain", zone=zi, stage=1))
        extra = [c for st in ("func", "entity") for c in b.cmds[st]]
        for k in range(0, len(extra), CHUNK):
            steps.append(dict(doc="tb zone %d func %d" % (zi, k // CHUNK), lines=extra[k:k + CHUNK], kind="plain", zone=zi, stage=5))
        steps.append(dict(doc="tb zone %d verify" % zi, lines=[], kind="verify", zone=zi, stage=7))
        steps.append(dict(doc="tb zone %d release" % zi, lines=[], kind="release", zone=zi, stage=7))
        tb_range.append((start, len(steps)))
    total = len(steps)
    info = {"total": n_cmd, "zones": zone_range, "tb": (n_cmd, total), "tb_zones": tb_range, "obs": (obs_start, obs_end)}

    F = FnSet()
    for zk in list(range(5)) + [OBS]:
        F.emit("build/ready_z%d" % zk, ready_function(zk), doc="chunk readiness of zone %d: one marker per chunk, all must exist" % zk)
    for i, st in enumerate(steps):
        zi = st["zone"]
        ax1, ax2, az1, az2, amy = area(zi)
        g = "execute if score _bready bce_sys matches 1 run "
        head = ["scoreboard players set _bzone bce_sys %d" % zi] + ready_lines(zi)
        wait = [("execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2"),
                ("execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1"),
                "execute if score _bwait bce_sys matches %d.. run scoreboard players set _berr bce_sys 1" % WAIT_LIMIT,
                "execute if score _bwait bce_sys matches %d.. run scoreboard players set _bsm bce_sys 7" % WAIT_LIMIT]
        if st["kind"] == "probe":
            body = head + ["scoreboard players set _bstage bce_sys 0", "scoreboard players set _bzstart bce_sys %d" % i,
                           "scoreboard players set _bsm bce_sys 2",
                           "tickingarea add %d 100 %d %d 100 %d bce_z%d true" % (ax1, az1 - 4, ax2, az2 + 4, zi)] + ["setblock %d %d %d stone" % p for p in marker_pts(zi)] + ready_lines(zi) + [
                           g + "scoreboard players set _bsm bce_sys 3", g + "scoreboard players set _bwait bce_sys 0",
                           g + "scoreboard players add _bstep bce_sys 1"]
            body += wait[1:]
        elif st["kind"] == "verify":
            smp = samples[zi]
            body = head + wait + [g + "scoreboard players set _bsm bce_sys 4", g + "scoreboard players set _bstage bce_sys 7", g + "scoreboard players set _berr bce_sys 0"]
            for k, (x, y, z, nm) in enumerate(smp):
                body.append(g + "execute unless block %d %d %d %s run scoreboard players set _berr bce_sys %d" % (x, y, z, nm, 10 * (zi + 1) + k))
            for k, (x, y, z, nm) in enumerate(REQ.get(zi, [])):     # required quest/landmark objects
                body.append(g + "execute unless block %d %d %d %s run scoreboard players set _berr bce_sys %d" % (x, y, z, nm, 100 + 10 * zi + k))
            body += [g + "execute if score _berr bce_sys matches 1.. run scoreboard players set _bsm bce_sys 7",
                     g + "execute if score _berr bce_sys matches 0 run scoreboard players set _zok%d bce_sys 1" % zi,
                     g + "execute if score _berr bce_sys matches 0 run scoreboard players add _bstep bce_sys 1"]
        elif st["kind"] == "release":
            body = head + wait + [g + "tickingarea remove bce_z%d" % zi, g + "scoreboard players set _bsm bce_sys 3", g + "scoreboard players add _bstep bce_sys 1"]
        elif "arrival" in st["doc"]:
            body = st["lines"] + ["scoreboard players add _bstep bce_sys 1"]
        else:
            body = head + wait + [g + "scoreboard players set _bsm bce_sys 3", g + "scoreboard players set _bstage bce_sys %d" % st["stage"]]
            body += [g + c for c in st["lines"]]
            body += [g + "scoreboard players add _bstep bce_sys 1"]
        F.emit("build/steps/s%03d" % i, body, doc=st["doc"])
    nb = (total + 9) // 10
    for k in range(nb):
        F.emit("build/d%02d" % k, ["execute if score _bcur bce_sys matches %d run function build/steps/s%03d" % (i, i) for i in range(k * 10, min(total, k * 10 + 10))])
    F.emit("build/dispatch", ["scoreboard players operation _bcur bce_sys = _bstep bce_sys"] + ["execute if score _bcur bce_sys matches %d..%d run function build/d%02d" % (k * 10, k * 10 + 9, k) for k in range(nb)],
           doc="2-level dispatch on a SNAPSHOT (_bcur) so exactly one step runs per tick")
    F.emit("build/step", [
        "scoreboard players operation _m10b bce_sys = _tick bce_sys", "scoreboard players operation _m10b bce_sys %= _c10 bce_sys",
        "execute if score _m10b bce_sys matches 0 run function build/progress_ui",
        "execute unless score _bsm bce_sys matches 5..7 if score _bstep bce_sys = _bstop bce_sys run function build/finish",
        "execute unless score _bsm bce_sys matches 5..7 unless score _bstep bce_sys = _bstop bce_sys run function build/dispatch",
        "execute if score _bsm bce_sys matches 7 run function build/fail_ui"],
        doc="BUILD SEQUENCER 2.0 states _bsm: 0 READY 1 PREPARING 2 WAITING_FOR_CHUNK 3 BUILDING 4 VERIFYING 5 COMPLETED 6 PAUSED 7 FAILED 8 RECOVERING")
    ui = ["scoreboard players operation _bpctb bce_sys = _bstep bce_sys", "scoreboard players operation _bpctb bce_sys -= _bstart bce_sys",
          "scoreboard players operation _bpctb bce_sys *= _c100 bce_sys", "scoreboard players operation _bden bce_sys = _bstop bce_sys",
          "scoreboard players operation _bden bce_sys -= _bstart bce_sys", "execute if score _bden bce_sys matches 1.. run scoreboard players operation _bpctb bce_sys /= _bden bce_sys",
          "execute if score _bshow bce_sys matches 1 run titleraw @a times 0 25 0",
          "execute if score _bshow bce_sys matches 1 run titleraw @a subtitle " + jraw("§f세계를 복원하고 있습니다… ", ("_bpctb", "bce_sys"), "%"),
          "execute if score _bshow bce_sys matches 1 run titleraw @a title " + jraw("§e검은별의 성채")]
    norm = "unless score _bsm bce_sys matches 2 unless score _bsm bce_sys matches 5..7"
    for z in range(6):
        for sc, nm in enumerate(STAGE_NAMES):
            ui.append("execute %s if score _bzone bce_sys matches %d if score _bstage bce_sys matches %d run titleraw @a actionbar %s" % (
                norm, z, sc, jraw("§7현재 작업: %s · %s" % (ZN[z], nm))))
    ui.append("execute if score _bsm bce_sys matches 2 run titleraw @a actionbar " + jraw("§6청크 로딩 대기 중… 잠시만 기다려 주세요"))
    ui.append("execute if score _bsm bce_sys matches 6 run titleraw @a actionbar " + jraw("§7건축 일시정지 (관리자)"))
    F.emit("build/progress_ui", ui, doc="title/subtitle/actionbar progress every 10 ticks (no chat spam); _bshow=1 shows the big title")
    F.emit("build/fail_ui", ["execute if score _bsm bce_sys matches 7 if score _m10b bce_sys matches 0 run titleraw @a actionbar %s" % jraw("§c복원 지연 — 자동 복구를 시도합니다 (코드 ", ("_berr", "bce_sys"), ")")])
    F.emit("build/start", [
        "scoreboard players set _bstart bce_sys 0", "scoreboard players set _bstep bce_sys 0", "scoreboard players set _bstop bce_sys %d" % n_cmd,
        "scoreboard players set _bsm bce_sys 1", "scoreboard players set _berr bce_sys 0", "scoreboard players set _bwait bce_sys 0", "scoreboard players set _bshow bce_sys 1",
        "scoreboard players set _bmode bce_sys 0", "scoreboard players set _state bce_sys 3"], doc="PREPARING / WORLD_BUILDING (command mode = TYPE A); observatory first")
    F.emit("build/start_structures", [
        "scoreboard players set _bstart bce_sys %d" % n_cmd, "scoreboard players set _bstep bce_sys %d" % n_cmd, "scoreboard players set _bstop bce_sys %d" % total,
        "scoreboard players set _bsm bce_sys 1", "scoreboard players set _berr bce_sys 0", "scoreboard players set _bwait bce_sys 0", "scoreboard players set _bshow bce_sys 1",
        "scoreboard players set _bmode bce_sys 1", "scoreboard players set _state bce_sys 3"], doc="TYPE B: structure load tiles (needs the .mcstructure files of this pack)")
    F.emit("build/finish", [
        "setworldspawn %d %d %d" % (L.START[0], L.START[1], L.START[2]), "scoreboard players set _built bce_sys 1", "scoreboard players set _bsm bce_sys 5",
        "execute if score _started bce_sys matches 0 run scoreboard players set _state bce_sys 4",
        "execute if score _started bce_sys matches 1.. run scoreboard players set _state bce_sys 7",
        "tickingarea remove_all", "scoreboard players set _bshow bce_sys 0", "title @a clear", "tellraw @a %s" % jraw("§a[BCE] 세계 복원 완료!")], doc="COMPLETED")
    st_lines = ["tellraw @s " + jraw("§e[건축] 단계 ", ("_bstep", "bce_sys"), "/", ("_bstop", "bce_sys"), " 구역 ", ("_bzone", "bce_sys"), " 오류코드 ", ("_berr", "bce_sys"))]
    for i, nm in enumerate(["READY", "PREPARING", "WAITING_FOR_CHUNK", "BUILDING", "VERIFYING", "COMPLETED", "PAUSED", "FAILED", "RECOVERING"]):
        st_lines.append("execute if score _bsm bce_sys matches %d run tellraw @s %s" % (i, jraw("§e[건축] 상태: " + nm)))
    F.emit("build/status", st_lines)
    F.emit("build/pause", ["scoreboard players set _bsm bce_sys 6"], doc="PAUSED (progress is kept in scores)")
    F.emit("build/resume", ["execute if score _bsm bce_sys matches 6 run scoreboard players set _bsm bce_sys 1"])
    F.emit("build/recover", ["scoreboard players set _bsm bce_sys 8", "scoreboard players set _berr bce_sys 0", "scoreboard players set _bwait bce_sys 0",
                             "scoreboard players operation _bstep bce_sys = _bzstart bce_sys", "scoreboard players set _bsm bce_sys 1", "scoreboard players set _state bce_sys 3",
                             "tellraw @a %s" % jraw("§e[BCE] 복원 복구: 실패한 구역을 처음부터 다시 건축합니다.")],
           doc="RECOVERING: restart at the beginning of the failed zone (completed zones are not repeated)")

    engine.build_engine(F, info)
    auto.build_auto(F, info)
    scenes = cgen.load_scenes(os.path.join(DATA, "scenes"))
    cgen.generate_all(scenes, F)
    # admin separation: every admin/* line is guarded by the bce_admin tag
    for path, lines in list(F.files.items()):
        if path.startswith("admin/") and path != "admin/grant":
            F.files[path] = [l if l.startswith("#") else "execute if entity @s[tag=bce_admin] run " + l for l in lines]
    if os.path.isdir(FUNCS):
        shutil.rmtree(FUNCS)
    F.write()
    write_json(os.path.join(FUNCS, "tick.json"), {"values": ["auto/tick"]})

    # ------------------------------------------------------------------ registry, stats, TYPE A construction lists
    reg = [dict(zone=zi, **r) for zi, b in enumerate(bs) for r in b.registry]
    write_json(os.path.join(DATA, "buildings", "registry.json"), {"buildings": reg, "structure_tiles": tiles})
    cdir = os.path.join(SRC, "pure_commands", "construction")
    shutil.rmtree(cdir, ignore_errors=True)
    os.makedirs(cdir)
    idx = ["# TYPE A — 순수 커맨드 건축 (fill/setblock/…)", "", "각 파일은 한 번에 실행해도 안전한 단계(≤%d줄)입니다. 같은 파일을 다시 실행해도 같은 결과가 되는(멱등) fill/setblock 입니다." % 400,
           "엔티티 소환(`summon`)이 포함된 entity 단계만 반복 실행 전에 `kill @e[tag=bce_npc]` 가 필요합니다. **순서대로** 실행하세요. 모든 좌표는 절대 좌표입니다.", "",
           "| 구역 | 중심 | 플랫폼 범위(x1,z1,x2,z2) | 단계 파일 | 명령 수 | 예상 블록 수 |", "|---|---|---|---|---|---|"]
    total_cmds = total_blocks = 0
    for zi, b in enumerate(bs):
        cx = L.CX[zi]
        for si, st in enumerate(STAGES):
            ls = b.cmds[st]
            if not ls: continue
            nblk = sum(fill_volume(c) for c in ls)
            for k in range(0, len(ls), 400):
                part = ls[k:k + 400]
                fn = "z%d_%02d_%s_%d.txt" % (zi, si, st, k // 400)
                head = ["# 구역 %d %s — 단계 %s (%d/%d). 중심 x=%d z=0, 사전 조건: 해당 구역 청크 로드(/tickingarea add circle %d 100 0 4 bce_z%d)" % (zi, L.ZNAME[zi], st, k // 400 + 1, (len(ls) + 399) // 400, cx, cx, zi),
                        "# 재건축: 구역 0번 단계부터 다시 실행. 초기화(지우기): /fill %d 100 -40 %d 140 39 air (여러 번에 나눠서)" % (cx - 40, cx + 39), ""]
                open(os.path.join(cdir, fn), "w", encoding="utf-8").write("\n".join(head + part) + "\n")
                idx.append("| %d %s | %d,0 | %d,%d,%d,%d | %s | %d | %d |" % (zi, L.ZNAME[zi], cx, cx - 40, -40, cx + 39, 39, fn, len(part), sum(fill_volume(c) for c in part)))
            total_cmds += len(ls); total_blocks += nblk
    idx += ["", "합계: 명령 %d줄, 블록 약 %d (겹쳐 쓰는 블록 포함 상한)." % (total_cmds, total_blocks), "",
            "## TYPE B (구조물)", "행동 팩의 `structures/bce/*.mcstructure` 를 사용합니다. 순수 명령어만으로 설치되지 않습니다(파일 가져오기 필요). 목록: `src/data/buildings/registry.json`."]
    open(os.path.join(cdir, "INDEX.md"), "w", encoding="utf-8").write("\n".join(idx) + "\n")

    stats = {"steps_command_mode": n_cmd, "steps_total": total, "build_commands": total_cmds, "approx_blocks": total_blocks,
             "buildings_registered": len(reg), "by_zone": {zi: sum(1 for r in reg if r["zone"] == zi) for zi in range(5)},
             "landmarks": [r["landmark"] for r in reg if r.get("landmark")], "structure_files": len(tiles),
             "structure_bytes": sum(t["bytes"] for t in tiles), "qa_fail": len(res["fail"]), "qa_ok": len(res["ok"]), "lod_counts": res["stats"]["by_lod"]}
    write_json(os.path.join(ROOT, "reports", "build_stats.json"), stats)
    write_json(os.path.join(ROOT, "reports", "build_plan.json"), {"total_steps": n_cmd, "all_steps": total, "zone_step_ranges": zone_range, "tb_zone_step_ranges": tb_range,
                                                                   "commands_per_zone": [sum(len(v) for v in b.cmds.values()) for b in bs]})
    write_json(os.path.join(ROOT, "reports", "spawn_safety.json"), {"fail": [m for m in res["fail"] if m.startswith("spawn")], "ok": [m for m in res["ok"] if m.startswith("spawn")]})
    write_json(os.path.join(DATA, "buildings", "placement.json"), {"origin_y": L.Y0, "zones": [{"id": i, "name": L.ZNAME[i], "center": [L.CX[i], 0], "platform": [L.CX[i] - 40, -40, L.CX[i] + 39, 39]} for i in range(5)],
                                                                   "regions": {k: list(v) for k, v in L.REG.items()}})
    print("functions:", len(F.files), "steps:", n_cmd, "(+%d structure steps)" % (total - n_cmd), "qa fail:", len(res["fail"]), "structures:", len(tiles))
    for m in res["fail"]: print("  QA FAIL", m)
    return 1 if res["fail"] else 0


if __name__ == "__main__":
    sys.exit(main())
