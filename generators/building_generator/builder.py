"""Block-building DSL -> staged Bedrock commands. Tracks fills so spawn safety can be verified."""
import os, sys
sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))
from common import fill_cmds

STAGES = ["ground", "shell", "interior", "detail", "light", "func", "entity"]


def base(block):
    return block.split(" [")[0].split("[")[0].strip()


def stairs(block, asc):
    """asc: 0=+x 1=-x 2=+z 3=-z (direction the stair ascends toward)."""
    return '%s ["weirdo_direction"=%d,"upside_down_bit"=false]' % (block, asc)


class Builder:
    def __init__(self):
        self.cmds = {s: [] for s in STAGES}
        self.stage = "ground"
        self.ops = []   # (stage_idx, seq, x1,y1,z1,x2,y2,z2, full_block_string, replace_filter|None)
        self.registry = []   # buildings / landmarks metadata (LOD, style, bounds, entrance ...)
        self.seq = 0

    def _rec(self, x1, y1, z1, x2, y2, z2, block, flt=None):
        self.seq += 1
        self.ops.append((STAGES.index(self.stage), self.seq, min(x1, x2), min(y1, y2), min(z1, z2), max(x1, x2), max(y1, y2), max(z1, z2), block, flt))

    def register(self, id, name, bounds, lod, style, **kw):
        self.registry.append(dict(id=id, name=name, bounds=list(bounds), lod=lod, style=style, **kw))

    def ordered_ops(self):
        return sorted(self.ops, key=lambda o: (o[0], o[1]))

    # --- primitives ---
    def fill(self, x1, y1, z1, x2, y2, z2, block, extra=""):
        self.cmds[self.stage] += fill_cmds(x1, y1, z1, x2, y2, z2, block, extra)
        if not extra:
            self._rec(x1, y1, z1, x2, y2, z2, block)
        elif extra.startswith("replace "):
            self._rec(x1, y1, z1, x2, y2, z2, block, extra.split()[1])

    def set(self, x, y, z, block):
        self.cmds[self.stage].append("setblock %d %d %d %s" % (x, y, z, block))
        self._rec(x, y, z, x, y, z, block)

    def cmd(self, c):
        self.cmds[self.stage].append(c)

    # --- composite elements ---
    def box(self, x1, y1, z1, x2, y2, z2, block):
        self.fill(x1, y1, z1, x2, y2, z2, block)

    def shell(self, x1, y1, z1, x2, y2, z2, wall, thick=1):
        """Hollow room with walls (no roof): solid walls, air inside."""
        self.fill(x1, y1, z1, x2, y2, z2, wall)
        self.fill(x1 + thick, y1, z1 + thick, x2 - thick, y2, z2 - thick, "air")

    def pillar(self, x, z, y1, y2, shaft, base_b=None, cap=None):
        self.fill(x, y1, z, x, y2, z, shaft)
        if base_b:
            self.set(x, y1, z, base_b)
        if cap:
            self.set(x, y2, z, cap)

    def lamp(self, x, y, z):
        self.set(x, y, z, "lantern")

    def window_row(self, axis, fixed, a1, a2, y1, y2, step, glass="glass_pane", frame=None):
        """Windows spaced every `step` along an axis ('x' wall at z=fixed, 'z' wall at x=fixed)."""
        for a in range(a1, a2 + 1, step):
            if axis == "x":
                self.fill(a, y1, fixed, a, y2, fixed, glass)
            else:
                self.fill(fixed, y1, a, fixed, y2, a, glass)

    def battlement(self, x1, z1, x2, z2, y, block):
        """Crenellated parapet along one straight edge."""
        if z1 == z2:
            self.fill(x1, y, z1, x2, y, z1, block)
            for x in range(x1, x2 + 1, 2):
                self.set(x, y + 1, z1, block)
        else:
            self.fill(x1, y, z1, x1, y, z2, block)
            for z in range(z1, z2 + 1, 2):
                self.set(x1, y + 1, z, block)

    def gable_roof(self, x1, z1, x2, z2, y, stair_block, ridge_block, gable_block):
        """Ridge along x. North side ascends +z (dir 2), south side ascends -z (dir 3)."""
        half = (z2 - z1 + 1) // 2
        for i in range(half):
            self.fill(x1 - 1, y + i, z1 + i, x2 + 1, y + i, z1 + i, stairs(stair_block, 2))
            self.fill(x1 - 1, y + i, z2 - i, x2 + 1, y + i, z2 - i, stairs(stair_block, 3))
            if z1 + i + 1 <= z2 - i - 1:
                self.fill(x1, y + i, z1 + i + 1, x1, y + i, z2 - i - 1, gable_block)
                self.fill(x2, y + i, z1 + i + 1, x2, y + i, z2 - i - 1, gable_block)
        if (z2 - z1 + 1) % 2 == 1:
            self.fill(x1 - 1, y + half, z1 + half, x2 + 1, y + half, z1 + half, ridge_block)

    def spiral(self, cx, cz, r, y0, steps, block, core):
        """Spiral stair around a core pillar. 16 positions per turn, rising 1 per step."""
        ring = []
        for dx in range(-r, r + 1):
            for dz in range(-r, r + 1):
                if max(abs(dx), abs(dz)) == r:
                    ring.append((dx, dz))
        # order ring cells clockwise starting at (-r,-r)
        import math
        ring.sort(key=lambda p: math.atan2(p[1], p[0]))
        n = len(ring)
        self.fill(cx, y0, cz, cx, y0 + steps, cz, core)
        for i in range(steps):
            dx, dz = ring[i % n]
            self.set(cx + dx, y0 + i, cz + dz, block)
            self.fill(cx + dx, y0 + i + 1, cz + dz, cx + dx, y0 + i + 3, cz + dz, "air")

    def patches(self, rng, x1, z1, x2, z2, y, src, choices, count, maxs=2):
        """Random weathering patches that only replace `src` blocks."""
        for _ in range(count):
            x = rng.randint(x1, x2); z = rng.randint(z1, z2)
            w = rng.randint(0, maxs); d = rng.randint(0, maxs)
            self.fill(x, y, z, min(x + w, x2), y, min(z + d, z2), rng.choice(choices), "replace " + src)

    def stage_lines(self):
        return self.cmds


# ---------------------------------------------------------------------------
# round / curved / roof helpers (grid-based circles: |p| <= r + 0.5 rounded)
# ---------------------------------------------------------------------------
import math


def _half(r, dz):
    v = (r + 0.5) ** 2 - dz * dz
    return int(math.floor(math.sqrt(v))) if v >= 0 else -1


def _disc_rows(self, cx, cz, r, y1, y2, block):
    for dz in range(-r, r + 1):
        h = _half(r, dz)
        if h >= 0:
            self.fill(cx - h, y1, cz + dz, cx + h, y2, cz + dz, block)


def _tube(self, cx, cz, r, y1, y2, wall, thick=1, inner="air"):
    """Hollow cylinder: outer radius r, wall thickness `thick` (rows of fills, no air pre-pass)."""
    for dz in range(-r, r + 1):
        ho = _half(r, dz)
        if ho < 0:
            continue
        hi = _half(r - thick, dz) if r - thick >= 0 else -1
        if hi < 0:
            self.fill(cx - ho, y1, cz + dz, cx + ho, y2, cz + dz, wall)
        else:
            self.fill(cx - ho, y1, cz + dz, cx - hi - 1, y2, cz + dz, wall)
            self.fill(cx + hi + 1, y1, cz + dz, cx + ho, y2, cz + dz, wall)
            if inner:
                self.fill(cx - hi, y1, cz + dz, cx + hi, y2, cz + dz, inner)


def _spire(self, cx, cz, y, height, r0, block, step=3, cap="end_rod"):
    """Stepped cone: radius shrinks by 1 every `step` layers."""
    r, yy = r0, y
    while r >= 0 and yy < y + height:
        h = min(step, y + height - yy)
        self.disc(cx, cz, r, yy, yy + h - 1, block)
        yy += h; r -= 1
    if cap:
        self.fill(cx, yy, cz, cx, yy + 2, cz, cap)


def _dome(self, cx, y, cz, r, block, thick=1):
    for h in range(r + 1):
        ro = int(round(math.sqrt(max(0, r * r - h * h))))
        ri = int(round(math.sqrt(max(0, (r - thick) ** 2 - h * h))))
        if h >= r - thick + 1:
            self.disc(cx, cz, ro, y + h, y + h, block)
        else:
            self.tube(cx, cz, ro, y + h, y + h, block, max(1, ro - ri))


def _arch_x(self, x, y0, z, half, straight, block, thick=2, plane="x"):
    """Pointed/round arch frame in a wall running along x (plane at z) : opening 2*half+1 wide.
    straight = vertical jamb height before the curve starts."""
    for dx in range(-half - thick, half + thick + 1):
        top = straight + (int(math.sqrt(max(0, (half + thick + 0.5) ** 2 - dx * dx))) if abs(dx) <= half + thick else 0)
        inner = straight + (int(math.sqrt(max(0, (half + 0.5) ** 2 - dx * dx))) if abs(dx) <= half else -1)
        if plane == "x":
            if abs(dx) > half:
                self.fill(x + dx, y0, z, x + dx, y0 + top, z, block)
            else:
                self.fill(x + dx, y0 + inner + 1, z, x + dx, y0 + top, z, block)
        else:
            if abs(dx) > half:
                self.fill(x, y0, z + dx, x, y0 + top, z + dx, block)
            else:
                self.fill(x, y0 + inner + 1, z + dx, x, y0 + top, z + dx, block)


def _hip_roof(self, x1, z1, x2, z2, y, stair, full):
    """Four-sided pyramid roof with 1 block overhang."""
    xa, za, xb, zb = x1 - 1, z1 - 1, x2 + 1, z2 + 1
    i = 0
    while xa <= xb and za <= zb:
        if xb - xa < 2 or zb - za < 2:
            self.fill(xa, y + i, za, xb, y + i, zb, full)
            break
        self.fill(xa + 1, y + i, za, xb - 1, y + i, za, stairs(stair, 2))
        self.fill(xa + 1, y + i, zb, xb - 1, y + i, zb, stairs(stair, 3))
        self.fill(xa, y + i, za + 1, xa, y + i, zb - 1, stairs(stair, 0))
        self.fill(xb, y + i, za + 1, xb, y + i, zb - 1, stairs(stair, 1))
        for (cxx, czz) in ((xa, za), (xb, za), (xa, zb), (xb, zb)):
            self.set(cxx, y + i, czz, full)
        xa += 1; za += 1; xb -= 1; zb -= 1; i += 1


def _steep_gable(self, x1, z1, x2, z2, y, stair, ridge, gable):
    """Steeper roof: 2 blocks of rise per block of run (stair over a solid block)."""
    half = (z2 - z1 + 1) // 2
    for i in range(half):
        yy = y + 2 * i
        self.fill(x1 - 1, yy, z1 + i, x2 + 1, yy, z1 + i, stairs(stair, 2))
        self.fill(x1 - 1, yy, z2 - i, x2 + 1, yy, z2 - i, stairs(stair, 3))
        self.fill(x1 - 1, yy + 1, z1 + i, x2 + 1, yy + 1, z1 + i, ridge) if i < half - 1 else None
        self.fill(x1 - 1, yy + 1, z2 - i, x2 + 1, yy + 1, z2 - i, ridge) if i < half - 1 else None
        if z1 + i + 1 <= z2 - i - 1:
            self.fill(x1, yy, z1 + i + 1, x1, yy + 1, z2 - i - 1, gable)
            self.fill(x2, yy, z1 + i + 1, x2, yy + 1, z2 - i - 1, gable)
    if (z2 - z1 + 1) % 2 == 1:
        self.fill(x1 - 1, y + 2 * half, z1 + half, x2 + 1, y + 2 * half, z1 + half, ridge)


for _n, _f in [("disc", _disc_rows), ("tube", _tube), ("spire", _spire), ("dome", _dome), ("arch", _arch_x), ("hip_roof", _hip_roof), ("steep_gable", _steep_gable)]:
    setattr(Builder, _n, _f)
