"""ONE-CLICK PLAY: automatic bootstrap, build, verification, player start, tutorial hand-over and recovery.
tick.json calls ONLY auto/tick. Persistent state lives in the scoreboard (saved with the world), so re-joining never repeats work.
_astate: 0 NOT_INITIALIZED, 1 INITIALIZING, 2 BUILDING, 3 WORLD_READY, 4 INTRO_READY, 5 PLAYING, 6 ERROR"""
import os, sys
sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))
from common import jraw
import layout as L

AS = "_astate"
TXT = lambda *p: jraw(*p)


def build_auto(F, info):
    sx, sy, sz = L.START
    F.emit("auto/tick", [
        "execute unless score _astate bce_sys matches 0..6 run function auto/detect_world",
        "execute if score _astate bce_sys matches 0 if entity @a run function auto/first_join",
        "execute if score _astate bce_sys matches 1..5 run function core/tick",
        "execute if score _astate bce_sys matches 2 run function auto/building_tick",
        "execute if score _astate bce_sys matches 4..5 run function auto/prepare_player",
        "execute if score _astate bce_sys matches 6 run function auto/recovery"],
        doc="THE ONLY tick.json entry. Nothing heavy runs before a player exists (state 0) or before the objectives exist.")
    F.emit("auto/detect_world", [
        "scoreboard objectives add bce_sys dummy",
        "scoreboard players set _astate bce_sys 0",
        "execute if score _state bce_sys matches 3 run scoreboard players set _astate bce_sys 2",
        "execute if score _state bce_sys matches 4..12 run scoreboard players set _astate bce_sys 5",
        "execute if score _state bce_sys matches 13..14 run scoreboard players set _astate bce_sys 6"],
        doc="runs once per world: adopts the state of a manually-installed or pre-built world, otherwise NOT_INITIALIZED")
    F.emit("auto/first_join", [
        "scoreboard players set _astate bce_sys 1",
        "titleraw @a times 10 80 20", "titleraw @a subtitle " + TXT("§f세계를 복원하고 있습니다…"), "titleraw @a title " + TXT("§e검은별의 성채"),
        "function auto/initialize"],
        doc="first player in a world that was never initialised (only runs when _astate==0)")
    F.emit("auto/initialize", ["function auto/prepare_world", "function auto/start_build"], doc="headless entry: /function auto/initialize works without any player (used to pre-build the shipped world)")
    F.emit("auto/prepare_world", [
        "scoreboard players set _astate bce_sys 1",
        "function bootstrap/objectives", "function bootstrap/gamerules", "function bootstrap/constants",
        "scoreboard players set _built bce_sys 0", "scoreboard players set _yard bce_sys 0", "scoreboard players set _wall bce_sys 0",
        "scoreboard players set _puzzle bce_sys 0", "scoreboard players set _door bce_sys 0", "scoreboard players set _bdead bce_sys 0",
        "scoreboard players set _bridge bce_sys 99", "scoreboard players set _started bce_sys 0", "scoreboard players set _bstate bce_sys 0",
        "scoreboard players set _aretry bce_sys 0", "scoreboard players set _await bce_sys 0",
        "scoreboard players set _zok0 bce_sys 0", "scoreboard players set _zok1 bce_sys 0", "scoreboard players set _zok2 bce_sys 0",
        "scoreboard players set _zok3 bce_sys 0", "scoreboard players set _zok4 bce_sys 0", "scoreboard players set _state bce_sys 2"],
        doc="idempotent world preparation (objectives, game rules, constants, flags)")
    F.emit("auto/start_build", ["scoreboard players set _astate bce_sys 2", "function build/start"],
           doc="BUILDING: the sequencer builds the sky observatory first, moves the players there, then restores the five zones")
    F.emit("auto/building_tick", [
        "execute if score _state bce_sys matches 4.. run function auto/build_complete",
        "execute if score _bsm bce_sys matches 7 run function auto/recovery_build",
        "scoreboard players operation _m20a bce_sys = _tick bce_sys", "scoreboard players operation _m20a bce_sys %= _c20 bce_sys",
        "execute if score _m20a bce_sys matches 0 run effect @a resistance 3 255 true",
        "execute if score _m20a bce_sys matches 0 run effect @a saturation 3 5 true"],
        doc="while building: players are invulnerable, failures retry automatically, completion is detected")
    F.emit("auto/recovery_build", [
        "scoreboard players add _await bce_sys 1",
        "execute if score _await bce_sys matches 100.. run scoreboard players add _aretry bce_sys 1",
        "execute if score _await bce_sys matches 100.. if score _aretry bce_sys matches ..3 run function build/recover",
        "execute if score _await bce_sys matches 100.. if score _aretry bce_sys matches 4.. run function auto/to_error",
        "execute if score _await bce_sys matches 100.. run scoreboard players set _await bce_sys 0"],
        doc="auto-retry a FAILED build step up to 3 times (zone restart); then ERROR. Never waits forever silently")
    F.emit("auto/to_error", [
        "scoreboard players set _astate bce_sys 6",
        "titleraw @a actionbar " + TXT("§c세계 복원 오류 — 월드를 다시 열어 주세요 (관리자: admin/auto_reset)")])
    # required objects verified per zone by the sequencer (_zok0.._zok4) + start position
    chk = ["scoreboard players set _acheck bce_sys 0"] + ["execute if score _zok%d bce_sys matches 1 run scoreboard players add _acheck bce_sys 1" % i for i in range(5)]
    chk += ["execute if score _acheck bce_sys matches 5 run function auto/world_ready", "execute unless score _acheck bce_sys matches 5 run function auto/to_error"]
    F.emit("auto/build_complete", chk, doc="PLAY_READY only if the temple, village, ruins, wall and citadel (incl. quest objects, start position and boss arena floor) were verified")
    F.emit("auto/world_ready", [
        "scoreboard players set _astate bce_sys 3",
        "setworldspawn %d %d %d" % (sx, sy, sz),
        "tickingarea remove_all", "kill @e[type=item]", "kill @e[tag=bce_enemy]",
        "effect @a clear", "title @a clear",
        "scoreboard players set _aretry bce_sys 0", "scoreboard players set _await bce_sys 0",
        "scoreboard players set _astate bce_sys 4"],
        doc="WORLD_READY -> INTRO_READY; temp entities cleaned, spawn moved to the temple altar")
    F.emit("auto/prepare_player", [
        "scoreboard players operation _m5a bce_sys = _tick bce_sys", "scoreboard players operation _m5a bce_sys %= _c5 bce_sys",
        "execute if score _m5a bce_sys matches 0 as @a[tag=bce_init,tag=!bce_cs,scores={bce_ps=0}] at @s run function auto/start_player"],
        doc="every 5 ticks: players that never started get placed at the altar and see the opening. Re-joining players (ps>0) are untouched")
    F.emit("auto/start_player", [
        "effect @s clear", "gamemode survival @s",
        "tp @s %s %s %s facing %d %d %d" % (sx, sy, sz, L.START_FACE[0], L.START_FACE[1], L.START_FACE[2]),
        "spawnpoint @s %d %d %d" % (int(sx // 1), sy, int(sz // 1)),
        "function auto/start_cutscene"], doc="as player: PREPARE (position, spawn point) then CUTSCENE")
    F.emit("auto/start_cutscene", [
        "scoreboard players set _started bce_sys 1", "scoreboard players set _astate bce_sys 5",
        "function game/begin"], doc="as player: ps=1 + opening cutscene (locks movement+camera; restored by cutscenes/opening/end or skip)")
    F.emit("auto/recovery", [
        "scoreboard players operation _m20b bce_sys = _tick bce_sys", "scoreboard players operation _m20b bce_sys %= _c200 bce_sys",
        "execute if score _m20b bce_sys matches 0 run titleraw @a actionbar " + TXT("§c세계 복원 오류 — 월드를 다시 열어 주세요")],
        doc="ERROR state: the world is never re-initialised or rebuilt automatically (that could destroy a built world)")
    F.emit("admin/auto_reset_world", [
        "execute if entity @s[tag=bce_admin] run scoreboard players set _astate bce_sys 0",
        "execute if entity @s[tag=bce_admin] run scoreboard players set _state bce_sys 0",
        "execute if entity @s[tag=bce_admin] run tellraw @s " + TXT("§c[관리자] 자동 초기화를 처음부터 다시 실행합니다(재건축)")],
        doc="ADMIN: explicit full restart of the auto system (rebuilds the world)")
    F.emit("admin/auto_recover", [
        "execute if entity @s[tag=bce_admin] run scoreboard players set _aretry bce_sys 0",
        "execute if entity @s[tag=bce_admin] if score _astate bce_sys matches 6 run scoreboard players set _astate bce_sys 2",
        "execute if entity @s[tag=bce_admin] if score _astate bce_sys matches 2 run function build/recover"],
        doc="ADMIN: leave ERROR and retry the failed zone")
    F.emit("admin/auto_status", [
        "execute if entity @s[tag=bce_admin] run tellraw @s " + TXT("§e[자동] 상태 ", ("_astate", "bce_sys"), " (0 미초기화 1 초기화 2 건축 3 준비 4 오프닝대기 5 플레이 6 오류) 건축 ", ("_bstep", "bce_sys"), "/", ("_bstop", "bce_sys"))])
