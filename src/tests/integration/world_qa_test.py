#!/usr/bin/env python3
"""Regenerates the voxel replica of the world and runs: spawn safety, progressive-gate reachability, interior reachability + headroom,
and a .mcstructure round-trip (voxel -> file -> parse -> compare). All on the generator's own model of the build commands."""
import os, sys, json, random
ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "..", ".."))
sys.path.insert(0, os.path.join(ROOT, "generators")); sys.path.insert(0, os.path.join(ROOT, "generators", "building_generator"))
import qa, structure
from building_generator.builder import base
from building_generator import voxel


def main():
    res, w, bs = qa.run()
    fails = list(res["fail"])
    # round trip every exported tile against a freshly built replica
    reg = json.load(open(os.path.join(ROOT, "src/data/buildings/registry.json"), encoding="utf-8"))
    w2, _ = qa.make_world()
    rnd = random.Random(3); checked = 0
    for t in reg["structure_tiles"]:
        p = os.path.join(ROOT, "src/behavior_pack/structures/bce", t["file"])
        size, cells = structure.read_blocks(p)
        ox, oy, oz = t["origin"]; sx, sy, sz = size
        for _ in range(400):
            x, y, z = rnd.randrange(sx), rnd.randrange(sy), rnd.randrange(sz)
            got = cells[(x * sy + y) * sz + z]
            exp = w2.get(ox + x, oy + y, oz + z)
            exp_name = "minecraft:" + base(exp)
            if (got[0] if got else "minecraft:air") != exp_name:
                fails.append("roundtrip mismatch %s at %s: %s != %s" % (t["file"], (x, y, z), got, exp_name)); break
            checked += 1
    print("world QA ok=%d fail=%d; structure round-trip cells checked=%d; structures=%d" % (len(res["ok"]), len(fails), checked, len(reg["structure_tiles"])))
    for f in fails[:30]: print(" -", f)
    json.dump({"qa": res, "roundtrip_cells": checked, "fails": fails}, open(os.path.join(ROOT, "reports", "world_qa_test.json"), "w", encoding="utf-8"), ensure_ascii=False, indent=1)
    return 1 if fails else 0


if __name__ == "__main__":
    sys.exit(main())
