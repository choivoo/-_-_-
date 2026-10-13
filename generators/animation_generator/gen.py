"""Keyframe data (JSON) -> Bedrock geometry / animation / animation controller / entity definitions + validation."""
import os, sys, json, zlib, struct, hashlib, uuid
sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))
from common import *

PREFIX = "bce_guardian"


def geometry(m):
    bones = []
    for b in m["bones"]:
        o = {"name": b["name"], "pivot": b["pivot"]}
        if "parent" in b:
            o["parent"] = b["parent"]
        if b.get("cubes"):
            o["cubes"] = [{"origin": c["origin"], "size": c["size"], "uv": c["uv"]} for c in b["cubes"]]
        bones.append(o)
    return {"format_version": "1.12.0", "minecraft:geometry": [{"description": {
        "identifier": "geometry." + m["id"], "texture_width": m["texture_size"][0], "texture_height": m["texture_size"][1],
        "visible_bounds_width": 4, "visible_bounds_height": 4, "visible_bounds_offset": [0, 1.5, 0]}, "bones": bones}]}


def animations(m):
    out = {}
    for name, a in m["animations"].items():
        bones = {}
        for bn, chans in a["bones"].items():
            bones[bn] = {ch: ({t: v for t, v in kf.items()}) for ch, kf in chans.items()}
        out["animation.%s.%s" % (m["id"], name)] = {"loop": a["loop"], "animation_length": a["length"], "bones": bones}
    return {"format_version": "1.8.0", "animations": out}


def controller(m):
    c = m["controller"]
    states = {"default": {"animations": [c["default"]], "transitions": []}}
    for s in c["states"]:
        states["default"]["transitions"].append({s["name"]: s["enter_when"]})
        states[s["name"]] = {"animations": [s["animation"]], "transitions": [{"default": s["exit_when"]}]}
    return {"format_version": "1.10.0", "animation_controllers": {"controller.animation.%s.%s" % (m["id"], c["id"]): {
        "initial_state": "default", "states": states}}}


def client_entity(m):
    anims = {n: "animation.%s.%s" % (m["id"], n) for n in m["animations"]}
    anims[m["controller"]["id"]] = "controller.animation.%s.%s" % (m["id"], m["controller"]["id"])
    return {"format_version": "1.10.0", "minecraft:client_entity": {"description": {
        "identifier": m["identifier"], "materials": {"default": "entity_alphatest"},
        "textures": {"default": "textures/entity/" + m["id"]}, "geometry": {"default": "geometry." + m["id"]},
        "animations": anims, "scripts": {"animate": [m["controller"]["id"]]},
        "render_controllers": ["controller.render." + m["id"]], "spawn_egg": {"base_color": "#101018", "overlay_color": "#7a2cff"}}}}


def render_controller(m):
    return {"format_version": "1.10.0", "render_controllers": {"controller.render." + m["id"]: {
        "arrays": {}, "geometry": "Geometry.default", "materials": [{"*": "Material.default"}], "textures": ["Texture.default"]}}}


def server_entity(m):
    s = m["server"]
    hit = {"queue_command": {"command": ["scoreboard players remove #bhp bce_sys 6"]}}
    return {"format_version": "1.20.10", "minecraft:entity": {
        "description": {"identifier": m["identifier"], "is_spawnable": True, "is_summonable": True, "is_experimental": False},
        "components": {
            "minecraft:type_family": {"family": ["monster", "bce_boss"]},
            "minecraft:health": {"value": s["health"], "max": s["health"]},
            "minecraft:collision_box": {"width": s["collision"][0], "height": s["collision"][1]},
            "minecraft:movement": {"value": s["speed"]}, "minecraft:movement.basic": {},
            "minecraft:navigation.walk": {"can_path_over_water": False, "avoid_water": True, "can_pass_doors": True},
            "minecraft:jump.static": {}, "minecraft:can_climb": {}, "minecraft:physics": {},
            "minecraft:knockback_resistance": {"value": 1.0}, "minecraft:persistent": {},
            "minecraft:attack": {"damage": 0},
            "minecraft:behavior.float": {"priority": 0},
            "minecraft:behavior.melee_attack": {"priority": 2, "speed_multiplier": 1.0, "reach_multiplier": 1.2},
            "minecraft:behavior.random_look_around": {"priority": 7},
            "minecraft:behavior.nearest_attackable_target": {"priority": 1, "must_see": False, "entity_types": [
                {"filters": {"test": "is_family", "subject": "other", "value": "player"}, "max_dist": 48}]},
            "minecraft:damage_sensor": {"triggers": [{"on_damage": {"filters": {"test": "is_family", "subject": "other", "value": "player"}, "event": "bce:hit"}, "deals_damage": False}]},
            "minecraft:pushable": {"is_pushable": False, "is_pushable_by_piston": False}},
        "events": {"bce:hit": hit}}}


# ---- texture -------------------------------------------------------------
PALETTE = {"armor": (38, 40, 56), "head": (30, 30, 44), "cape": (74, 20, 40), "blade": (150, 160, 190), "core": (96, 30, 190)}


def _noise(x, y, s):
    h = hashlib.md5(("%d,%d,%s" % (x, y, s)).encode()).digest()[0]
    return (h % 24) - 12


def texture_png(m):
    W, H = m["texture_size"]
    px = [[(0, 0, 0, 0)] * W for _ in range(H)]

    def paint(x0, y0, w, h, col, tag, face=""):
        for y in range(h):
            for x in range(w):
                n = _noise(x0 + x, y0 + y, tag)
                edge = 14 if (x in (0, w - 1) or y in (0, h - 1)) else 0
                c = tuple(max(0, min(255, col[i] + n - edge)) for i in range(3))
                px[y0 + y][x0 + x] = (c[0], c[1], c[2], 255)
    for b in m["bones"]:
        for c in b.get("cubes", []):
            u, v = c["uv"]; w, h, d = c["size"][0], c["size"][1], c["size"][2]
            col = PALETTE[c["tex"]]
            w, h, d = int(w), int(h), int(d)
            for (fx, fy, fw, fh, nm) in [(u + d, v, w, d, "top"), (u + d + w, v, w, d, "bot"), (u, v + d, d, h, "r"),
                                         (u + d, v + d, w, h, "front"), (u + d + w, v + d, d, h, "l"), (u + 2 * d + w, v + d, w, h, "back")]:
                paint(fx, fy, fw, fh, col, b["name"] + nm)
            if b["name"] == "head":       # glowing eye slit + brow on the front face
                fx, fy = u + d, v + d
                for x in range(1, w - 1):
                    px[fy + 4][fx + x] = (255, 70, 200, 255)
                    px[fy + 5][fx + x] = (170, 40, 150, 255)
            if b["name"] == "body":       # star sigil on chest
                fx, fy = u + d, v + d
                cx_, cy_ = fx + w // 2, fy + 6
                for k in range(-3, 4):
                    px[cy_][cx_ + k] = (140, 70, 255, 255); px[cy_ + k][cx_] = (140, 70, 255, 255)
    raw = b"".join(b"\x00" + b"".join(bytes(p) for p in row) for row in px)

    def chunk(t, d):
        c = struct.pack(">I", len(d)) + t + d
        return c + struct.pack(">I", zlib.crc32(t + d) & 0xffffffff)
    return b"\x89PNG\r\n\x1a\n" + chunk(b"IHDR", struct.pack(">IIBBBBB", W, H, 8, 6, 0, 0, 0)) + chunk(b"IDAT", zlib.compress(raw, 9)) + chunk(b"IEND", b"")


def validate(m):
    errs = []
    names = {b["name"] for b in m["bones"]}
    if len(names) != len(m["bones"]):
        errs.append("duplicate bone names")
    for b in m["bones"]:
        if "parent" in b and b["parent"] not in names:
            errs.append("bone %s: unknown parent %s" % (b["name"], b["parent"]))
        for c in b.get("cubes", []):
            u, v = c["uv"]; w, h, d = [int(x) for x in c["size"]]
            if u + 2 * (d + w) > m["texture_size"][0] or v + d + h > m["texture_size"][1]:
                errs.append("bone %s: uv box exceeds texture" % b["name"])
    for an, a in m["animations"].items():
        for bn, chans in a["bones"].items():
            if bn not in names:
                errs.append("animation %s: unknown bone %s" % (an, bn))
            for ch, kf in chans.items():
                if ch not in ("rotation", "position", "scale"):
                    errs.append("animation %s/%s: bad channel %s" % (an, bn, ch))
                for t, val in kf.items():
                    if float(t) > a["length"] + 1e-6:
                        errs.append("animation %s/%s: keyframe %s beyond length" % (an, bn, t))
                    if len(val) != 3:
                        errs.append("animation %s/%s: keyframe %s must have 3 values" % (an, bn, t))
    need = ["idle", "walk", "run", "attack1", "attack2", "attack3", "hit", "stunned", "death", "boss_intro", "boss_attack", "phase_transition"]
    for n in need:
        if n not in m["animations"]:
            errs.append("missing required animation " + n)
    return errs


def generate(m=None):
    m = m or read_json(os.path.join(DATA, "enemies", "guardian_model.json"))
    errs = validate(m)
    if errs:
        raise SystemExit("animation validation failed:\n" + "\n".join(errs))
    i = m["id"]
    write_json(os.path.join(RP, "models", "entity", i + ".geo.json"), geometry(m))
    write_json(os.path.join(RP, "animations", i + ".animation.json"), animations(m))
    write_json(os.path.join(RP, "animation_controllers", i + ".animation_controllers.json"), controller(m))
    write_json(os.path.join(RP, "entity", i + ".entity.json"), client_entity(m))
    write_json(os.path.join(RP, "render_controllers", i + ".render_controllers.json"), render_controller(m))
    write_json(os.path.join(BP, "entities", i + ".entity.json"), server_entity(m))
    os.makedirs(os.path.join(RP, "textures", "entity"), exist_ok=True)
    with open(os.path.join(RP, "textures", "entity", i + ".png"), "wb") as f:
        f.write(texture_png(m))
    return {"animations": len(m["animations"]), "bones": len(m["bones"])}


if __name__ == "__main__":
    print(generate())
