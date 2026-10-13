#!/usr/bin/env python3
"""Loads the packs into a REAL Bedrock Dedicated Server and fails on any function / pack / entity / structure load error.
This is the strongest check available without a device: the engine's own parser accepts (or rejects) every function line."""
import os, sys, time, re, json
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import bds
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
R = os.path.join(ROOT, "src") + "/"


def main():
    s = bds.Server("BCEcheck", {"texturepack-required": "true"})
    import shutil
    shutil.rmtree(s.world, ignore_errors=True); os.makedirs(s.world)
    bds.install_packs(s.world, R + "behavior_pack", R + "resource_pack")
    s.start(); time.sleep(3)
    bad = [l for l in s.lines if re.search(r"(failed to load|Error on line|\bERROR\b|WARN\].*(Commands|Pack|Entity|Resource|Behavior|Structure))", l)]
    pack_ok = any("Pack Stack - [00]" in l and "BCE Behavior" in l for l in s.lines)
    rp_ok = any(("esource" in l and "BCE" in l) for l in s.lines)
    open("/tmp/bds_check_full.log", "w").write("\n".join(s.lines))
    s.stop()
    rep = {"bds_version": bds.BDS_VERSION, "behavior_pack_loaded": pack_ok, "resource_pack_loaded": rp_ok, "problems": bad[:60], "problem_count": len(bad)}
    json.dump(rep, open(os.path.join(ROOT, "reports", "bds_load_check.json"), "w", encoding="utf-8"), ensure_ascii=False, indent=1)
    print("BDS %s: BP loaded=%s RP loaded=%s problems=%d" % (bds.BDS_VERSION, pack_ok, rp_ok, len(bad)))
    for l in bad[:25]: print("  ", l)
    return 0 if (pack_ok and not bad) else 1


if __name__ == "__main__":
    sys.exit(main())
