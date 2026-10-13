"""Cutscene timeline (JSON, unit = game tick, 20/s) -> Bedrock mcfunction files."""
import os, sys, json
sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))
from common import jraw

SUBTITLE_REPEAT = 30   # actionbar text lasts ~3s; refresh


def _num(v):
    return ("%g" % v)


def _xyz(a):
    return " ".join(_num(v) for v in a)


def event_cmds(ev):
    t = ev["type"]
    if t == "cam":
        c = "camera @s set minecraft:free"
        if "ease" in ev:
            c += " ease %s %s" % (_num(ev["ease"][0] / 20.0), ev["ease"][1])
        c += " pos " + _xyz(ev["pos"])
        if "facing" in ev:
            c += " facing " + _xyz(ev["facing"])
        else:
            c += " rot " + _xyz(ev["rot"])
        return [c]
    if t == "fade":
        col = ev.get("color", [0, 0, 0])
        return ["camera @s fade time %s %s %s color %s" % (_num(ev["in"] / 20.0), _num(ev["hold"] / 20.0), _num(ev["out"] / 20.0), _xyz(col))]
    if t == "clear_cam":
        return ["camera @s clear"]
    if t == "sound":
        return ["playsound %s @s ~ ~ ~ %s %s" % (ev["name"], _num(ev.get("vol", 1)), _num(ev.get("pitch", 1)))]
    if t == "title":
        out = ["titleraw @s times %d %d %d" % (ev.get("fadein", 10), ev.get("stay", 50), ev.get("fadeout", 10))]
        if ev.get("subtitle"):
            out.append("titleraw @s subtitle " + jraw(ev["subtitle"]))
        out.append("titleraw @s title " + jraw(ev["title"]))
        return out
    if t == "shake":
        return ["execute if score #shake bce_sys matches 1 run camerashake add @s %s %s positional" % (_num(ev["intensity"]), _num(ev["seconds"]))]
    if t == "cmd":
        return [ev["run"]]
    raise ValueError("unknown event type " + t)


def expand(scene):
    """-> sorted list of (tick, command, critical)."""
    out = []
    for ev in scene["events"]:
        if ev["type"] == "subtitle":
            tt = ev["t"]
            while tt < ev["t"] + ev["dur"]:
                out.append((tt, "titleraw @s actionbar " + jraw("§f" + ev["text"]), False))
                tt += SUBTITLE_REPEAT
            continue
        for c in event_cmds(ev):
            out.append((ev["t"], c, bool(ev.get("critical")) and ev["type"] == "cmd"))
    out.sort(key=lambda x: x[0])
    return out


def generate(scene, fns):
    sid = scene["id"]; num = scene["numeric_id"]; dur = scene["duration"]
    base = "cutscenes/" + sid
    cmds = expand(scene)
    for t, c, _ in cmds:
        assert 0 <= t <= dur, "%s: event at %d outside duration %d" % (sid, t, dur)
    fns.emit(base + "/start", [
        "tag @s add bce_cs",
        "scoreboard players set @s bce_cs %d" % num,
        "scoreboard players set @s bce_cst 0",
        "inputpermission set @s movement disabled",
        "clear @s paper",
        "give @s paper 1 0 {\"item_lock\":{\"mode\":\"lock_in_inventory\"},\"display\":{}}" if False else "give @s paper 1",
    ] + scene.get("start_cmds", []), doc="cutscene %s: start (run as the player)" % sid)
    tick = ["execute if score @s bce_cst matches %d run %s" % (t, c) for t, c, _ in cmds]
    tick.append("scoreboard players add @s bce_cst 1")
    tick.append("execute if score @s bce_cst matches %d.. run function %s/end" % (dur, base))
    fns.emit(base + "/tick", tick, doc="cutscene %s: timeline tick, %d ticks total" % (sid, dur))
    fns.emit(base + "/end", [
        "camera @s clear",
        "inputpermission set @s movement enabled",
        "tag @s remove bce_cs",
        "scoreboard players set @s bce_cs 0",
        "scoreboard players set @s bce_cst 0",
        "clear @s paper",
        "title @s clear",
    ] + scene.get("end_cmds", []), doc="cutscene %s: restore camera + input, then on-end hooks" % sid)
    skip = [c for t, c, crit in cmds if crit] + ["function %s/end" % base]
    fns.emit(base + "/skip", skip, doc="cutscene %s: skip = replay critical commands then end" % sid)


def generate_all(scenes, fns):
    ids = [s["numeric_id"] for s in scenes]
    assert len(ids) == len(set(ids)), "duplicate cutscene numeric_id"
    for s in scenes:
        generate(s, fns)
    disp, skip = [], []
    for s in scenes:
        disp.append("execute as @a[tag=bce_cs,scores={bce_cs=%d}] at @s run function cutscenes/%s/tick" % (s["numeric_id"], s["id"]))
        skip.append("execute if score @s bce_cs matches %d at @s run function cutscenes/%s/skip" % (s["numeric_id"], s["id"]))
    fns.emit("cutscenes/dispatch", disp, doc="runs every tick: advance all active cutscenes")
    fns.emit("cutscenes/skip", skip, doc="run as the player: skip the active cutscene")
    fns.emit("cutscenes/force_end", [
        "camera @s clear", "inputpermission set @s movement enabled", "tag @s remove bce_cs",
        "scoreboard players set @s bce_cs 0", "scoreboard players set @s bce_cst 0", "clear @s paper"],
        doc="recovery: run as a player stuck in a cutscene")
    return scenes


def load_scenes(d):
    out = []
    for f in sorted(os.listdir(d)):
        if f.endswith(".json"):
            out.append(json.load(open(os.path.join(d, f), encoding="utf-8")))
    return out
