"""Noise-based height map (Perlin + FBM + a cheap thermal erosion pass). Computed offline by the generator;
the game only receives the resulting fill commands."""
import math, random


class Perlin:
    def __init__(self, seed):
        r = random.Random(seed)
        p = list(range(256)); r.shuffle(p)
        self.p = p + p

    @staticmethod
    def fade(t): return t * t * t * (t * (t * 6 - 15) + 10)

    @staticmethod
    def lerp(a, b, t): return a + t * (b - a)

    @staticmethod
    def grad(h, x, y):
        h &= 7
        u = x if h < 4 else y
        v = y if h < 4 else x
        return (u if h & 1 == 0 else -u) + (v if h & 2 == 0 else -v)

    def noise(self, x, y):
        X, Y = int(math.floor(x)) & 255, int(math.floor(y)) & 255
        x -= math.floor(x); y -= math.floor(y)
        u, v = self.fade(x), self.fade(y)
        p = self.p
        a, b = p[X] + Y, p[X + 1] + Y
        return self.lerp(self.lerp(self.grad(p[a], x, y), self.grad(p[b], x - 1, y), u),
                         self.lerp(self.grad(p[a + 1], x, y - 1), self.grad(p[b + 1], x - 1, y - 1), u), v)

    def fbm(self, x, y, octaves=4, lac=2.0, gain=0.5):
        amp, f, tot, norm = 1.0, 1.0, 0.0, 0.0
        for _ in range(octaves):
            tot += amp * self.noise(x * f, y * f); norm += amp
            amp *= gain; f *= lac
        return tot / norm


def heightmap(seed, w, d, scale=14.0, amp=6.0, erode=2):
    n = Perlin(seed)
    h = [[max(0.0, (n.fbm(x / scale, z / scale) + 0.25) * amp) for z in range(d)] for x in range(w)]
    for _ in range(erode):       # thermal erosion: move material downhill when slope > talus
        for x in range(1, w - 1):
            for z in range(1, d - 1):
                for dx, dz in ((1, 0), (-1, 0), (0, 1), (0, -1)):
                    diff = h[x][z] - h[x + dx][z + dz]
                    if diff > 1.2:
                        mv = (diff - 1.2) * 0.25
                        h[x][z] -= mv; h[x + dx][z + dz] += mv
    return [[int(round(v)) for v in row] for row in h]


def column_runs(hm, x0, z0, floor_y, cap_block, fill_block, sub_block=None):
    """Yield (x1,z,x2,height) runs of equal height per z row -> few fill commands."""
    w, d = len(hm), len(hm[0])
    for z in range(d):
        x = 0
        while x < w:
            hgt = hm[x][z]; x2 = x
            while x2 + 1 < w and hm[x2 + 1][z] == hgt:
                x2 += 1
            if hgt > 0:
                yield (x0 + x, z0 + z, x0 + x2, hgt)
            x = x2 + 1
