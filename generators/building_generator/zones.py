"""Procedural zone builders (data driven where practical)."""
import random, os, sys
sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))
from building_generator.builder import Builder, stairs
import layout as L
from common import DATA, read_json

Y = L.Y0
TOP = Y + 40


def platform(b, cx, surface="stone_bricks"):
    b.stage = "ground"
    b.fill(cx - 40, Y - 20, -40, cx + 39, Y - 2, 39, "stone")
    b.fill(cx - 40, Y - 1, -40, cx + 39, Y - 1, 39, surface)
    for y in range(Y, TOP, 5):
        b.fill(cx - 40, y, -40, cx + 39, y + 4, 39, "air")


def road(b, x1, x2, z0=0, half=2, block="polished_andesite"):
    b.fill(x1, Y - 1, z0 - half, x2, Y - 1, z0 + half, block)
    b.fill(x1, Y - 1, z0 - half - 1, x2, Y - 1, z0 - half - 1, "stone_bricks")
    b.fill(x1, Y - 1, z0 + half + 1, x2, Y - 1, z0 + half + 1, "stone_bricks")


def link_bridge(b, cx_from):
    """Bridge across the 20-block gap east of a zone (x = cx+40 .. cx+59)."""
    b.stage = "detail"
    x1, x2 = cx_from + 40, cx_from + 59
    b.fill(x1, Y - 1, -2, x2, Y - 1, 2, "polished_andesite")
    b.fill(x1, Y - 1, -3, x2, Y - 1, -3, "stone_bricks")
    b.fill(x1, Y - 1, 3, x2, Y - 1, 3, "stone_bricks")
    b.fill(x1, Y, -3, x2, Y, -3, "iron_bars")
    b.fill(x1, Y, 3, x2, Y, 3, "iron_bars")
    for x in range(x1 + 2, x2, 6):
        b.fill(x, Y - 12, -3, x, Y - 2, -3, "stone_bricks")
        b.fill(x, Y - 12, 3, x, Y - 2, 3, "stone_bricks")
        b.fill(x, Y + 1, -3, x, Y + 2, -3, "stone_bricks")
        b.fill(x, Y + 1, 3, x, Y + 2, 3, "stone_bricks")
        b.set(x, Y + 3, -3, "lantern")
        b.set(x, Y + 3, 3, "lantern")


def weathering(b, rng, cx, y, src="stone_bricks", n=40):
    b.stage = "detail"
    b.patches(rng, cx - 38, -38, cx + 37, 37, y, src,
              ["mossy_stone_bricks", "cracked_stone_bricks", "stone", "gravel"], n)


# --------------------------------------------------------------------------
def zone0(b):
    cx = 0
    rng = random.Random(1000)
    platform(b, cx)
    b.stage = "ground"
    # courtyard flagstones + approach road
    b.fill(15, Y - 1, -15, 38, Y - 1, 15, "polished_andesite")
    b.fill(17, Y - 1, -13, 36, Y - 1, 13, "stone_bricks")
    b.fill(19, Y - 1, -2, 38, Y - 1, 2, "deepslate_tiles")
    road(b, 39, 40, 0, 2)
    weathering(b, rng, cx, Y - 1, n=60)
    # --- temple hall shell (solid first, carved in interior stage)
    b.stage = "shell"
    b.fill(-15, Y, -19, 15, Y + 15, 19, "stone_bricks")
    b.fill(-16, Y - 1, -20, 16, Y - 1, 20, "polished_andesite")
    for z in range(-18, 19, 6):       # buttresses with chiseled caps
        for sx in (-16, 16):
            if sx == 16 and abs(z) < 5:
                continue
            b.fill(sx, Y + 1, z, sx, Y + 13, z, "stone_bricks")
            b.set(sx, Y + 14, z, "chiseled_stone_bricks")
    for x in range(-12, 13, 6):
        for sz in (-20, 20):
            b.fill(x, Y + 1, sz, x, Y + 13, sz, "stone_bricks")
            b.set(x, Y + 14, sz, "chiseled_stone_bricks")
    b.fill(-15, Y + 15, -19, 15, Y + 15, 19, "deepslate_bricks")    # roof rim
    # --- interior
    b.stage = "interior"
    b.fill(-13, Y, -17, 13, Y + 12, 17, "air")
    b.fill(-13, Y - 1, -17, 13, Y - 1, 17, "polished_diorite")
    b.fill(-13, Y - 1, -2, 13, Y - 1, 2, "deepslate_tiles")
    b.fill(-13, Y - 1, -3, 13, Y - 1, -3, "chiseled_stone_bricks")
    b.fill(-13, Y - 1, 3, 13, Y - 1, 3, "chiseled_stone_bricks")
    # doorway east (open arch)
    b.fill(13, Y, -2, 15, Y + 6, 2, "air")
    b.fill(13, Y + 7, -1, 15, Y + 7, 1, "air")
    b.fill(13, Y, -3, 15, Y + 8, -3, "chiseled_stone_bricks")
    b.fill(13, Y, 3, 15, Y + 8, 3, "chiseled_stone_bricks")
    b.fill(13, Y + 8, -2, 15, Y + 8, 2, "chiseled_stone_bricks")
    # side windows (open slits)
    for x in range(-9, 10, 6):
        b.fill(x, Y + 4, -19, x, Y + 9, -19, "air")
        b.fill(x, Y + 4, 19, x, Y + 9, 19, "air")
    # inner pillars
    for x in range(-10, 11, 5):
        for z in (-9, 9):
            b.pillar(x, z, Y, Y + 12, "polished_andesite", "chiseled_stone_bricks", "chiseled_deepslate")
    # altar dais (west end)
    b.fill(-13, Y, -5, -10, Y, 5, "stone_bricks")
    b.fill(-13, Y + 1, -3, -11, Y + 1, 3, "stone_bricks")
    b.fill(-13, Y + 2, -1, -12, Y + 2, 1, "gilded_blackstone")
    b.set(-9, Y, 0, stairs("stone_brick_stairs", 1))
    for z in (-1, 1):
        b.set(-9, Y, z, stairs("stone_brick_stairs", 1))
    # jump hurdle line (movement tutorial)
    b.fill(-4, Y, -17, -4, Y, 17, "stone_bricks")
    # collapsed ceiling: holes + rubble
    for (hx1, hz1, hx2, hz2) in [(-10, -4, -6, 4), (2, -14, 7, -9), (4, 8, 9, 14), (-3, 4, 0, 7)]:
        b.fill(hx1, Y + 13, hz1, hx2, Y + 15, hz2, "air")
        b.fill(hx1, Y, hz1, hx2, Y, hz2, "air") if False else None
        for _ in range(7):
            rx = rng.randint(hx1 - 1, hx2 + 1); rz = rng.randint(hz1 - 1, hz2 + 1)
            if -12 <= rx <= 12 and -16 <= rz <= 16 and rx != -4:
                b.set(rx, Y, rz, rng.choice(["cobblestone", "stone_bricks", "mossy_cobblestone", "gravel"]))
    # sword alcove (weapon rack) north wall
    b.fill(6, Y, -17, 10, Y + 4, -17, "air")
    b.fill(6, Y, -18, 10, Y + 4, -18, "air")
    b.fill(5, Y, -18, 5, Y + 5, -17, "chiseled_stone_bricks")
    b.fill(11, Y, -18, 11, Y + 5, -17, "chiseled_stone_bricks")
    b.fill(6, Y + 5, -18, 10, Y + 5, -17, "chiseled_stone_bricks")
    b.set(8, Y, -17, "smithing_table")
    b.set(8, Y - 1, -17, "sea_lantern")
    # detail: steles & moss
    b.stage = "detail"
    for sx, sz in [(-6, -14), (-6, 14), (10, 14)]:
        b.fill(sx, Y, sz, sx, Y + 2, sz, "stone_bricks")
        b.set(sx, Y + 3, sz, "chiseled_stone_bricks")
        b.set(sx, Y + 4, sz, "soul_lantern")
    b.patches(rng, -12, -16, 12, 16, Y - 1, "polished_diorite", ["mossy_stone_bricks", "cracked_stone_bricks", "polished_andesite"], 40)
    for _ in range(10):
        b.set(rng.randint(-12, 12), Y + 12, rng.choice([-16, 16]), "web")
    # yard: training area
    b.fill(19, Y, -13, 37, Y, -13, "stone_bricks")
    b.fill(19, Y, 13, 37, Y, 13, "stone_bricks")
    b.fill(37, Y, -13, 37, Y, -4, "stone_bricks")
    b.fill(37, Y, 4, 37, Y, 13, "stone_bricks")
    for x, z in [(19, -13), (19, 13), (37, -13), (37, 13), (37, -4), (37, 4)]:
        b.fill(x, Y + 1, z, x, Y + 3, z, "stone_bricks")
        b.set(x, Y + 4, z, "lantern")
    for z in (-8, 8):
        b.set(28, Y, z, "hay_block")
        b.set(28, Y + 1, z, "hay_block")
    b.set(30, Y, -12, "fletching_table")
    b.set(30, Y, 12, "fletching_table")
    b.stage = "light"
    for x in range(-10, 11, 10):
        b.cmd("setblock %d %d -16 lantern" % (x, Y + 9))
        b.cmd("setblock %d %d 16 lantern" % (x, Y + 9))
    for x in (-10, 10):
        for z in (-9, 9):
            b.cmd("setblock %d %d %d lantern" % (x, Y + 11 if False else Y + 1, z + (1 if z > 0 else -1)))
    b.cmd("setblock -8 %d 0 soul_lantern" % (Y + 3))
    link_bridge(b, cx)


# --------------------------------------------------------------------------
def house(b, spec, pal, rng):
    x1, z1, w, l = spec["x"], spec["z"], spec["w"], spec["l"]
    x2, z2 = x1 + w - 1, z1 + l - 1
    fl = spec.get("floors", 1)
    H = 5 * fl
    b.stage = "shell"
    b.fill(x1 - 1, Y - 1, z1 - 1, x2 + 1, Y - 1, z2 + 1, pal["found"])
    b.fill(x1, Y, z1, x2, Y + H - 1, z2, pal["wall"])
    # timber frame
    for (px, pz) in [(x1, z1), (x1, z2), (x2, z1), (x2, z2)]:
        b.fill(px, Y, pz, px, Y + H - 1, pz, pal["frame"])
    for f in range(fl + 1):
        yy = Y + 5 * f - (1 if f == fl else 0) if f else Y
        if f == 0:
            continue
        b.fill(x1, yy, z1, x2, yy, z1, pal["frame"] + ' ["pillar_axis"="x"]')
        b.fill(x1, yy, z2, x2, yy, z2, pal["frame"] + ' ["pillar_axis"="x"]')
        b.fill(x1, yy, z1, x1, yy, z2, pal["frame"] + ' ["pillar_axis"="z"]')
        b.fill(x2, yy, z1, x2, yy, z2, pal["frame"] + ' ["pillar_axis"="z"]')
    # roof
    ruined = spec.get("ruined", False)
    roof = spec.get("roof", "gable")
    if roof == "hip":
        b.hip_roof(x1, z1, x2, z2, Y + H, pal["roof"], pal["ridge"])
    elif roof == "steep":
        b.steep_gable(x1, z1, x2, z2, Y + H, pal["roof"], pal["ridge"], pal["gable"])
    else:
        b.gable_roof(x1, z1, x2, z2, Y + H, pal["roof"], pal["ridge"], pal["gable"])
    b.register(spec["id"], spec["name"], (x1, Y, z1, x2, Y + H + 6, z2), 3 if spec.get("secret") or fl > 1 else 2, "ashen_timber",
               entrance=[(x1 + x2) // 2, Y, (z2 + 1) if spec["door"] == "s" else (z1 - 1)], interior=[[(x1 + x2) // 2, Y, (z1 + z2) // 2]], floors=fl, roof=roof)
    b.stage = "interior"
    b.fill(x1 + 1, Y, z1 + 1, x2 - 1, Y + H - 1, z2 - 1, "air")
    b.fill(x1 + 1, Y - 1, z1 + 1, x2 - 1, Y - 1, z2 - 1, pal["floor"])
    for f in range(1, fl):
        ys = Y + 5 * f - 1
        b.fill(x1 + 1, ys, z1 + 1, x2 - 1, ys, z2 - 1, pal["floor"])
        for i in range(4):
            if f % 2 == 1:      # west wall, rising toward +z
                b.set(x1 + 1, ys - 4 + i, z1 + 1 + i, stairs("oak_stairs", 2))
            else:               # east wall, rising toward -z
                b.set(x2 - 1, ys - 4 + i, z2 - 1 - i, stairs("oak_stairs", 3))
        if f % 2 == 1:
            b.fill(x1 + 1, ys, z1 + 1, x1 + 1, ys, z1 + 4, "air")
        else:
            b.fill(x2 - 1, ys, z2 - 4, x2 - 1, ys, z2 - 1, "air")
    # door + windows
    dx = (x1 + x2) // 2
    dz = (z1 + z2) // 2
    side = spec["door"]
    if side == "s":
        b.fill(dx, Y, z2, dx, Y + 1, z2, "air")
    elif side == "n":
        b.fill(dx, Y, z1, dx, Y + 1, z1, "air")
    elif side == "e":
        b.fill(x2, Y, dz, x2, Y + 1, dz, "air")
    else:
        b.fill(x1, Y, dz, x1, Y + 1, dz, "air")
    for f in range(fl):
        yb = Y + 2 + 5 * f
        for x in range(x1 + 2, x2 - 1, 3):
            if abs(x - dx) > 1 or f > 0:
                b.fill(x, yb, z1, x, yb + 1, z1, pal["glass"])
                b.fill(x, yb, z2, x, yb + 1, z2, pal["glass"])
        for z in range(z1 + 2, z2 - 1, 3):
            b.fill(x1, yb, z, x1, yb + 1, z, pal["glass"])
            b.fill(x2, yb, z, x2, yb + 1, z, pal["glass"])
    # furnishings
    b.stage = "detail"
    spots = [(x1 + 1, z1 + 1), (x2 - 1, z1 + 1), (x1 + 1, z2 - 1), (x2 - 1, z2 - 1), (x2 - 1, dz), (x1 + 1, dz)]
    for i, it in enumerate(spec.get("interior", [])):
        sx, sz = spots[(i + 1) % len(spots)]
        b.set(sx, Y, sz, it)
    b.stage = "light"
    b.set(dx, Y + 3 + (0 if fl == 1 else 0), dz, 'lantern ["hanging"=true]')
    b.set(dx, Y + 4, dz, "spruce_planks") if False else None
    if fl == 1:
        b.set(dx, Y + 4, dz, pal["wall"])
        b.set(dx, Y + 3, dz, 'lantern ["hanging"=true]')
    b.set((x1 + x2) // 2, Y + 1, z2 + 1 if side == "s" else z1 - 1, "lantern")
    if ruined:
        b.stage = "detail"
        # blow a hole in the roof + one wall, scatter rubble
        b.fill(x1 + 2, Y + H, z1 + 2, x1 + 6, Y + H + 3, z2 - 2, "air")
        b.fill(x2, Y + 1, z1 + 2, x2, Y + 4, z1 + 4, "air")
        for _ in range(14):
            b.set(rng.randint(x1 + 1, x2 - 1), Y, rng.randint(z1 + 1, z2 - 1), rng.choice(["cobblestone", "spruce_planks", "web", "gravel"]))


def zone1(b):
    cx = 100
    rng = random.Random(2000)
    spec = read_json(os.path.join(DATA, "buildings", "village.json"))
    pal = spec["palette"]
    platform(b, cx, "coarse_dirt")
    b.stage = "ground"
    # gravel roads: E-W and N-S
    b.fill(cx - 40, Y - 1, -2, cx + 39, Y - 1, 2, "gravel")
    b.fill(cx - 2, Y - 1, -40, cx + 2, Y - 1, 39, "gravel")
    # plaza
    b.fill(cx - 9, Y - 1, -9, cx + 9, Y - 1, 9, "cobblestone")
    b.fill(cx - 8, Y - 1, -8, cx + 8, Y - 1, 8, "stone_bricks")
    b.fill(cx - 6, Y - 1, -6, cx + 6, Y - 1, 6, "polished_andesite")
    b.patches(rng, cx - 38, -38, cx + 37, 37, Y - 1, "coarse_dirt", ["podzol", "dirt", "gravel", "stone"], 70, 3)
    # fountain (circular basin, r=5) + centre column and four lamp posts
    b.stage = "shell"
    b.disc(cx, 0, 5, Y, Y + 1, "stone_bricks")
    b.disc(cx, 0, 4, Y + 1, Y + 1, "water")
    b.disc(cx, 0, 4, Y, Y, "stone")
    b.fill(cx, Y, 0, cx, Y + 4, 0, "chiseled_stone_bricks")
    b.set(cx, Y + 5, 0, "sea_lantern")
    for ox, oz in [(-6, 0), (6, 0), (0, -6), (0, 6)]:
        b.fill(cx + ox, Y, oz, cx + ox, Y + 3, oz, "stone_bricks")
        b.set(cx + ox, Y + 4, oz, "lantern")
    for bd in spec["buildings"]:
        house(b, bd, pal, rng)
        if bd.get("shop"):
            bx, bz = bd["x"], bd["z"] + bd["l"]
            b.stage = "detail"
            b.fill(bd["x"] + 2, Y + 3, bz, bd["x"] + bd["w"] - 3, Y + 3, bz + 1, "red_wool")   # awning
            b.fill(bd["x"] + 2, Y, bz + 1, bd["x"] + bd["w"] - 3, Y, bz + 1, "barrel")
    # alley lamp posts and fences
    b.stage = "light"
    for x in range(cx - 36, cx + 37, 9):
        for z in (-5, 5):
            b.fill(x, Y, z, x, Y + 2, z, "oak_fence")
            b.set(x, Y + 3, z, "lantern")
    # secret chest behind bookshelf wall in ruined house
    b.stage = "func"
    b.fill(109, Y, 26, 111, Y + 2, 28, "spruce_planks")
    b.fill(110, Y, 26, 110, Y + 1, 27, "air")
    b.fill(108, Y, 25, 112, Y + 2, 25, "bookshelf")
    b.fill(110, Y, 25, 110, Y + 1, 25, "air")
    b.set(110, Y, 27, "chest")
    b.cmd("replaceitem block 110 %d 27 slot.container 0 golden_apple 3" % Y)
    b.cmd("replaceitem block 110 %d 27 slot.container 1 arrow 16" % Y)
    # NPCs
    b.stage = "entity"
    b.cmd("kill @e[tag=bce_npc,x=%d,y=%d,z=-40,dx=80,dy=40,dz=80]" % (cx - 40, Y - 5))
    b.cmd('summon villager %d %d 6 0 0 minecraft:entity_spawned "§e상인 마렌"' % (cx + 3, Y))
    b.cmd('summon villager %d %d -6 0 0 minecraft:entity_spawned "§e늙은 파수꾼"' % (cx - 3, Y))
    b.cmd('execute positioned %d %d 0 run tag @e[type=villager,r=20,tag=!bce_npc] add bce_npc' % (cx, Y))
    b.cmd("effect @e[tag=bce_npc,x=%d,y=%d,z=-40,dx=80,dy=40,dz=80] slowness 100000 4 true" % (cx - 40, Y - 5))
    link_bridge(b, cx)


# --------------------------------------------------------------------------
def zone2(b):
    cx = 200
    rng = random.Random(3000)
    platform(b, cx, "mossy_stone_bricks")
    b.stage = "ground"
    b.fill(cx - 39, Y - 19, -39, cx + 38, Y - 2, 38, "stone")
    road(b, cx - 40, cx - 20, 0, 2)
    road(b, cx + 20, cx + 39, 0, 2)
    weathering(b, rng, cx, Y - 1, "mossy_stone_bricks", 70)
    # surface shrine over the entrance + broken columns
    b.stage = "shell"
    sx1, sx2 = cx - 36, cx - 26
    b.shell(sx1, Y, -6, sx2, Y + 7, 6, "mossy_stone_bricks", 1)
    b.fill(sx1, Y + 8, -6, sx2, Y + 8, 6, "stone_bricks")
    b.fill(sx2, Y, -2, sx2, Y + 3, 2, "air")
    b.fill(sx1, Y, -2, sx1, Y + 3, 2, "air")
    b.fill(sx1 + 3, Y + 8, -3, sx1 + 6, Y + 8, 3, "air")        # collapsed roof
    for x in (cx - 12, cx + 8, cx + 22, cx + 30):
        for z in (-14, 14, -26, 26):
            h = rng.randint(2, 7)
            b.pillar(x, z, Y, Y + h, "mossy_stone_bricks", "chiseled_stone_bricks", None)
    # collapsed-masonry cliff across the full width of the platform: the only way east is the underground route
    b.stage = "shell"
    b.fill(cx - 3, Y, -40, cx + 3, Y + 22, 39, "mossy_stone_bricks")
    for k in range(18):
        yy = Y + 3 + k
        b.fill(cx - 3, yy, -40, cx - 3, yy, 39, "cracked_stone_bricks", "replace mossy_stone_bricks") if k % 3 == 0 else None
    b.fill(cx - 4, Y, -40, cx - 4, Y + 5, 39, "mossy_cobblestone")
    b.fill(cx + 4, Y, -40, cx + 4, Y + 4, 39, "mossy_cobblestone")
    # --- underground complex
    CH, WK = Y - 14, Y - 13       # chamber floor block y=86, walking y=87
    b.stage = "interior"
    # entry stairs descending toward +x
    for i in range(14):
        x = cx - 30 + i
        b.fill(x, Y - i, -1, x, Y - i + 2, 1, "air")
        b.fill(x, Y - 1 - i, -1, x, Y - 1 - i, 1, stairs("stone_brick_stairs", 1))
    # hall A (dry landing + puzzle)
    b.fill(cx - 16, WK, -6, cx - 8, WK + 7, 6, "air")
    b.fill(cx - 16, CH, -6, cx - 8, CH, 6, "stone_bricks")
    # corridor B flooded
    b.fill(cx - 8, WK, -2, cx + 3, WK + 6, 2, "air")
    b.fill(cx - 8, CH, -2, cx + 3, CH, 2, "mossy_stone_bricks")
    b.fill(cx - 8, WK, -2, cx + 3, WK + 1, 2, "water")
    # gate bars
    gx1, gy1, gz1, gx2, gy2, gz2 = L.GATE_RUINS
    b.fill(gx1, WK, gz1, gx2, WK + 6, gz2, "iron_bars")
    # chamber C ledge + pit
    b.fill(cx + 6, WK, -6, cx + 30, WK + 8, 6, "air")
    b.fill(cx + 6, CH, -6, cx + 8, CH, 6, "stone_bricks")
    b.fill(cx + 9, CH - 5, -6, cx + 16, CH, 6, "water")
    b.fill(cx + 17, CH, -6, cx + 30, CH, 6, "stone_bricks")
    b.fill(cx + 17, WK, -12, cx + 30, WK + 8, 12, "air")
    b.fill(cx + 17, CH, -12, cx + 30, CH, 12, "mossy_stone_bricks")
    # exit stairs ascending toward +x
    for i in range(14):
        x = cx + 26 + i
        b.fill(x, WK + i, -1, x, WK + i + 3, 1, "air")
        b.fill(x, CH + i, -1, x, CH + i, 1, stairs("stone_brick_stairs", 0))
    # hidden room E
    b.fill(cx + 18, WK, 13, cx + 25, WK + 4, 19, "air")
    b.fill(cx + 18, CH, 13, cx + 25, CH, 19, "polished_andesite")
    b.fill(cx + 20, WK, 12, cx + 20, WK + 2, 12, "cracked_stone_bricks")   # sealed entrance (opened by puzzle)
    b.stage = "detail"
    # columns in hall A and C, hint wall
    for z in (-5, 5):
        b.pillar(cx - 14, z, WK, WK + 7, "mossy_stone_bricks", "chiseled_stone_bricks", "chiseled_stone_bricks")
    for z, on in zip((-5, 0, 5), L.LEVER_SOLUTION):
        b.set(cx - 16, WK + 3, z, "sea_lantern" if on else "black_concrete")
        b.set(cx - 16, WK + 2, z, "chiseled_stone_bricks")
    for (lx, ly, lz) in L.LEVERS:
        b.set(lx, ly, lz, 'lever ["lever_direction"="up_north_south","open_bit"=false]')
        b.set(lx, ly - 1, lz, "stone_bricks")
    # bridge stub (extends when solved) and decorative arch
    for z in (-3, 3):
        b.fill(cx + 9, WK, z, cx + 16, WK, z, "air")
    for i in range(3):
        b.pillar(cx + 12, -5 + i * 5, WK, WK + 6, "mossy_stone_bricks", None, "chiseled_stone_bricks")
    # traps: pressure-plate decor (scripted damage in world/traps)
    for x in range(cx - 7, cx + 3, 3):
        b.set(x, CH, 0, "magma")
    b.stage = "light"
    for x in range(cx - 15, cx + 29, 5):
        z = 5 if x < cx else 5
        b.cmd("setblock %d %d %d lantern" % (x, WK + 3, 5 if x < cx + 8 else 10))
    b.cmd("setblock %d %d 0 sea_lantern" % (cx - 12, WK + 7))
    b.cmd("setblock %d %d 0 sea_lantern" % (cx + 24, WK + 8))
    b.stage = "func"
    b.set(cx + 22, WK, 16, "chest")
    b.cmd("replaceitem block %d %d 16 slot.container 0 diamond 2" % (cx + 22, WK))
    b.cmd("replaceitem block %d %d 16 slot.container 1 golden_apple 2" % (cx + 22, WK))
    link_bridge(b, cx)


# --------------------------------------------------------------------------
def zone3(b):
    cx = 300
    rng = random.Random(4000)
    platform(b, cx, "stone_bricks")
    b.stage = "ground"
    road(b, cx - 40, cx - 2, 0, 2, "gravel")
    weathering(b, rng, cx, Y - 1, n=60)
    # trench (collapsed ground) between outer yard and inner court, narrow bridge
    b.fill(cx + 5, Y - 1, -39, cx + 20, Y - 1, 38, "air")
    b.fill(cx + 5, Y - 10, -39, cx + 20, Y - 10, 38, "stone")
    b.fill(cx + 5, Y - 9, -39, cx + 20, Y - 2, 38, "air")
    b.fill(cx + 5, Y - 1, -1, cx + 20, Y - 1, 1, "stone_bricks")
    for x in range(cx + 6, cx + 20, 4):
        b.set(x, Y - 1, 0, "cracked_stone_bricks")
    # recovery stairs out of the trench
    for i in range(9):
        b.fill(cx + 6 + i, Y - 10 + i, 37, cx + 6 + i, Y - 10 + i, 38, stairs("stone_brick_stairs", 0))
    # broken wall line x = cx-1 .. cx+4 with gate
    b.stage = "shell"
    b.fill(cx - 1, Y, -39, cx + 4, Y + 17, 38, "stone_bricks")
    b.fill(cx - 1, Y, -4, cx + 4, Y + 9, 4, "air")
    b.fill(cx - 1, Y + 10, -5, cx + 4, Y + 10, 5, "chiseled_stone_bricks")
    for z in range(-39, 39):
        if rng.random() < 0.28 and abs(z) > 8:       # broken sections
            h = rng.randint(3, 9)
            b.fill(cx - 1, Y + 18 - h, z, cx + 4, Y + 17, z, "air")
    b.fill(cx + 4, Y + 13, -39, cx + 4, Y + 13, 38, "stone_bricks") if False else None
    b.battlement(cx - 1, -39, cx - 1, 38, Y + 18, "stone_bricks")
    # wall-walk stairs (collapsed) north side
    for i in range(10):
        b.set(cx - 5, Y + i, -34 + i if i < 7 else -28, stairs("stone_brick_stairs", 2) if i < 7 else "air")
    # watchtowers
    for tz in (-30, 30):
        tx1, tx2, tz1, tz2 = cx - 6, cx + 2, tz - 4, tz + 4
        b.fill(tx1, Y, tz1, tx2, Y + 22, tz2, "stone_bricks")
        b.fill(tx1 + 1, Y, tz1 + 1, tx2 - 1, Y + 21, tz2 - 1, "air")
        b.fill(tx1 - 1, Y + 20, tz1 - 1, tx2 + 1, Y + 20, tz2 + 1, "deepslate_bricks")
        b.fill(tx1 + 1, Y + 20, tz1 + 1, tx2 - 1, Y + 20, tz2 - 1, "air") if False else None
        b.fill(tx1 + 1, Y + 20, tz1 + 1, tx2 - 1, Y + 20, tz2 - 1, "spruce_planks")
        for x in range(tx1 - 1, tx2 + 2, 2):
            b.set(x, Y + 21, tz1 - 1, "deepslate_bricks"); b.set(x, Y + 21, tz2 + 1, "deepslate_bricks")
        b.fill(tx1 + 3, Y + 4, tz1, tx1 + 3, Y + 6, tz1, "air")       # arrow slits
        b.fill(tx1 + 3, Y + 12, tz2, tx1 + 3, Y + 14, tz2, "air")
        b.fill(tx1 + 3, Y, tz1, tx1 + 5, Y + 1, tz1, "air")           # door (south/north)
        # interior ladder-less spiral
        b.spiral(cx - 2, tz, 2, Y, 19, "stone_bricks", "polished_andesite")
        b.set(cx - 2, Y + 19, tz, "lantern")
    # inner court: floor, pillars, rubble
    b.stage = "interior"
    b.fill(cx + 21, Y - 1, -20, cx + 37, Y - 1, 20, "polished_andesite")
    b.fill(cx + 23, Y - 1, -18, cx + 35, Y - 1, 18, "stone_bricks")
    b.fill(cx + 21, Y, -21, cx + 37, Y + 5, -21, "stone_bricks")
    b.fill(cx + 21, Y, 21, cx + 37, Y + 5, 21, "stone_bricks")
    for x in range(cx + 24, cx + 37, 4):
        for z in (-14, 14):
            b.pillar(x, z, Y, Y + 8, "stone_bricks", "chiseled_stone_bricks", "chiseled_stone_bricks")
    # gate to the citadel (closed, opened by script)
    gx1, gy1, gz1, gx2, gy2, gz2 = L.WALL_GATE_FILL
    b.fill(cx + 36, Y, -6, cx + 39, Y + 10, 6, "stone_bricks")
    b.fill(cx + 36, Y, -3, cx + 39, Y + 6, 3, "air")
    b.fill(gx1, gy1, gz1, gx2, gy2, gz2, "iron_bars")
    b.fill(cx + 36, Y + 7, -4, cx + 39, Y + 7, 4, "chiseled_stone_bricks")
    b.stage = "detail"
    for _ in range(40):
        x = rng.randint(cx - 38, cx - 3); z = rng.randint(-37, 37)
        if abs(z) > 3:
            b.set(x, Y, z, rng.choice(["cobblestone", "mossy_cobblestone", "stone_bricks", "gravel"]))
    b.stage = "light"
    for z in range(-36, 37, 12):
        b.cmd("setblock %d %d %d lantern" % (cx - 3, Y + 3, z))
    for x in range(cx + 24, cx + 37, 4):
        b.cmd("setblock %d %d -20 lantern" % (x, Y + 5)); b.cmd("setblock %d %d 20 lantern" % (x, Y + 5))
    link_bridge(b, cx)


# --------------------------------------------------------------------------
def zone4(b):
    cx = 400
    rng = random.Random(5000)
    platform(b, cx, "polished_blackstone_bricks")
    b.stage = "ground"
    b.fill(cx - 39, Y - 1, -4, cx - 27, Y - 1, 4, "polished_blackstone")
    b.fill(cx - 39, Y - 1, -2, cx - 27, Y - 1, 2, "gilded_blackstone") if False else None
    b.patches(rng, cx - 38, -38, cx + 37, 37, Y - 1, "polished_blackstone_bricks", ["cracked_polished_blackstone_bricks", "blackstone", "deepslate_bricks"], 70, 3)
    road(b, cx - 40, cx - 28, 0, 2, "polished_blackstone")
    # forecourt
    b.stage = "shell"
    # facade wall (x = cx-26 .. cx-22), 26 high, big gate
    b.fill(cx - 26, Y, -20, cx - 22, Y + 26, 20, "polished_blackstone_bricks")
    b.fill(cx - 26, Y, -4, cx - 22, Y + 12, 4, "air")
    b.fill(cx - 26, Y + 13, -5, cx - 22, Y + 13, 5, "chiseled_polished_blackstone")
    for z in (-12, -8, 8, 12):
        b.fill(cx - 27, Y, z, cx - 27, Y + 22, z, "blackstone")
        b.set(cx - 27, Y + 23, z, "chiseled_polished_blackstone")
        b.set(cx - 28, Y + 5, z, "soul_lantern")
    for z in range(-20, 21, 2):
        b.set(cx - 26, Y + 27, z, "polished_blackstone_bricks")
    # central hall (x cx-21 .. cx-1)
    b.fill(cx - 21, Y, -14, cx - 1, Y + 24, 14, "polished_blackstone_bricks")
    b.stage = "interior"
    b.fill(cx - 21, Y, -4, cx - 22, Y + 12, 4, "air")
    b.fill(cx - 21, Y, -13, cx - 2, Y + 22, 13, "air")
    b.fill(cx - 21, Y - 1, -13, cx - 2, Y - 1, 13, "polished_blackstone")
    b.fill(cx - 21, Y - 1, -2, cx - 2, Y - 1, 2, "gilded_blackstone")
    for x in range(cx - 18, cx - 3, 5):
        for z in (-9, 9):
            b.pillar(x, z, Y, Y + 21, "polished_blackstone_bricks", "chiseled_polished_blackstone", "chiseled_polished_blackstone")
            b.fill(x - 1, Y + 21, z - 1, x + 1, Y + 21, z + 1, "polished_blackstone_bricks")
    # balcony level, grand stair (12 steps along the north side) + spiral stair (NE corner of hall)
    b.fill(cx - 21, Y + 12, 10, cx - 2, Y + 12, 13, "polished_blackstone_bricks")
    for i in range(12):
        b.fill(cx - 19 + i, Y + i, 11, cx - 19 + i, Y + i, 12, stairs("polished_blackstone_brick_stairs", 0))
        b.fill(cx - 19 + i, Y + i + 1, 11, cx - 19 + i, Y + i + 3, 12, "air") if i < 11 else None
    b.fill(cx - 19, Y + 12, 11, cx - 8, Y + 12, 12, "air")
    b.spiral(cx - 4, 10, 2, Y, 12, "polished_blackstone_bricks", "chiseled_polished_blackstone")
    # sealed door to arena: hall wall (cx-1) + gap (cx) + arena wall (cx+1); opened by world/open_cit_door
    dx1, dy1, dz1, dx2, dy2, dz2 = L.CIT_DOOR
    b.fill(dx1, dy1, dz1, dx2, dy2, dz2, "obsidian")
    b.fill(cx - 1, Y + 9, -4, cx + 1, Y + 9, 4, "chiseled_polished_blackstone")
    b.set(cx - 2, Y + 5, 0, "crying_obsidian")
    b.set(cx - 2, Y + 6, 0, "crying_obsidian")
    # roof of hall with skylight
    b.fill(cx - 21, Y + 23, -14, cx - 1, Y + 24, 14, "deepslate_tiles")
    b.fill(cx - 14, Y + 23, -3, cx - 8, Y + 24, 3, "air")
    # arena: open-air, walls, collapsible floor
    b.stage = "shell"
    ax1, ax2, az1, az2 = cx + 2, cx + 36, -17, 17
    b.fill(ax1 - 1, Y, az1 - 1, ax2 + 1, Y + 14, az2 + 1, "polished_blackstone_bricks")
    b.fill(ax1, Y, az1, ax2, Y + 14, az2, "air")
    b.fill(ax1 - 1, Y - 1, az1 - 1, ax2 + 1, Y - 1, az2 + 1, "polished_blackstone")
    b.fill(ax1, Y - 1, az1, ax2, Y - 1, az2, "polished_blackstone_bricks")
    ac = L.ARENA_C[0]
    b.fill(ac - 7, Y - 1, -7, ac + 7, Y - 1, 7, "gilded_blackstone")
    b.fill(ac - 6, Y - 1, -6, ac + 6, Y - 1, 6, "polished_blackstone")
    b.fill(ac - 1, Y - 1, -1, ac + 1, Y - 1, 1, "crying_obsidian")
    b.stage = "detail"
    for x in range(ax1 + 2, ax2, 8):
        for z in (az1, az2):
            b.pillar(x, z, Y, Y + 13, "blackstone", "chiseled_polished_blackstone", "chiseled_polished_blackstone")
            b.set(x, Y + 3, z + (1 if z < 0 else -1), "soul_lantern")
    for z in range(az1 + 2, az2, 8):
        for x in (ax2,):
            b.pillar(x, z, Y, Y + 13, "blackstone", "chiseled_polished_blackstone", "chiseled_polished_blackstone")
    # ending vista: ruined throne at far east
    b.fill(ax2 - 3, Y, -3, ax2 - 1, Y, 3, "gilded_blackstone")
    b.set(ax2 - 1, Y + 1, 0, "polished_blackstone_brick_stairs")
    b.stage = "light"
    for x in range(cx - 33, cx - 27, 3):
        for z in (-6, 6):
            b.cmd("setblock %d %d %d soul_lantern" % (x, Y + 1, z))
    for x in range(cx - 19, cx - 2, 5):
        b.cmd("setblock %d %d 0 sea_lantern" % (x, Y - 1))
    b.cmd("setblock %d %d 0 sea_lantern" % (ac, Y + 12)) if False else None


def _wrap(i, zf):
    def run(b):
        import lod
        zf(b)
        for p in lod.PASSES[i]:
            p(b)
        lod.beacons(b, i)
    return run


ZONES = [_wrap(i, f) for i, f in enumerate([zone0, zone1, zone2, zone3, zone4])]
