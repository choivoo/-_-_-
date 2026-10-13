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
        self.ops = []   # (x1,y1,z1,x2,y2,z2,block) in program order

    # --- primitives ---
    def fill(self, x1, y1, z1, x2, y2, z2, block, extra=""):
        self.cmds[self.stage] += fill_cmds(x1, y1, z1, x2, y2, z2, block, extra)
        if not extra:
            self.ops.append((min(x1, x2), min(y1, y2), min(z1, z2), max(x1, x2), max(y1, y2), max(z1, z2), base(block)))

    def set(self, x, y, z, block):
        self.cmds[self.stage].append("setblock %d %d %d %s" % (x, y, z, block))
        self.ops.append((x, y, z, x, y, z, base(block)))

    def cmd(self, c):
        self.cmds[self.stage].append(c)

    def block_at(self, x, y, z):
        for o in reversed(self.ops):
            if o[0] <= x <= o[3] and o[1] <= y <= o[4] and o[2] <= z <= o[5]:
                return o[6]
        return None

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
