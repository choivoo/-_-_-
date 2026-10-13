#!/usr/bin/env python3
"""Build the SHIPPED world with a REAL Bedrock Dedicated Server and pack it as .mcworld / .mctemplate.
Nothing here fabricates world data: the chunks, level.dat and LevelDB are written by the Bedrock engine itself while the
pack's own auto-build runs headless (function auto/initialize)."""
import os, sys, json, time, re, shutil, struct, zipfile, uuid
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), "generators"))
import bds, nbt
from nbt import T

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
R = os.path.join(ROOT, "src") + "/"
FINAL_NAME = "검은별의 성채 | BCE 1.0"
DIRNAME = "BCEoneclick"     # BDS rewrites "|" in folder names; the in-game name lives in level.dat + levelname.txt
VOID = '{"biome_id":1,"block_layers":[{"block_name":"minecraft:air","count":1}],"encoding_version":6,"structure_options":null,"world_version":"version.post_1_18"}\n'
PROPS = {"level-type": "FLAT", "allow-cheats": "false", "gamemode": "survival", "difficulty": "normal", "level-name": DIRNAME}
NS = uuid.UUID("6f1c2f7e-3a52-4a8e-9a55-0b1ac75700e1")


def score(s, name):
    for l in s.run('scoreboard players list "%s"' % name, 0.8):
        m = re.search(r"- bce_sys: (-?\d+)", l)
        if m: return int(m.group(1))
    return None


def edit_level_dat(world, void=True):
    p = os.path.join(world, "level.dat")
    d = open(p, "rb").read()
    ver, ln = struct.unpack("<ii", d[:8])
    root, name = nbt.loads_typed(d[8:])
    if void: root["FlatWorldLayers"] = T(nbt.STRING, VOID)
    root["LevelName"] = T(nbt.STRING, FINAL_NAME)
    body = nbt.dumps(root, name)
    open(p, "wb").write(struct.pack("<ii", ver, len(body)) + body)
    open(os.path.join(world, "levelname.txt"), "w", encoding="utf-8").write(FINAL_NAME)


def build_world():
    bds.fetch()
    s = bds.Server(DIRNAME, PROPS)
    shutil.rmtree(s.world, ignore_errors=True)
    s.start(); time.sleep(2); s.stop(); time.sleep(2)            # 1) let the engine create level.dat
    edit_level_dat(s.world, void=True)                          # 2) void flat layers + final name
    shutil.rmtree(os.path.join(s.world, "db"), ignore_errors=True)
    bds.install_packs(s.world, R + "behavior_pack", R + "resource_pack")
    s = bds.Server(DIRNAME, PROPS)
    s.start(); time.sleep(2)                                     # 3) engine loads the packs
    n0 = len(s.lines)
    s.run("function auto/initialize", 2.0)                       # headless: no player, no typed command by a user
    t0 = time.time()
    while time.time() - t0 < 400:
        a = score(s, "_astate")
        if a is not None and a >= 4: break
        if a == 6: raise SystemExit("auto build ERROR state")
        time.sleep(2)
    else:
        raise SystemExit("timeout waiting for the build")
    zok = [score(s, "_zok%d" % i) for i in range(5)]
    assert zok == [1] * 5, zok
    s.run("time set 18000", 0.5); s.run("weather clear", 0.5)
    s.run("kill @e[type=item]", 0.5)
    errs = [l for l in s.lines[n0:] if re.search(r"ERROR|failed to load|Syntax error", l) and "no tracked player" not in l and "Unknown command" not in l]
    s.run("save hold", 1.0)
    for _ in range(30):
        out = s.run("save query", 1.0)
        if any("Files are now ready" in l or "Data saved" in l for l in out): break
    snapshot = os.path.join(os.path.dirname(s.world), "_snapshot")
    shutil.rmtree(snapshot, ignore_errors=True)
    s.run("save resume", 0.5)
    s.stop(); time.sleep(2)
    edit_level_dat(s.world, void=False)                          # BDS may have reset LevelName to the folder name
    return s.world, errs, zok


WORLD_FILES = ["level.dat", "levelname.txt", "world_behavior_packs.json", "world_resource_packs.json"]


def collect(world):
    out = []
    for f in WORLD_FILES:
        out.append((os.path.join(world, f), f))
    for sub in ("db", "behavior_packs", "resource_packs"):
        for r, _, fs in os.walk(os.path.join(world, sub)):
            for f in sorted(fs):
                full = os.path.join(r, f)
                out.append((full, os.path.relpath(full, world).replace(os.sep, "/")))
    return out


def write_zip(path, items, extra=None):
    with zipfile.ZipFile(path, "w", zipfile.ZIP_DEFLATED, compresslevel=9) as z:
        for full, arc in items:
            z.write(full, arc)
        for arc, data in (extra or {}).items():
            z.writestr(arc, data)


def icon_bytes():
    try:
        from PIL import Image, ImageDraw
        import random, io
        im = Image.new("RGB", (640, 360), (8, 8, 24)); d = ImageDraw.Draw(im); r = random.Random(5)
        for _ in range(180):
            x, y = r.randrange(640), r.randrange(360); c = r.randrange(120, 255); d.point((x, y), fill=(c, c, 255))
        d.ellipse((250, 90, 390, 230), fill=(5, 5, 8), outline=(150, 70, 255), width=6)
        d.polygon([(300, 250), (340, 250), (330, 330), (310, 330)], fill=(30, 30, 50))
        b = io.BytesIO(); im.save(b, "JPEG", quality=85); return b.getvalue()
    except Exception:
        return None


def package(world, outdir):
    os.makedirs(outdir, exist_ok=True)
    items = collect(world)
    mcworld = os.path.join(outdir, "BCE_1.0_One_Click_Play.mcworld")
    write_zip(mcworld, items)
    # world template: same real world data + template manifest (format per Microsoft Learn pack manifest reference)
    man = {"format_version": 2, "header": {"name": FINAL_NAME, "description": "검은별의 성채 — 설치 후 플레이 버튼만 누르면 자동으로 시작됩니다",
           "version": [1, 0, 0], "uuid": str(uuid.uuid5(NS, "tpl-header")), "lock_template_options": True, "base_game_version": [1, 21, 80]},
           "modules": [{"type": "world_template", "uuid": str(uuid.uuid5(NS, "tpl-module")), "version": [1, 0, 0]}]}
    extra = {"manifest.json": json.dumps(man, ensure_ascii=False, indent=2),
             "texts/languages.json": json.dumps(["en_US", "ko_KR"]),
             "texts/en_US.lang": "pack.name=%s\npack.description=Blackstar Citadel\n" % FINAL_NAME,
             "texts/ko_KR.lang": "pack.name=%s\npack.description=검은별의 성채\n" % FINAL_NAME}
    ic = icon_bytes()
    if ic: extra["world_icon.jpeg"] = ic
    tpl = os.path.join(outdir, "BCE_1.0_One_Click_Play.mctemplate")
    write_zip(tpl, items, extra)
    return mcworld, tpl


if __name__ == "__main__":
    out = sys.argv[1] if len(sys.argv) > 1 else os.path.join(ROOT, "dist", "BCE_1.0_OneClick")
    world, errs, zok = build_world()
    print("world built:", world, "zok", zok, "engine errors during build:", len(errs))
    for e in errs[:10]: print("  ", e)
    print(package(world, out))
