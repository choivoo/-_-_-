#!/usr/bin/env python3
"""Static validation for BCE. Static pass != in-game pass (see TEST_REPORT.md)."""
import os, sys, re, json, zipfile, collections
ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "..", ".."))
SRC = os.path.join(ROOT, "src"); BP = os.path.join(SRC, "behavior_pack"); RP = os.path.join(SRC, "resource_pack")
FUNCS = os.path.join(BP, "functions")

COMMANDS = {"scoreboard", "tag", "tp", "teleport", "fill", "setblock", "summon", "kill", "damage", "effect", "particle", "playsound",
            "stopsound", "camera", "camerashake", "title", "titleraw", "tellraw", "give", "clear", "inputpermission", "function",
            "execute", "gamerule", "difficulty", "time", "weather", "tickingarea", "setworldspawn", "spawnpoint", "replaceitem", "playanimation", "structure", "gamemode"}
JAVA_ONLY = [r"item_display", r"block_display", r"\bbossbar\b", r"\bposteffect\b", r"\bdata (merge|modify|get|remove)\b", r"\$\(", r"\bschedule function\b",
             r"\bexecute store\b", r"\bif data\b", r"\battribute\b", r"@e\[[^\]]*nbt=", r"\bforceload\b", r"^return\b", r"\bsetblock [^\n]*\{"]
SOUNDS = {"ambient.cave", "random.orb", "random.levelup", "random.explode", "random.pop", "random.break", "random.click", "random.anvil_land",
          "game.player.attack.strong", "mob.wither.spawn", "mob.wither.death", "mob.enderdragon.growl", "mob.endermen.portal", "note.bell",
          "record.otherside", "record.pigstep"}
PARTICLES = {"critical_hit_emitter", "basic_crit_particle", "explosion_particle", "huge_explosion_emitter", "totem_particle", "endrod",
             "soul_particle", "basic_smoke_particle", "villager_happy", "villager_angry", "basic_flame_particle"}
BLOCKS = set("""air stone stone_bricks mossy_stone_bricks cracked_stone_bricks chiseled_stone_bricks polished_andesite polished_diorite deepslate_tiles deepslate_bricks
chiseled_deepslate cobblestone mossy_cobblestone gravel coarse_dirt dirt podzol water lantern soul_lantern sea_lantern iron_bars glass_pane spruce_planks oak_planks spruce_log
spruce_stairs oak_stairs oak_fence web bookshelf chest crafting_table furnace barrel lectern smithing_table fletching_table hay_block red_wool lever magma black_concrete
gilded_blackstone blackstone polished_blackstone polished_blackstone_bricks cracked_polished_blackstone_bricks chiseled_polished_blackstone polished_blackstone_brick_stairs
stone_brick_stairs obsidian crying_obsidian lava amethyst_block end_rod white_concrete purple_concrete oak_fence coarse_dirt white_wool gold_block barrier""".split())
OBJ_RE = re.compile(r"\b(bce_[a-z]+)\b")
TAGS = {"bce_enemy", "bce_boss", "bce_wave", "bce_mid", "bce_init", "bce_ctl", "bce_admin", "bce_npc", "bce_comb", "bce_dbg", "bce_hitmark", "bce_patrol", "bce_e", "bce_guardian"}

errors, warnings, info = [], [], {}
INV = collections.Counter()
DOC_CHECKED = {'camera': 'syntax compared with Microsoft Learn camera command page (set/ease/pos/rot/facing/clear/fade time/color)', 'inputpermission': 'documented in the same page (camera/movement enabled|disabled); added 1.19.80 per community wiki', 'structure': 'syntax NOT verified in game', 'tickingarea': 'circle syntax NOT verified from an official page'}


def err(m): errors.append(m)
def warn(m): warnings.append(m)


def all_json():
    for base in (BP, RP, os.path.join(SRC, "data")):
        for r, _, fs in os.walk(base):
            for f in fs:
                if f.endswith(".json") or f.endswith(".mcmeta"):
                    yield os.path.join(r, f)


def load_funcs():
    files = {}
    for r, _, fs in os.walk(FUNCS):
        for f in fs:
            if f.endswith(".mcfunction"):
                rel = os.path.relpath(os.path.join(r, f), FUNCS)[:-11].replace(os.sep, "/")
                files[rel] = open(os.path.join(r, f), encoding="utf-8").read().splitlines()
    return files


def final_cmd(line):
    parts = re.split(r"\brun ", line)
    return parts[-1].strip() if line.startswith("execute") and len(parts) > 1 else line


def balanced(s):
    st = []
    pairs = {")": "(", "]": "[", "}": "{"}
    q = False
    for ch in s:
        if ch == '"':
            q = not q
        if q:
            continue
        if ch in "([{":
            st.append(ch)
        elif ch in ")]}":
            if not st or st.pop() != pairs[ch]:
                return False
    return not st and not q


def main():
    # 1 JSON
    n_json = 0
    for p in all_json():
        n_json += 1
        try:
            json.load(open(p, encoding="utf-8"))
        except Exception as e:
            err("JSON parse error %s: %s" % (os.path.relpath(p, ROOT), e))
    info["json_files"] = n_json
    # 2 manifests
    uuids = collections.Counter()
    for nm, base, mod in (("BP", BP, "data"), ("RP", RP, "resources")):
        p = os.path.join(base, "manifest.json")
        if not os.path.exists(p):
            err(nm + " manifest missing"); continue
        m = json.load(open(p, encoding="utf-8"))
        if m.get("format_version") != 2: err(nm + " format_version != 2")
        h = m["header"]
        for k in ("name", "description", "uuid", "version", "min_engine_version"):
            if k not in h: err("%s manifest header missing %s" % (nm, k))
        uuids[h["uuid"]] += 1
        for md in m["modules"]:
            uuids[md["uuid"]] += 1
            if md["type"] != mod: err("%s module type %s != %s" % (nm, md["type"], mod))
        if len(h["version"]) != 3: err(nm + " version must be 3 ints")
    for u, c in uuids.items():
        if c > 1: err("duplicate UUID " + u)
        if not re.fullmatch(r"[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}", u): err("bad uuid " + u)
    # 3 functions
    files = load_funcs()
    info["functions"] = len(files)
    tick = json.load(open(os.path.join(FUNCS, "tick.json")))
    for t in tick["values"]:
        if t not in files: err("tick.json references missing function " + t)
    graph = collections.defaultdict(set)
    objs_declared = set(re.findall(r"objectives add (bce_[a-z]+)", "\n".join(files["bootstrap/objectives"])))
    n_cmds = 0
    longest = ("", 0)
    for fn, lines in files.items():
        cmds = [l for l in lines if l.strip() and not l.startswith("#")]
        n_cmds += len(cmds)
        if len(cmds) > longest[1]: longest = (fn, len(cmds))
        if len(cmds) > 400: err("%s: %d commands (> 400)" % (fn, len(cmds)))
        for i, l in enumerate(lines, 1):
            if l.startswith("#") or not l.strip(): continue
            where = "%s:%d" % (fn, i)
            if l.startswith("/"): err(where + " leading slash")
            if not balanced(l): err(where + " unbalanced brackets/quotes: " + l[:80])
            first = l.split()[0]
            if first not in COMMANDS: err(where + " unknown command '%s'" % first)
            fc = final_cmd(l)
            INV[fc.split()[0]] += 1
            if fc.split()[0] not in COMMANDS and not fc.startswith("execute"): err(where + " unknown final command '%s'" % fc.split()[0])
            for pat in JAVA_ONLY:
                if re.search(pat, l): err(where + " Java-only pattern /%s/ : %s" % (pat, l[:80]))
            for m in re.finditer(r"function ([a-z0-9_/]+)", l):
                if re.search(r"\bfunction " + re.escape(m.group(1)) + r"$", l) or "run function" in l or l.startswith("function"):
                    tgt = m.group(1)
                    if tgt not in files: err(where + " calls missing function " + tgt)
                    graph[fn].add(tgt)
            for o in OBJ_RE.findall(l):
                if o not in objs_declared and o not in TAGS: err(where + " undeclared objective " + o)
            m = re.match(r"fill (-?\d+) (-?\d+) (-?\d+) (-?\d+) (-?\d+) (-?\d+) ([a-z_]+)", fc)
            if m:
                v = 1
                for k in range(3): v *= abs(int(m.group(4 + k)) - int(m.group(1 + k))) + 1
                if v > 32768: err(where + " fill volume %d > 32768" % v)
                if m.group(7) not in BLOCKS: err(where + " unknown block " + m.group(7))
            m = re.match(r"setblock (-?\d+) (-?\d+) (-?\d+) ([a-z_]+)", fc)
            if m and m.group(4) not in BLOCKS: err(where + " unknown block " + m.group(4))
            for m in re.finditer(r"playsound ([a-z0-9_.]+)", fc):
                if m.group(1) not in SOUNDS: warn(where + " sound id not in verified-list: " + m.group(1))
            for m in re.finditer(r"particle minecraft:([a-z0-9_]+)", fc):
                if m.group(1) not in PARTICLES: warn(where + " particle id not in verified-list: " + m.group(1))
    info["commands"] = n_cmds; info["longest_function"] = longest
    # cycles
    color = {}
    def dfs(n, stack):
        color[n] = 1
        for t in graph.get(n, ()):
            if color.get(t) == 1: err("function call cycle: " + " -> ".join(stack + [n, t]))
            elif t not in color: dfs(t, stack + [n])
        color[n] = 2
    for n in list(files): 
        if n not in color: dfs(n, [])
    # orphans (not reachable from tick/entry points)
    entries = set(tick["values"]) | {"core/tick", "bootstrap/install", "bootstrap/recover", "bootstrap/uninstall", "debug/status", "debug/tick_probe", "game/start", "checkpoints/return"}
    entries |= {f for f in files if f.split("/")[0] in ("admin", "ui", "effects", "cutscenes") and f.count("/") >= 1}
    reach = set()
    def walk(n):
        if n in reach or n not in files: return
        reach.add(n)
        for t in graph.get(n, ()): walk(t)
    for e in entries: walk(e)
    orphans = sorted(set(files) - reach)
    info["orphan_functions"] = orphans
    for o in orphans: warn("function never referenced: " + o)
    # 4 resource-pack cross references
    ce = json.load(open(os.path.join(RP, "entity", "bce_guardian.entity.json")))["minecraft:client_entity"]["description"]
    geo = json.load(open(os.path.join(RP, "models", "entity", "bce_guardian.geo.json")))["minecraft:geometry"][0]
    if ce["geometry"]["default"] != geo["description"]["identifier"]: err("client entity geometry id mismatch")
    bones = {b["name"] for b in geo["bones"]}
    anims = json.load(open(os.path.join(RP, "animations", "bce_guardian.animation.json")))["animations"]
    ctrl = json.load(open(os.path.join(RP, "animation_controllers", "bce_guardian.animation_controllers.json")))["animation_controllers"]
    for k, v in ce["animations"].items():
        if v not in anims and v not in ctrl: err("client entity animation '%s' -> %s not defined" % (k, v))
    for an, a in anims.items():
        for bn in a["bones"]:
            if bn not in bones: err("animation %s uses unknown bone %s" % (an, bn))
    for a in ce["scripts"]["animate"]:
        if a not in ce["animations"]: err("scripts.animate '%s' not in animations" % a)
    if not os.path.exists(os.path.join(RP, ce["textures"]["default"] + ".png")): err("missing texture " + ce["textures"]["default"])
    rc = json.load(open(os.path.join(RP, "render_controllers", "bce_guardian.render_controllers.json")))["render_controllers"]
    for r in ce["render_controllers"]:
        if r not in rc: err("render controller missing " + r)
    be = json.load(open(os.path.join(BP, "entities", "bce_guardian.entity.json")))["minecraft:entity"]["description"]["identifier"]
    if be != ce["identifier"]: err("BP/RP entity identifier mismatch")
    used_anims = set(re.findall(r"animation\.bce_guardian\.[a-z0-9_]+", "\n".join("\n".join(v) for v in files.values())))
    for u in used_anims:
        if u not in anims: err("function uses undefined animation " + u)
    png = open(os.path.join(RP, "textures/entity/bce_guardian.png"), "rb").read(24)
    if png[:8] != b"\x89PNG\r\n\x1a\n": err("texture is not a PNG")
    # 5 packaging
    dist = os.path.join(ROOT, "dist", "BCE_1.0_FINAL")
    expect = {"BCE_Behavior_1.0.mcpack": ["manifest.json", "functions/tick.json", "entities/bce_guardian.entity.json", "structures/bce/z0_q00_0.mcstructure"],
              "BCE_Resources_1.0.mcpack": ["manifest.json", "textures/entity/bce_guardian.png", "particles/bce_warning_ring.particle.json"],
              "BCE_Enhanced_1.0.mcaddon": ["BCE_Behavior/manifest.json", "BCE_Resources/manifest.json", "BCE_Behavior/functions/tick.json"],
              "BCE_Command_Only_1.0.zip": ["BCE_Command_Only/construction/INDEX.md", "BCE_Command_Only/command_blocks/A_essential_loop.txt"],
              "BCE_1.0_Source.zip": ["BCE_1.0_Source/build.sh", "BCE_1.0_Source/generators/build_all.py"]}
    for f, req in expect.items():
        p = os.path.join(dist, f)
        if not os.path.exists(p): warn("package missing (run packs.py): " + f); continue
        with zipfile.ZipFile(p) as z:
            if z.testzip(): err("corrupt zip " + f)
            names = z.namelist()
            for r in req:
                if r not in names: err("%s lacks %s" % (f, r))
            if f.endswith(".mcpack") and any(n.startswith("src/") for n in names): err(f + " has wrong root")
            if f.endswith(".mcpack") or f.endswith(".mcaddon"):
                mans = [n for n in names if n.endswith("manifest.json")]
                for mn in mans:
                    mj = json.loads(z.read(mn))
                    if mj.get("format_version") != 2: err("%s:%s bad manifest" % (f, mn))
                    uuids[mj["header"]["uuid"]] += 0
    for needed in ("BCE_1.0_Install_Guide.md", "BCE_1.0_Test_Report.md", "RELEASE_STATUS.txt"):
        if not os.path.exists(os.path.join(dist, needed)): warn("missing release file " + needed)
    if os.path.exists(os.path.join(dist, "BCE_1.0.mcworld")): err("BCE_1.0.mcworld exists but no real world data was ever generated")
    # 6 spawn safety
    sp = os.path.join(ROOT, "reports", "spawn_safety.json")
    if os.path.exists(sp):
        r = json.load(open(sp))
        for f in r["fail"]: err("unsafe spawn/teleport: %s" % f)
        info["spawn_points_checked"] = len(r["ok"]) + len(r["fail"])

    # 8 structures (.mcstructure): NBT parse, size/palette/index checks, registry cross-check
    sys.path.insert(0, os.path.join(ROOT, "generators"))
    import structure as _st
    reg = json.load(open(os.path.join(SRC, "data", "buildings", "registry.json"), encoding="utf-8"))
    sdir = os.path.join(BP, "structures", "bce")
    names = set()
    for t_ in reg["structure_tiles"]:
        p_ = os.path.join(sdir, t_["file"]); names.add(t_["file"])
        if not os.path.exists(p_): err("missing structure file " + t_["file"]); continue
        probs = _st.validate(p_, tuple(t_["size"]))
        for pr in probs: err("%s: %s" % (t_["file"], pr))
        if max(t_["size"]) > 64: err("%s exceeds 64 blocks on an axis" % t_["file"])
    for f_ in os.listdir(sdir):
        if f_ not in names: err("structure file not in registry: " + f_)
    info["structure_files"] = len(names)
    # structure names used by functions must exist
    for fn, lines in files.items():
        for l in lines:
            m = re.search(r"structure load (bce:[a-z0-9_]+)", l)
            if m and m.group(1).split(":")[1] + ".mcstructure" not in names: err("%s loads unknown structure %s" % (fn, m.group(1)))
    # 9 custom particle must be defined and used (no decorative-only JSON)
    pj = json.load(open(os.path.join(RP, "particles", "bce_warning_ring.particle.json")))["particle_effect"]["description"]["identifier"]
    if not any(("particle " + pj) in l for ls in files.values() for l in ls): err("custom particle %s is never used" % pj)
    # 10 admin separation: every admin/* command line is tag-guarded
    for fn, lines in files.items():
        if fn.startswith("admin/") and fn != "admin/grant":
            for l in lines:
                if l and not l.startswith("#") and not l.startswith("execute if entity @s[tag=bce_admin] run "): err("unguarded admin line %s: %s" % (fn, l[:60]))
    # 11 build sequencer: marker guard on every step body line that touches the world
    for fn, lines in files.items():
        if fn.startswith("build/steps/"):
            if not any("scoreboard players add _bstep" in l for l in lines): err(fn + " never advances _bstep")
    # 7 per-tick static upper bound (informational)
    sys.path.insert(0, os.path.join(ROOT, "generators"))
    from command_generator import pure
    per_tick = {k: len(pure.flatten(files, k)) for k in ("player/input", "player/timers", "enemies/tick", "cutscenes/dispatch", "bosses/tick")}
    slot = {k: len(pure.flatten(files, k)) for k in ("core/every5", "core/every10", "core/every20")}
    info["static_command_lines"] = {"per_tick": per_tick, "slots": slot}
    inv = {k: {"count": v, "syntax_source": DOC_CHECKED.get(k, "author knowledge; not verified in game")} for k, v in sorted(INV.items())}
    json.dump(inv, open(os.path.join(ROOT, "reports", "command_inventory.json"), "w", encoding="utf-8"), ensure_ascii=False, indent=1)
    out = {"errors": errors, "warnings": warnings, "info": info}
    os.makedirs(os.path.join(ROOT, "reports"), exist_ok=True)
    json.dump(out, open(os.path.join(ROOT, "reports", "static_report.json"), "w", encoding="utf-8"), ensure_ascii=False, indent=1)
    print("functions=%d commands=%d json=%d errors=%d warnings=%d" % (info["functions"], n_cmds, n_json, len(errors), len(warnings)))
    for e in errors[:40]: print("ERROR", e)
    for w in warnings[:15]: print("WARN", w)
    return 1 if errors else 0


if __name__ == "__main__":
    sys.exit(main())
