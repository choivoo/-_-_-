"""'별의 관측소' — small floating temple used as the safe waiting room while the world is being restored."""
import os, sys, random
sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))
sys.path.insert(0, os.path.dirname(__file__))
import layout as L
from builder import Builder, stairs


def build():
    b = Builder()
    ox, oy, oz = L.OBS
    rng = random.Random(77)
    b.stage = "ground"
    # clouds (white wool blobs) below and around the platform
    for (dx, dy, dz, r) in [(-14, -6, 8, 6), (13, -8, -10, 7), (4, -10, 16, 5), (-9, -9, -15, 6), (18, -5, 12, 4), (-20, -4, -4, 5)]:
        for i in range(3):
            b.disc(ox + dx, oz + dz, max(1, r - i), oy + dy + i, oy + dy + i, "white_wool")
    # platform: concentric floor
    b.disc(ox, oz, 10, oy - 2, oy - 1, "polished_blackstone")
    b.disc(ox, oz, 9, oy - 1, oy - 1, "polished_blackstone_bricks")
    b.disc(ox, oz, 8, oy - 1, oy - 1, "polished_andesite")
    b.disc(ox, oz, 6, oy - 1, oy - 1, "white_concrete")
    b.disc(ox, oz, 4, oy - 1, oy - 1, "polished_blackstone")
    b.disc(ox, oz, 2, oy - 1, oy - 1, "gold_block")
    b.disc(ox, oz, 6, oy - 5, oy - 3, "polished_blackstone")      # underside taper
    b.disc(ox, oz, 4, oy - 8, oy - 6, "polished_blackstone")
    b.disc(ox, oz, 2, oy - 11, oy - 9, "polished_blackstone")
    # glowing altar
    b.stage = "shell"
    b.fill(ox - 1, oy, oz - 1, ox + 1, oy, oz + 1, "gold_block")
    b.set(ox, oy + 1, oz, "sea_lantern")
    b.fill(ox, oy + 2, oz, ox, oy + 5, oz, "end_rod")
    for (dx, dz) in [(-2, 0), (2, 0), (0, -2), (0, 2)]:
        b.set(ox + dx, oy, oz + dz, "amethyst_block")
    # four pillars with lanterns and a thin ring beam (small sky temple)
    for (dx, dz) in [(-7, -7), (7, -7), (-7, 7), (7, 7)]:
        b.fill(ox + dx, oy, oz + dz, ox + dx, oy + 6, oz + dz, "polished_blackstone_bricks")
        b.set(ox + dx, oy + 7, oz + dz, "chiseled_polished_blackstone")
        b.set(ox + dx, oy + 8, oz + dz, "sea_lantern")
    # railing + invisible safety walls (players cannot fall or jump off)
    b.tube(ox, oz, 9, oy, oy, "iron_bars", 1, inner=None)
    b.tube(ox, oz, 9, oy + 1, oy + 4, "barrier", 1, inner=None)
    b.tube(ox, oz, 10, oy + 1, oy + 4, "barrier", 1, inner=None)
    b.disc(ox, oz, 10, oy + 5, oy + 5, "barrier")                  # ceiling
    # stars
    b.stage = "light"
    for _ in range(46):
        import math
        a = rng.uniform(0, 2 * math.pi); r = rng.uniform(13, 30); h = rng.randint(-6, 22)
        b.set(int(ox + r * math.cos(a)), oy + h, int(oz + r * math.sin(a)), rng.choice(["sea_lantern", "end_rod", "end_rod", "amethyst_block"]))
    return b


def spawn_point():
    ox, oy, oz = L.OBS
    return (ox + 0.5, oy, oz + 5.5)
