#!/usr/bin/env python3
"""Master generator: writes the whole behavior pack function tree, resource pack and pure-command files."""
import os, sys, json, shutil
HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
sys.path.insert(0, os.path.join(HERE, "building_generator"))
from common import *
import layout as L
from building_generator import zones
from building_generator.builder import Builder, STAGES
from command_generator import engine
from command_generator import pure
from cutscene_generator import gen as cgen

CHUNK = 40


def safe_spot(builders, x, y, z, label):
    zi = min(4, max(0, round(x / 100.0)))
    b = builders[zi]
    bx, by, bz = int(x // 1), int(y), int(z // 1)
    floor, feet, head = b.block_at(bx, by - 1, bz), b.block_at(bx, by, bz), b.block_at(bx, by + 1, bz)
    ok_air = (None, "air", "lantern", "web")
    bad = []
    if floor in (None, "air", "water", "lava", "magma", "web"):
        bad.append("floor=%s" % floor)
    if feet not in ok_air:
        bad.append("feet=%s" % feet)
    if head not in ok_air:
        bad.append("head=%s" % head)
    return label, (x, y, z), bad


def main():
    F = FnSet()
    builders = []
    steps = []          # list of (doc, lines)
    zone_range = []
    for zi, zf in enumerate(zones.ZONES):
        b = Builder(); zf(b); builders.append(b)
        start = len(steps)
        cx = L.CX[zi]
        area = "bce_z%d" % zi
        steps.append(("zone %d probe (waits for chunks)" % zi, [
            "tellraw @a %s" % jraw("§e[BCE] 구역 %d/5 건설 중: %s" % (zi + 1, L.ZNAME[zi])),
            "tickingarea add circle %d 100 0 4 %s" % (cx, area),
            "setblock %d 99 0 stone" % cx], "probe", cx))
        for st in STAGES:
            ls = b.cmds[st]
            for k in range(0, len(ls), CHUNK):
                steps.append(("zone %d %s %d" % (zi, st, k // CHUNK), ls[k:k + CHUNK], "plain", cx))
        steps.append(("zone %d end: release ticking area" % zi, ["tickingarea remove %s" % area], "plain", cx))
        zone_range.append((start, len(steps)))
    total = len(steps)
    info = {"total": total, "zones": zone_range}

    # sanity: fill sizes
    for b in builders:
        for st in STAGES:
            for c in b.cmds[st]:
                if c.startswith("fill "):
                    p = c.split()
                    v = 1
                    for i in range(3):
                        v *= abs(int(p[4 + i]) - int(p[1 + i])) + 1
                    assert v <= MAX_FILL, c

    disp = []
    for i, (doc, lines, kind, cx) in enumerate(steps):
        name = "build/steps/s%03d" % i
        if kind == "probe":
            body = lines + ["execute if block %d 99 0 stone run scoreboard players add #bstep bce_sys 1" % cx]
        else:
            body = lines + ["scoreboard players add #bstep bce_sys 1"]
        F.emit(name, body, doc=doc)
        disp.append("execute if score #bstep bce_sys matches %d run function %s" % (i, name))
    F.emit("build/dispatch", disp, doc="one build step per tick; probe steps repeat until the chunk is really loaded")
    F.emit("build/step", ["execute if score #bstep bce_sys = #bstop bce_sys run function build/finish",
                          "execute unless score #bstep bce_sys = #bstop bce_sys run function build/dispatch"])
    F.emit("build/start", ["scoreboard players set #bstep bce_sys 0", "scoreboard players set #bstop bce_sys %d" % total,
                           "scoreboard players set #state bce_sys 3"], doc="WORLD_BUILDING")
    F.emit("build/finish", [
        "setworldspawn %d %d %d" % (L.START[0], L.START[1], L.START[2]),
        "scoreboard players set #built bce_sys 1",
        "execute if score #started bce_sys matches 0 run scoreboard players set #state bce_sys 4",
        "execute if score #started bce_sys matches 1.. run scoreboard players set #state bce_sys 7",
        "tickingarea remove_all",
        "tellraw @a %s" % jraw("§a[BCE] 건축 완료! 신전 시작 패드(제단 앞)에 서면 오프닝이 시작됩니다.")],
        doc="MAIN_MENU (or EXPLORATION after a partial rebuild)")
    F.emit("build/progress", ["tellraw @s " + jraw("§e건축 단계 ", ("#bstep", "bce_sys"), "/", ("#bstop", "bce_sys"))])

    engine.build_engine(F, info)
    scenes = cgen.load_scenes(os.path.join(DATA, "scenes"))
    cgen.generate_all(scenes, F)

    # clean + write
    if os.path.isdir(FUNCS):
        shutil.rmtree(FUNCS)
    F.write()
    write_json(os.path.join(FUNCS, "tick.json"), {"values": ["core/tick"]})

    # safety report
    spots = [("START", L.START)] + [("CP%d" % n, v[1]) for n, v in L.CHECKPOINTS.items()] + [
        ("YARD_SPAWN", L.YARD_SPAWN), ("MIDBOSS", L.MIDBOSS_POS), ("ARENA_C", L.ARC if hasattr(L, "ARC") else L.ARENA_C)]
    for w, lst in L.WALL_WAVES.items():
        for k, x, z in lst:
            spots.append(("WAVE%d_%s" % (w, k), (x, 100, z)))
    report = {"fail": [], "ok": []}
    for lab, (x, y, z) in spots:
        r = safe_spot(builders, x, y, z, lab)
        (report["fail"] if r[2] else report["ok"]).append({"label": lab, "pos": [x, y, z], "problems": r[2]})
    os.makedirs(os.path.join(ROOT, "reports"), exist_ok=True)
    write_json(os.path.join(ROOT, "reports", "spawn_safety.json"), report)
    write_json(os.path.join(ROOT, "reports", "build_plan.json"), {
        "total_steps": total, "zone_step_ranges": zone_range,
        "commands_per_zone": [sum(len(v) for v in b.cmds.values()) for b in builders]})
    # building placement info
    write_json(os.path.join(DATA, "buildings", "placement.json"), {
        "origin_y": L.Y0, "zones": [{"id": i, "name": L.ZNAME[i], "center": [L.CX[i], 0], "platform": [L.CX[i] - 40, -40, L.CX[i] + 39, 39]} for i in range(5)],
        "regions": {k: list(v) for k, v in L.REG.items()}})
    print("functions:", len(F.files), "build steps:", total, "spawn failures:", len(report["fail"]))
    for f in report["fail"]:
        print("  SPAWN PROBLEM", f)
    return F


if __name__ == "__main__":
    main()
