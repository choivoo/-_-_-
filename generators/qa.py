"""World QA on the voxel replica: spawn safety, reachability (with progressive gates), interior/headroom checks."""
import os, sys, random
HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE); sys.path.insert(0, os.path.join(HERE, "building_generator"))
import layout as L
from building_generator import zones
from building_generator.builder import Builder
from building_generator.voxel import World, base

Y = L.Y0


def make_world():
    bs = []
    for zf in zones.ZONES:
        b = Builder(); zf(b); bs.append(b)
    # execution order in-game: zone by zone, stages in order
    w = World()
    for b in bs:
        w.apply(b)
    return w, bs


def script_ops():
    """Block changes made by game scripts, in the order the story opens them."""
    g = L.GATE_RUINS; h = L.HIDDEN_DOOR; wg = L.WALL_GATE_FILL; cd = L.CIT_DOOR
    ops = []
    ops.append(("ruins_puzzle", [(g[0], g[1], g[2], g[3], g[4], g[5], "air"), (h[0], h[1], h[2], h[3], h[4], h[5], "air")] +
                [(L.BRIDGE_X0 + i, 86, -1, L.BRIDGE_X0 + i, 86, 1, "stone_bricks") for i in range(L.BRIDGE_LEN)]))
    ops.append(("wall_gate", [(wg[0], wg[1], wg[2], wg[3], wg[4], wg[5], "air")]))
    ops.append(("citadel_door", [(cd[0], cd[1], cd[2], cd[3], cd[4], cd[5], "air")]))
    return ops


def stand_near(reach, x, y, z, r=2):
    for dx in range(-r, r + 1):
        for dz in range(-r, r + 1):
            for dy in range(-2, 3):
                if (int(x) + dx, int(y) + dy, int(z) + dz) in reach:
                    return True
    return False


def run():
    w, bs = make_world()
    res = {"fail": [], "ok": [], "stats": {}}
    f = lambda m: res["fail"].append(m)
    ok = lambda m: res["ok"].append(m)
    # --- spawn safety
    spots = [("START", L.START)] + [("CP%d" % n, v[1]) for n, v in L.CHECKPOINTS.items()] + [("YARD_SPAWN", L.YARD_SPAWN), ("MIDBOSS", L.MIDBOSS_POS), ("ARENA_C", L.ARENA_C)]
    for k, lst in L.WALL_WAVES.items():
        for kind, x, z in lst: spots.append(("WAVE%d_%s@%d,%d" % (k, kind, x, z), (x, Y, z)))
    for lab, (x, y, z) in spots:
        bx, by, bz = int(x // 1), int(y), int(z // 1)
        fl, ft, hd = w.name(bx, by - 1, bz), w.name(bx, by, bz), w.name(bx, by + 1, bz)
        if fl in ("air", "water", "lava", "magma", "web") or ft not in ("air", "lantern", "web") or hd not in ("air", "lantern", "web"):
            f("spawn %s unsafe floor=%s feet=%s head=%s" % (lab, fl, ft, hd))
        else:
            ok("spawn " + lab)
    # --- reachability with progressive gates
    start = (int(L.START[0] // 1), Y, int(L.START[2] // 1))
    if not w.standable(*start): f("START cell not standable")
    cx = L.CX
    stages = []
    reach0 = w.reach(start)
    stages.append(("all gates closed", reach0))
    must_closed_reach = [("CP1", L.CHECKPOINTS[1][1]), ("YARD", L.YARD_SPAWN), ("village", (cx[1] - 34, Y, 0)), ("ruins entrance", (cx[2] - 36, Y, 0)), ("ruins hall A", (cx[2] - 12, 87, 3)), ("lever 1", L.LEVERS[0]), ("lever 2", L.LEVERS[1]), ("lever 3", L.LEVERS[2]), ("village secret chest", (110, Y, 27)), ("weapon rack", (8, Y, -16)), ("altar", (-11, Y + 2, 0))]
    must_closed_block = [("ruins corridor beyond gate", (cx[2] + 10, 87, 0)), ("hidden room", (cx[2] + 22, 87, 15)), ("ruins exit", (cx[2] + 36, Y, 0)),
                         ("wall zone", (cx[3] - 20, Y, 0)), ("citadel hall", (cx[4] - 12, Y, 0)), ("boss arena", L.ARENA_C)]
    for lab, p in must_closed_reach:
        (ok if stand_near(reach0, *p) else f)("closed: reachable " + lab if stand_near(reach0, *p) else "closed: NOT reachable " + lab)
    for lab, p in must_closed_block:
        (f if stand_near(reach0, *p) else ok)("closed: BYPASS to " + lab if stand_near(reach0, *p) else "closed: blocked " + lab)
    expect_after = {
        "ruins_puzzle": ([("ruins exit", (cx[2] + 36, Y, 0)), ("hidden room", (cx[2] + 22, 87, 15)), ("ruins reward chest", (cx[2] + 22, 87, 16)), ("wall zone yard", (cx[3] - 20, Y, 0)), ("wall court (via bridge?)", None)],
                         [("citadel hall", (cx[4] - 12, Y, 0)), ("boss arena", L.ARENA_C)]),
        "wall_gate": ([("citadel hall", (cx[4] - 12, Y, 0)), ("citadel door front", (cx[4] - 6, Y, 0))], [("boss arena", L.ARENA_C)]),
        "citadel_door": ([("boss arena", L.ARENA_C)], []),
    }
    reach = reach0
    for name, ops in script_ops():
        for (x1, y1, z1, x2, y2, z2, blk) in ops:
            w.fill(x1, y1, z1, x2, y2, z2, blk)
        reach = w.reach(start)
        stages.append(("after " + name, reach))
        yes, no = expect_after[name]
        for lab, p in yes:
            if p is None: continue
            (ok if stand_near(reach, *p) else f)(("after %s: reachable %s" if stand_near(reach, *p) else "after %s: NOT reachable %s") % (name, lab))
        for lab, p in no:
            (f if stand_near(reach, *p) else ok)(("after %s: BYPASS %s" if stand_near(reach, *p) else "after %s: still blocked %s") % (name, lab))
    # --- buildings: entrance + interior reachability, headroom
    nreg = 0
    for zi, b in enumerate(bs):
        for r in b.registry:
            nreg += 1
            if "entrance" in r:
                e = r["entrance"]
                (ok if stand_near(reach, e[0], e[1], e[2], 2) else f)(("entrance reachable " + r["id"]) if stand_near(reach, e[0], e[1], e[2], 2) else "entrance NOT reachable " + r["id"])
            for p in r.get("interior", []):
                cond = stand_near(reach, p[0], p[1], p[2], 2)
                (ok if cond else f)(("interior reachable %s %s" % (r["id"], p)) if cond else "interior NOT reachable %s %s" % (r["id"], p))
                # headroom: 3 free cells above some reachable cell near p
                hh = False
                for (x, y, z) in [(p[0] + dx, p[1] + dy, p[2] + dz) for dx in range(-2, 3) for dz in range(-2, 3) for dy in range(-2, 3)]:
                    if (x, y, z) in reach and all(w.name(x, y + k, z) in ("air", "water", "lantern", "web") for k in range(0, 3)):
                        hh = True; break
                if not hh: f("headroom < 3 near %s %s" % (r["id"], p))
    res["stats"] = {"reach_nodes": {n: len(r) for n, r in stages}, "registered_structures": nreg,
                    "by_lod": {str(l): sum(1 for b in bs for r in b.registry if r["lod"] == l) for l in range(5)}}
    return res, w, bs


if __name__ == "__main__":
    import json
    r, _, _ = run()
    print(json.dumps(r["stats"], ensure_ascii=False)); print("FAIL", len(r["fail"]), "OK", len(r["ok"]))
    for m in r["fail"]: print(" -", m)
