"""Shared helpers for the BCE generators (stdlib only)."""
import json, os

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), ".."))
SRC = os.path.join(ROOT, "src")
BP = os.path.join(SRC, "behavior_pack")
RP = os.path.join(SRC, "resource_pack")
FUNCS = os.path.join(BP, "functions")
DATA = os.path.join(SRC, "data")

MAX_FILL = 32768          # Bedrock /fill block limit
MAX_FN_LINES = 400        # soft limit enforced by validator


def jraw(*parts):
    """Build a Bedrock rawtext JSON string. parts: str | (name, objective)."""
    out = []
    for p in parts:
        if isinstance(p, str):
            out.append({"text": p})
        else:
            out.append({"score": {"name": p[0], "objective": p[1]}})
    return json.dumps({"rawtext": out}, ensure_ascii=False, separators=(",", ":"))


class FnSet:
    """Collects .mcfunction files (relative path without extension -> lines)."""

    def __init__(self):
        self.files = {}

    def emit(self, path, lines, doc=None):
        if path in self.files:
            raise ValueError("duplicate function " + path)
        body = []
        if doc:
            body.append("# " + doc)
        body.extend(lines)
        self.files[path] = body

    def write(self, base=FUNCS):
        for path, lines in self.files.items():
            full = os.path.join(base, path + ".mcfunction")
            os.makedirs(os.path.dirname(full), exist_ok=True)
            with open(full, "w", encoding="utf-8", newline="\n") as f:
                f.write("\n".join(lines) + "\n")


def fill_cmds(x1, y1, z1, x2, y2, z2, block, extra=""):
    """Return /fill commands, split so each covers <= MAX_FILL blocks."""
    x1, x2 = sorted((x1, x2)); y1, y2 = sorted((y1, y2)); z1, z2 = sorted((z1, z2))
    out = []
    dx, dy, dz = x2 - x1 + 1, y2 - y1 + 1, z2 - z1 + 1
    if dx * dy * dz <= MAX_FILL:
        return ["fill %d %d %d %d %d %d %s%s" % (x1, y1, z1, x2, y2, z2, block, (" " + extra) if extra else "")]
    # split along the longest axis
    if dy >= dx and dy >= dz:
        m = (y1 + y2) // 2
        return fill_cmds(x1, y1, z1, x2, m, z2, block, extra) + fill_cmds(x1, m + 1, z1, x2, y2, z2, block, extra)
    if dx >= dz:
        m = (x1 + x2) // 2
        return fill_cmds(x1, y1, z1, m, y2, z2, block, extra) + fill_cmds(m + 1, y1, z1, x2, y2, z2, block, extra)
    m = (z1 + z2) // 2
    return fill_cmds(x1, y1, z1, x2, y2, m, block, extra) + fill_cmds(x1, y1, m + 1, x2, y2, z2, block, extra)


def sel_box(r):
    """Selector args for a region tuple (x1,y1,z1,x2,y2,z2) inclusive blocks."""
    x1, y1, z1, x2, y2, z2 = r
    return "x=%d,y=%d,z=%d,dx=%d,dy=%d,dz=%d" % (min(x1, x2), min(y1, y2), min(z1, z2),
                                                abs(x2 - x1), abs(y2 - y1), abs(z2 - z1))


def write_json(path, obj):
    os.makedirs(os.path.dirname(path), exist_ok=True)
    with open(path, "w", encoding="utf-8", newline="\n") as f:
        json.dump(obj, f, ensure_ascii=False, indent=2)
        f.write("\n")


def read_json(path):
    with open(path, encoding="utf-8") as f:
        return json.load(f)
