"""Helper to drive a local Bedrock Dedicated Server (BDS) for verification and for building the pre-built world.
BDS itself is NOT part of this repository (Mojang EULA); set BDS_DIR or let fetch() download it."""
import os, sys, subprocess, threading, time, re, json, shutil, zipfile, queue

BDS_VERSION = "1.21.80.3"
BDS_DIR = os.environ.get("BDS_DIR", "/tmp/bds")
SHIM = os.environ.get("IPV6_SHIM", "/tmp/ipv6shim.so")   # build with: gcc -shared -fPIC -o /tmp/ipv6shim.so tools/ipv6shim.c -ldl  (only needed where IPv6 is unavailable)
URL = "https://www.minecraft.net/bedrockdedicatedserver/bin-linux/bedrock-server-%s.zip" % BDS_VERSION


def fetch():
    if os.path.exists(os.path.join(BDS_DIR, "bedrock_server")):
        return
    os.makedirs(BDS_DIR, exist_ok=True)
    z = os.path.join(os.path.dirname(BDS_DIR), "bds_%s.zip" % BDS_VERSION)
    subprocess.check_call(["curl", "-sS", "-A", "Mozilla/5.0", "-o", z, URL])
    zipfile.ZipFile(z).extractall(BDS_DIR)
    os.chmod(os.path.join(BDS_DIR, "bedrock_server"), 0o755)


class Server:
    def __init__(self, level="BCE", props=None):
        fetch()
        self.level = level
        self.lines = []
        self.q = queue.Queue()
        p = {"server-name": "BCE test", "gamemode": "survival", "difficulty": "normal", "allow-cheats": "true", "online-mode": "false", "level-name": level,
             "content-log-file-enabled": "true", "view-distance": "10", "tick-distance": "4", "default-player-permission-level": "member",
             "max-players": "4", "server-port": "29132", "server-portv6": "29133", "texturepack-required": "false", "emit-server-telemetry": "false"}
        p.update(props or {})
        old = open(os.path.join(BDS_DIR, "server.properties")).read().splitlines()
        out, seen = [], set()
        for l in old:
            if "=" in l and not l.startswith("#") and l.split("=")[0] in p:
                k = l.split("=")[0]; out.append("%s=%s" % (k, p[k])); seen.add(k)
            else:
                out.append(l)
        for k, v in p.items():
            if k not in seen: out.append("%s=%s" % (k, v))
        open(os.path.join(BDS_DIR, "server.properties"), "w").write("\n".join(out) + "\n")

    @property
    def world(self): return os.path.join(BDS_DIR, "worlds", self.level)

    def start(self):
        self.proc = subprocess.Popen(["./bedrock_server"], cwd=BDS_DIR, stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True, bufsize=1,
                                     env=dict(os.environ, LD_LIBRARY_PATH=BDS_DIR, **({"LD_PRELOAD": SHIM} if os.path.exists(SHIM) else {})))
        threading.Thread(target=self._read, daemon=True).start()
        return self.wait("Server started", 120)

    def _read(self):
        for line in self.proc.stdout:
            line = line.rstrip("\n")
            self.lines.append(line); self.q.put(line)

    def cmd(self, c):
        self.proc.stdin.write(c + "\n"); self.proc.stdin.flush()

    def wait(self, pat, timeout=60, start=None):
        """Wait for a regex in NEW output (or from index `start`)."""
        t0 = time.time(); i = len(self.lines) if start is None else start
        rx = re.compile(pat)
        while time.time() - t0 < timeout:
            if self.proc.poll() is not None and i >= len(self.lines):
                raise RuntimeError('server exited; tail:\n' + '\n'.join(self.lines[-10:]))
            while i < len(self.lines):
                if rx.search(self.lines[i]): return self.lines[i]
                i += 1
            time.sleep(0.05)
        raise TimeoutError("waiting for %r; tail:\n%s" % (pat, "\n".join(self.lines[-15:])))

    def run(self, c, wait=0.6):
        n = len(self.lines); self.cmd(c); time.sleep(wait); return self.lines[n:]

    def stop(self):
        try:
            self.cmd("stop"); self.proc.wait(60)
        except Exception:
            self.proc.kill()


def install_packs(level_dir, bp_src, rp_src):
    """Embed BP/RP into the world folder + activation json (this is exactly how .mcworld files carry their packs)."""
    for nm, src, js in (("behavior_packs", bp_src, "world_behavior_packs.json"), ("resource_packs", rp_src, "world_resource_packs.json")):
        dst = os.path.join(level_dir, nm, os.path.basename(src.rstrip("/")) if False else ("BCE_BP" if nm == "behavior_packs" else "BCE_RP"))
        shutil.rmtree(dst, ignore_errors=True)
        shutil.copytree(src, dst)
        man = json.load(open(os.path.join(src, "manifest.json")))
        json.dump([{"pack_id": man["header"]["uuid"], "version": man["header"]["version"]}], open(os.path.join(level_dir, js), "w"))
