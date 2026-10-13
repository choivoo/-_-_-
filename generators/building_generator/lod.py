"""LOD2-LOD4 passes: relief, circular landmarks, arches, terrain, dead trees, beacons. Runs after the base zone builders."""
import os, sys, random, math
sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))
sys.path.insert(0, os.path.dirname(__file__))
import layout as L
import terrain
from builder import stairs

Y = L.Y0


def dead_tree(b, x, z, ybase, h, rng):
    b.fill(x, ybase, z, x, ybase + h, z, "spruce_log")
    for k in range(rng.randint(2, 3)):
        yy = ybase + h - rng.randint(1, 3)
        dx, dz = rng.choice([(1, 0), (-1, 0), (0, 1), (0, -1)])
        ax = "x" if dx else "z"
        b.fill(x + dx, yy, z + dz, x + dx * 2, yy, z + dz * 2, 'spruce_log ["pillar_axis"="%s"]' % ax)


def margin_terrain(b, cx, seed, top_block="coarse_dirt", rock="stone", boulder="mossy_cobblestone", trees=True, bands=((-39, -30), (30, 39))):
    """Hills/forest on the north and south margins (|z|>=30) of a zone, from an eroded FBM heightmap."""
    rng = random.Random(seed)
    b.stage = "ground"
    for (zlo, zhi) in bands:
        hm = terrain.heightmap(seed + zlo, 80, zhi - zlo + 1, scale=11.0, amp=6.5)
        # fade height toward the inner edge of the band so paths stay flat
        for xi in range(80):
            for zi in range(zhi - zlo + 1):
                zabs = zlo + zi
                edge = min(abs(zabs) - 30, 9) / 9.0 if abs(zabs) >= 30 else 0
                hm[xi][zi] = int(round(hm[xi][zi] * edge))
        for (x1, zz, x2, hgt) in terrain.column_runs(hm, cx - 40, zlo, Y, top_block, rock):
            if hgt >= 2:
                b.fill(x1, Y, zz, x2, Y + hgt - 2, zz, rock)
            b.fill(x1, Y + hgt - 1, zz, x2, Y + hgt - 1, zz, top_block)
        if trees:
            b.stage = "detail"
            for _ in range(7):
                xi = rng.randint(2, 77); zi = rng.randint(0, zhi - zlo)
                h0 = hm[xi][zi]
                if h0 >= 1:
                    dead_tree(b, cx - 40 + xi, zlo + zi, Y + h0, rng.randint(5, 8), rng)
            for _ in range(5):
                xi = rng.randint(2, 77); zi = rng.randint(0, zhi - zlo)
                h0 = hm[xi][zi]
                b.fill(cx - 40 + xi, Y + h0, zlo + zi, cx - 40 + xi + 1, Y + h0 + 1, zlo + zi, boulder)
            b.stage = "ground"


def mound(b, x, z, r, block):
    for i in range(r):
        b.disc(x, z, r - i, Y + i, Y + i, block)


# ---------------------------------------------------------------- zone 0
def lod0(b):
    cx = 0
    rng = random.Random(1100)
    b.stage = "interior"
    # circular medallion in the nave (grid circles)
    for r, blk in [(7, "deepslate_tiles"), (6, "polished_diorite"), (4, "deepslate_tiles"), (3, "chiseled_stone_bricks"), (1, "gilded_blackstone")]:
        b.disc(0, 0, r, Y - 1, Y - 1, blk)
    b.stage = "detail"
    # recessed wall panels + frieze (depth variation on both long walls)
    for zz in (-19, 19):
        for x in (-6, 0, 6):
            b.fill(x - 1, Y + 3, zz, x + 1, Y + 11, zz, "air")
            b.fill(x - 1, Y + 3, zz + (1 if zz < 0 else -1) * 0, x + 1, Y + 3, zz, "chiseled_stone_bricks")
            b.set(x, Y + 7, zz, "soul_lantern")
        for x in range(-14, 15, 2):
            b.set(x, Y + 15, zz, "chiseled_stone_bricks")
    # guardian statues beside the doorway
    for sz in (-6, 6):
        b.fill(18, Y, sz, 18, Y + 1, sz, "stone_bricks")
        b.fill(18, Y + 2, sz, 18, Y + 3, sz, "chiseled_stone_bricks")
        b.set(18, Y + 4, sz, "lantern")
        b.fill(17, Y, sz, 19, Y, sz, "polished_andesite")
    # fallen column + rubble (reads as a collapsed colonnade, not random holes)
    b.fill(-9, Y, 12, -5, Y, 12, 'polished_andesite ["pillar_axis"="x"]') if False else b.fill(-9, Y, 13, -5, Y, 13, "polished_andesite")
    b.fill(-9, Y + 1, 13, -8, Y + 1, 13, "cracked_stone_bricks")
    b.stage = "ground"
    margin_terrain(b, cx, 111, "mossy_stone_bricks", "stone", trees=True)
    b.register("temple_hall", "깨어남의 신전 본당", (-16, Y - 1, -20, 16, Y + 15, 20), 4, "ancient_temple",
               entrance=[16, Y, 0], interior=[[-7, Y, 0], [0, Y, 0], [8, Y, -15], [-11, Y + 2, 0]], landmark="중앙 제단/원형 문양", markers={"start": list(map(float, L.START))})
    b.register("training_yard", "기본 공격 훈련장", (19, Y - 1, -13, 38, Y + 5, 13), 2, "ancient_temple", entrance=[19, Y, 0], interior=[[28, Y, 0]])


# ---------------------------------------------------------------- zone 1
def lod1(b):
    cx = 100
    rng = random.Random(2100)
    # clock tower (landmark): 7x7 footprint, hollow, spiral stair, pyramid roof, clock faces
    tx1, tx2, tz1, tz2 = cx + 13, cx + 19, -13, -7
    ccx, ccz = (tx1 + tx2) // 2, (tz1 + tz2) // 2
    b.stage = "shell"
    b.fill(tx1 - 1, Y - 1, tz1 - 1, tx2 + 1, Y - 1, tz2 + 1, "cobblestone")
    b.fill(tx1, Y, tz1, tx2, Y + 22, tz2, "stone_bricks")
    for (px, pz) in [(tx1, tz1), (tx1, tz2), (tx2, tz1), (tx2, tz2)]:
        b.fill(px, Y, pz, px, Y + 22, pz, "spruce_log")
    b.fill(tx1 - 1, Y + 14, tz1 - 1, tx2 + 1, Y + 14, tz2 + 1, "spruce_planks")     # belfry floor ledge
    b.fill(tx1 - 1, Y + 23, tz1 - 1, tx2 + 1, Y + 23, tz2 + 1, "deepslate_bricks")
    b.hip_roof(tx1, tz1, tx2, tz2, Y + 24, "spruce_stairs", "spruce_planks")
    b.fill(ccx, Y + 28, ccz, ccx, Y + 31, ccz, "end_rod")
    b.stage = "interior"
    b.fill(tx1 + 1, Y, tz1 + 1, tx2 - 1, Y + 21, tz2 - 1, "air")
    b.fill(ccx, Y, tz2, ccx, Y + 1, tz2, "air")                                          # door (south side)
    b.fill(ccx, Y, tz2 - 0, ccx, Y + 1, tz2, "air")
    b.spiral(ccx, ccz, 1, Y, 20, "spruce_planks", "spruce_log")
    b.fill(tx1 + 1, Y + 21, tz1 + 1, tx2 - 1, Y + 21, tz2 - 1, "air")
    b.stage = "detail"
    b.fill(tx1 + 1, Y + 20, tz1 + 1, tx2 - 1, Y + 20, tz2 - 1, "spruce_planks")           # belfry floor (landing at the stair top)
    b.fill(ccx - 1, Y + 20, ccz - 1, ccx + 1, Y + 20, ccz + 1, "air") if False else None
    # four clock faces 5x5 (white disc + hands) on each side at y+16..y+20
    def face(fixed, a_center, axis, outward):
        for da in range(-2, 3):
            for dy in range(-2, 3):
                blk = "white_concrete" if (abs(da) + abs(dy) <= 3) else "stone_bricks"
                if axis == "x":
                    b.set(a_center + da, Y + 18 + dy, fixed, blk)
                else:
                    b.set(fixed, Y + 18 + dy, a_center + da, blk)
        for k in range(0, 3):
            if axis == "x":
                b.set(a_center, Y + 18 + k, fixed, "black_concrete"); b.set(a_center + k, Y + 18, fixed, "black_concrete")
            else:
                b.set(fixed, Y + 18 + k, a_center, "black_concrete"); b.set(fixed, Y + 18, a_center + k, "black_concrete")
        for d in (-2, 2):
            if axis == "x":
                b.set(a_center + d, Y + 18, fixed, "sea_lantern")
            else:
                b.set(fixed, Y + 18, a_center + d, "sea_lantern")
    face(tz1, ccx, "x", -1); face(tz2, ccx, "x", 1); face(tx1, ccz, "z", -1); face(tx2, ccz, "z", 1)
    b.fill(ccx, Y + 20, ccz, ccx, Y + 20, ccz, "spruce_log")
    b.stage = "light"
    b.set(ccx, Y + 1, tz2 + 1, "lantern")
    b.register("clock_tower", "시계탑", (tx1 - 1, Y - 1, tz1 - 1, tx2 + 1, Y + 31, tz2 + 1), 4, "ashen_timber",
               entrance=[ccx, Y, tz2 + 1], interior=[[ccx, Y, ccz + 1]], landmark="마을 시계탑", walk_notes="spiral to belfry")
    b.register("fountain", "분수대", (cx - 6, Y, -6, cx + 6, Y + 5, 6), 3, "ashen_timber", entrance=[cx, Y, 7], interior=[[cx + 6, Y, 0]], landmark="마을 분수대")
    b.stage = "ground"
    margin_terrain(b, cx, 211, "coarse_dirt", "stone", boulder="cobblestone")


# ---------------------------------------------------------------- zone 2
def lod2(b):
    cx = 200
    WK = Y - 13
    b.stage = "detail"
    # corridor arch ribs (structural look) and big ribs in the puzzle hall
    for x in (cx - 6, cx - 3, cx, cx + 2):
        b.arch(x, WK, 0, 2, 3, "mossy_stone_bricks", 1, "z")
    for x in (cx - 10,):
        b.arch(x, WK, 0, 5, 3, "chiseled_stone_bricks", 1, "z")
    # chamber D: giant sealed gate (landmark) on the north wall
    gx = cx + 23
    b.arch(gx, WK, -12, 4, 6, "chiseled_stone_bricks", 2, "x")
    b.fill(gx - 3, WK, -13, gx + 3, WK + 8, -13, "obsidian")
    b.fill(gx, WK, -13, gx, WK + 9, -13, "crying_obsidian")
    for k in range(3):
        b.set(gx - 5, WK + 2 + 2 * k, -12, "sea_lantern"); b.set(gx + 5, WK + 2 + 2 * k, -12, "sea_lantern")
    # structural collapse: a toppled pillar leaning on the south wall + debris fan
    b.fill(cx + 19, WK, 11, cx + 25, WK, 11, 'mossy_stone_bricks ["pillar_axis"="x"]')
    for i in range(5):
        b.set(cx + 20 + i, WK + 1 + i // 2, 11 + (i % 2) * 0, "cracked_stone_bricks")
    b.fill(cx + 26, WK, 9, cx + 28, WK, 10, "mossy_cobblestone")
    b.stage = "ground"
    margin_terrain(b, cx, 311, "mossy_stone_bricks", "stone", boulder="mossy_cobblestone", trees=True)
    # pond (water over the margin)
    b.stage = "detail"
    b.disc(cx + 22, 34, 5, Y - 2, Y - 1, "water")
    b.tube(cx + 22, 34, 6, Y - 1, Y - 1, "gravel", 1, inner=None)
    b.register("ruins_hall", "가라앉은 유적 지하 홀", (cx - 17, WK - 5, -7, cx + 31, WK + 8, 7), 4, "sunken_ruins",
               entrance=[cx - 30, Y, 0], interior=[[cx - 12, WK, 3], [cx + 24, WK, 0]], landmark="거대한 지하 문",
               markers={"levers": [list(l) for l in L.LEVERS], "gate": list(L.GATE_RUINS)})
    b.register("hidden_room", "숨겨진 방", (cx + 18, WK, 13, cx + 25, WK + 4, 19), 3, "sunken_ruins", entrance=[cx + 20, WK, 12], interior=[[cx + 22, WK, 15]], secret=True)


# ---------------------------------------------------------------- zone 3
def lod3(b):
    cx = 300
    rng = random.Random(4100)
    b.stage = "detail"
    # arch frames on both faces of the great gate
    b.arch(cx - 1, Y, 0, 4, 6, "chiseled_stone_bricks", 2, "z")
    b.arch(cx + 4, Y, 0, 4, 6, "chiseled_stone_bricks", 2, "z")
    # rubble mounds, palisades/barricades used as cover in the fights
    for (mx, mz, r) in [(cx - 12, -30, 3), (cx - 16, 31, 4), (cx - 30, -20, 3), (cx - 28, 24, 3), (cx + 28, -30, 3), (cx + 30, 30, 3)]:
        mound(b, mx, mz, r, rng.choice(["cobblestone", "mossy_cobblestone"]))
    for (bx, bz1, bz2) in [(cx - 24, -14, -6), (cx - 24, 6, 14), (cx - 12, -20, -12), (cx - 12, 12, 20)]:
        b.fill(bx, Y, bz1, bx, Y + 1, bz2, "oak_fence")
        for z in range(bz1, bz2 + 1, 4):
            b.fill(bx, Y, z, bx, Y + 2, z, "spruce_log")
    # court braziers
    for z in (-10, 10):
        b.fill(cx + 22, Y, z, cx + 22, Y + 1, z, "stone_bricks"); b.set(cx + 22, Y + 2, z, "magma") if False else b.set(cx + 22, Y + 2, z, "lantern")
    b.register("great_wall", "붕괴된 대성벽", (cx - 1, Y - 1, -39, cx + 4, Y + 19, 38), 4, "ruined_fortress", entrance=[cx - 2, Y, 0], interior=[[cx + 1, Y, 0]], landmark="부서진 대형 성문")
    b.register("watchtower_n", "북쪽 감시탑", (cx - 7, Y, -35, cx + 3, Y + 22, -25), 3, "ruined_fortress", entrance=[cx - 2, Y, -26], interior=[[cx - 2, Y + 1, -30]], walk_notes="spiral stair")
    b.register("watchtower_s", "남쪽 감시탑", (cx - 7, Y, 25, cx + 3, Y + 22, 35), 3, "ruined_fortress", entrance=[cx - 2, Y, 34], interior=[[cx - 2, Y + 1, 30]], walk_notes="spiral stair")
    b.register("battle_court", "성벽 전투 광장", (cx + 21, Y - 1, -21, cx + 37, Y + 9, 21), 2, "ruined_fortress", entrance=[cx + 21, Y, 0], interior=[[cx + 30, Y, 0]])


# ---------------------------------------------------------------- zone 4
def lod4(b):
    cx = 400
    hx = cx - 11     # hall centre x
    b.stage = "shell"
    # central spire: hollow tower on the hall roof, then a stepped cone (silhouette landmark)
    b.tube(hx, 0, 5, Y + 25, Y + 46, "polished_blackstone_bricks", 1, inner="air")
    for yy in (Y + 33, Y + 41):
        b.tube(hx, 0, 5, yy, yy, "amethyst_block", 1, inner=None)
    b.disc(hx, 0, 6, Y + 47, Y + 47, "deepslate_tiles")
    b.spire(hx, 0, Y + 48, 38, 5, "deepslate_tiles", step=3, cap="end_rod")
    b.set(hx, Y + 89, 0, "amethyst_block")
    # flank towers with real interiors (door + spiral stair + top deck) and domed roofs
    for tz, sgn in ((-24, -1), (24, 1)):
        tcx = cx - 24
        b.tube(tcx, tz, 4, Y, Y + 33, "polished_blackstone_bricks", 1, inner="air")
        b.tube(tcx, tz, 4, Y + 24, Y + 24, "amethyst_block", 1, inner=None)
        b.stage = "interior"
        b.fill(tcx + 4, Y, tz, tcx + 4, Y + 1, tz, "air")                                  # door facing +x
        b.fill(tcx + 3, Y, tz, tcx + 3, Y + 1, tz, "air")
        b.spiral(tcx, tz, 2, Y, 30, "polished_blackstone_bricks", "chiseled_polished_blackstone")
        b.stage = "detail"
        b.disc(tcx, tz, 3, Y + 29, Y + 29, "polished_blackstone")                          # top deck
        b.fill(tcx + 4, Y + 31, tz, tcx + 4, Y + 32, tz, "air")                            # balcony slit
        b.stage = "shell"
        b.dome(tcx, Y + 34, tz, 5, "deepslate_tiles", 1)
        b.set(tcx, Y + 40, tz, "end_rod")
    # facade gate arches (outer face)
    b.stage = "detail"
    b.arch(cx - 27, Y, 0, 4, 9, "chiseled_polished_blackstone", 2, "z")
    # purple accents / banners of light along the hall
    for x in range(cx - 20, cx - 2, 5):
        for z in (-12, 12):
            b.set(x, Y + 14, z, "amethyst_block"); b.set(x, Y + 15, z, "purple_concrete")
    b.stage = "ground"
    margin_terrain(b, cx, 511, "polished_blackstone_bricks", "blackstone", boulder="blackstone", trees=False)
    # beacon columns (quest guidance) -> gate of the citadel
    b.register("citadel_hall", "검은별의 성채 중앙 홀", (cx - 27, Y - 1, -21, cx - 1, Y + 90, 21), 4, "gothic_citadel",
               entrance=[cx - 30, Y, 0], interior=[[cx - 20, Y, 0], [cx - 12, Y, 0], [cx - 6, Y, 0]], landmark="중앙 첨탑", markers={"door": list(L.CIT_DOOR)})
    b.register("flank_tower_n", "북쪽 대탑", (cx - 28, Y, -28, cx - 20, Y + 40, -20), 3, "gothic_citadel", entrance=[cx - 19, Y, -24], interior=[[cx - 24, Y + 1, -20]])
    b.register("flank_tower_s", "남쪽 대탑", (cx - 28, Y, 20, cx - 20, Y + 40, 28), 3, "gothic_citadel", entrance=[cx - 19, Y, 24], interior=[[cx - 24, Y + 1, 20]])
    b.register("boss_arena", "보스 아레나", (cx + 1, Y - 1, -18, cx + 37, Y + 15, 18), 4, "gothic_citadel", entrance=[cx - 1, Y, 0], interior=[list(map(int, L.ARENA_C))], landmark="붕괴하는 아레나")


def beacons(b, zi):
    """End-rod light pillars marking quest destinations (visible from afar)."""
    spots = {0: [(17, 5), (24, -7)], 1: [(L.CX[1] - 34, 4)], 2: [(L.CX[2] - 10, 6), (L.CX[2] + 36, 4)], 3: [(L.CX[3] + 33, 6)], 4: [(L.CX[4] - 6, 6)]}
    b.stage = "light"
    for (x, z) in spots.get(zi, []):
        h = 6 if zi in (2,) and x < L.CX[2] + 20 else 12
        y0 = Y - 13 if (zi == 2 and x < L.CX[2] + 20) else Y
        b.fill(x, y0, z, x, y0 + h, z, "end_rod")
        b.set(x, y0 + h + 1, z, "sea_lantern")


PASSES = {0: [lod0], 1: [lod1], 2: [lod2], 3: [lod3], 4: [lod4]}
