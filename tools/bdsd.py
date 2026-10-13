#!/usr/bin/env python3
"""Interactive BDS daemon: commands are read from the FIFO /tmp/bds.in, all server output goes to /tmp/bds.log.
Usage: python3 tools/bdsd.py <level> [--fresh] [--packs] [--prop=k=v ...]   then use tools/bdsc.sh "<command>"."""
import sys, os, time, threading
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import bds
level = sys.argv[1]; R = os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), "src") + "/"
props = {}
for a in sys.argv[2:]:
    if a.startswith("--prop="):
        k, v = a[7:].split("=", 1); props[k] = v
s = bds.Server(level, props)
if "--fresh" in sys.argv:
    import shutil; shutil.rmtree(s.world, ignore_errors=True)
os.makedirs(s.world, exist_ok=True)
if "--packs" in sys.argv:
    bds.install_packs(s.world, R + "behavior_pack", R + "resource_pack")
if os.path.exists("/tmp/bds.in"): os.remove("/tmp/bds.in")
os.mkfifo("/tmp/bds.in")
log = open("/tmp/bds.log", "w", buffering=1)
try:
    s.start()
except Exception as e:
    log.write("START FAIL %s\n" % e)
seen = 0
def pump():
    global seen
    while True:
        while seen < len(s.lines):
            log.write(s.lines[seen] + "\n"); seen += 1
        time.sleep(0.05)
threading.Thread(target=pump, daemon=True).start()
time.sleep(0.5)
log.write("DAEMON READY\n")
while s.proc.poll() is None:
    with open("/tmp/bds.in") as f:
        for line in f:
            line = line.strip()
            if line == "__quit__":
                s.stop(); time.sleep(0.5); log.write("DAEMON EXIT\n"); sys.exit(0)
            if line: s.cmd(line)
log.write("SERVER DIED\n")
