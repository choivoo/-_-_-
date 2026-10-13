"""Voxel replica of what the build commands produce (used for QA, structure export and spawn safety)."""
import math, collections
from builder import STAGES, base

X0, X1 = -260, 500     # world x range covered (observatory at x=-200)
Y0, Y1 = 60, 240
Z0, Z1 = -44, 44
SX, SY, SZ = X1 - X0 + 1, Y1 - Y0 + 1, Z1 - Z0 + 1

PASSABLE = {"air", "web", "water", "lantern", "soul_lantern", "lever", "end_rod", "torch"}
NONSOLID_FLOOR = {"air", "web", "water", "lava", "lantern", "soul_lantern", "lever", "end_rod", "torch", "magma"}


class World:
    def __init__(self):
        self.pal = ["air"]               # id -> full block string (id 0 = air)
        self.idx = {"air": 0}
        self.a = bytearray(SX * SY * SZ) # ids < 256 (palette stays small)
        self.dirty_lo = [10 ** 9] * 3
        self.dirty_hi = [-10 ** 9] * 3

    def pid(self, block):
        if block not in self.idx:
            self.idx[block] = len(self.pal); self.pal.append(block)
            assert len(self.pal) < 256, "palette overflow"
        return self.idx[block]

    def _i(self, x, y, z):
        return ((x - X0) * SY + (y - Y0)) * SZ + (z - Z0)

    def inb(self, x, y, z):
        return X0 <= x <= X1 and Y0 <= y <= Y1 and Z0 <= z <= Z1

    def fill(self, x1, y1, z1, x2, y2, z2, block, flt=None):
        x1, x2 = max(x1, X0), min(x2, X1); y1, y2 = max(y1, Y0), min(y2, Y1); z1, z2 = max(z1, Z0), min(z2, Z1)
        if x1 > x2 or y1 > y2 or z1 > z2:
            return
        v = self.pid(block); n = z2 - z1 + 1
        if flt is None:
            row = bytes([v]) * n
            for x in range(x1, x2 + 1):
                for y in range(y1, y2 + 1):
                    i = self._i(x, y, z1); self.a[i:i + n] = row
        else:
            fid = [k for k, name in enumerate(self.pal) if base(name) == flt]
            for x in range(x1, x2 + 1):
                for y in range(y1, y2 + 1):
                    i = self._i(x, y, z1)
                    seg = self.a[i:i + n]
                    for j in range(n):
                        if seg[j] in fid:
                            seg[j] = v
                    self.a[i:i + n] = seg

    def get(self, x, y, z):
        if not self.inb(x, y, z):
            return "air"
        return self.pal[self.a[self._i(x, y, z)]]

    def name(self, x, y, z):
        return base(self.get(x, y, z))

    def apply(self, builder):
        for (_, _, x1, y1, z1, x2, y2, z2, blk, flt) in builder.ordered_ops():
            self.fill(x1, y1, z1, x2, y2, z2, blk, flt)

    # ---- walkability -------------------------------------------------
    def passable(self, x, y, z):
        return self.name(x, y, z) in PASSABLE

    def standable(self, x, y, z):
        """feet at y: feet+head passable and (solid floor or swimming)."""
        if not (self.passable(x, y, z) and self.passable(x, y + 1, z)):
            return False
        f = self.name(x, y - 1, z)
        if f == "water" or self.name(x, y, z) == "water":
            return True
        return f not in NONSOLID_FLOOR

    def reach(self, start, max_nodes=3_000_000):
        sx, sy, sz = start
        seen = {start}
        dq = collections.deque([start])
        while dq:
            x, y, z = dq.popleft()
            for dx, dz in ((1, 0), (-1, 0), (0, 1), (0, -1)):
                nx, nz = x + dx, z + dz
                if not (X0 <= nx <= X1 and Z0 <= nz <= Z1):
                    continue
                for dy in (0, 1, -1, -2, -3, -4):
                    ny = y + dy
                    if (nx, ny, nz) in seen or not self.inb(nx, ny, nz):
                        continue
                    if dy == 1 and not self.passable(x, y + 2, z):      # need headroom to hop up
                        continue
                    if dy < 0 and not (self.passable(nx, y, nz) and self.passable(nx, y + 1, nz)):
                        continue
                    if self.standable(nx, ny, nz):
                        seen.add((nx, ny, nz)); dq.append((nx, ny, nz))
            if len(seen) > max_nodes:
                break
        return seen
