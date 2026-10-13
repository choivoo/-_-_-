"""Generates every gameplay .mcfunction of BCE (state machine, combat, AI, boss, quests, UI, admin)."""
import os, sys, math, json
sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))
from common import FnSet, jraw, sel_box, read_json, DATA
import layout as L

SYS = "bce_sys"
PLAYER_OBJ = ["bce_stam", "bce_cdslash", "bce_cddodge", "bce_cdult", "bce_cdheal", "bce_combo", "bce_cwin",
              "bce_iframe", "bce_cur", "bce_prev", "bce_q", "bce_cp", "bce_ps", "bce_cs", "bce_cst",
              "bce_cddash", "bce_cdbslash", "bce_cdjudge", "bce_ultt", "bce_tmp"]
ENEMY_OBJ = ["bce_ai", "bce_aitm"]
SK = read_json(os.path.join(DATA, "skills", "skills.json"))
EN = read_json(os.path.join(DATA, "enemies", "enemies.json"))
ST = SK["stamina"]
A = lambda n: sel_box(L.REG[n])
ARENA = A("arena")
ARC = L.ARENA_C
TXT = lambda s: jraw(s)
TELL = lambda who, s: "tellraw %s %s" % (who, jraw(s))

STATES = ["UNINITIALIZED", "INITIALIZING", "READY", "WORLD_BUILDING", "MAIN_MENU", "INTRO_CUTSCENE", "TUTORIAL",
          "EXPLORATION", "COMBAT", "BOSS_BATTLE", "QUEST_COMPLETE", "GAME_OVER", "GAME_COMPLETE", "RESETTING", "ERROR"]


def ring(cx_, cz_, r, n, particle, y=0.2, rel=True):
    out = []
    for i in range(n):
        a = 2 * math.pi * i / n
        out.append("particle %s ~%.1f ~%.1f ~%.1f" % (particle, r * math.cos(a), y, r * math.sin(a)))
    return out


def hit(selector, dmg, ticks=8):
    """Damage + brief post-hit invulnerability. selector MUST contain tag=!bce_iframe."""
    return ["damage %s %d entity_attack" % (selector, dmg),
            "scoreboard players set %s bce_iframe %d" % (selector, ticks),
            "tag %s add bce_iframe" % selector]


def fx(level, cmd):
    """Particle budget: level 1 = MEDIUM+, level 2 = HIGH only (quality 0=LOW)."""
    return "execute if score _quality bce_sys matches %d.. run %s" % (level, cmd)


SHAKE = lambda i, s, who="@s": "execute if score _shake bce_sys matches 1 run camerashake add %s %s %s positional" % (who, i, s)


def build_engine(F: FnSet, step_info):
    bootstrap(F, step_info)
    core(F)
    player(F)
    abilities(F)
    enemies(F)
    boss(F)
    quests(F)
    world(F)
    ui(F)
    admin(F, step_info)


# ---------------------------------------------------------------- bootstrap
def bootstrap(F, step_info):
    objs = [SYS] + PLAYER_OBJ + ENEMY_OBJ
    F.emit("bootstrap/objectives", ["scoreboard objectives add %s dummy" % o for o in objs],
           doc="idempotent: re-adding an objective only prints an error")
    F.emit("bootstrap/gamerules", [
        "gamerule domobspawning false", "gamerule mobgriefing false", "gamerule keepinventory true",
        "gamerule doimmediaterespawn true", "gamerule dodaylightcycle false", "gamerule doweathercycle false",
        "gamerule commandblockoutput false", "gamerule sendcommandfeedback false", "gamerule showcoordinates true",
        "gamerule pvp false", "gamerule tntexplodes false", "gamerule doinsomnia false", "gamerule domobloot false",
        "gamerule maxcommandchainlength 65535", "difficulty normal", "time set 18000", "weather clear"])
    consts = [("_c2", 2), ("_c5", 5), ("_c10", 10), ("_c20", 20), ("_regen", ST["regen_per_5_ticks"]),
              ("_regen_c", max(1, ST["regen_per_5_ticks"] // 2)), ("_cost_dodge", ST["cost_dodge"]),
              ("_cost_heavy", ST["cost_heavy"]), ("_cost_ult", ST["cost_ult"]),
              ("_cost_dash", ST["cost_dash"]), ("_cost_bslash", ST["cost_bslash"]), ("_cost_judge", ST["cost_judge"]), ("_c19", 19), ("_c100", 100), ("_c4", 4), ("_c200", 200),
              ("_quality", 1), ("_shake", 1), ("_mode", 0), ("_bhp", 1000), ("_bstate", 0), ("_started", 0),
              ("_bshow", 0), ("_aretry", 0), ("_await", 0), ("_zok0", 0), ("_zok1", 0), ("_zok2", 0), ("_zok3", 0), ("_zok4", 0), ("_bsm", 0), ("_bstep", 0), ("_bstop", 0), ("_bstart", 0), ("_bready", 0), ("_bwait", 0), ("_berr", 0), ("_bzone", 0), ("_bstage", 0), ("_bzstart", 0), ("_bmode", 0), ("_state", 0)]
    lines = ["execute unless score %s bce_sys matches -2147483648..2147483647 run scoreboard players set %s bce_sys %d" % (n, n, v)
             for n, v in consts]
    F.emit("bootstrap/constants", lines, doc="sets defaults only when a value does not exist (admin tuning survives re-install)")
    F.emit("bootstrap/install", [
        "tag @s add bce_admin",
        "function bootstrap/objectives", "function bootstrap/gamerules", "function bootstrap/constants",
        "execute unless score _astate bce_sys matches 1.. run function auto/initialize",
        "execute if score _astate bce_sys matches 1.. run function debug/status"],
        doc="ADMIN (manual) entry. Players never need it: tick.json -> auto/tick installs & builds by itself. Idempotent.")
    F.emit("bootstrap/recover", [
        "scoreboard players set _state bce_sys 2", "kill @e[tag=bce_enemy]", "kill @e[tag=bce_boss]",
        "scoreboard players set _bstate bce_sys 0",
        "execute as @a[tag=bce_cs] run function cutscenes/force_end",
        "execute if score _built bce_sys matches 1 run scoreboard players set _state bce_sys 7",
        TELL("@a", "§e[BCE] 오류 복구를 실행했습니다.")], doc="ERROR(14) recovery: /function bootstrap/recover")
    F.emit("bootstrap/uninstall", [
        "scoreboard players set _state bce_sys 13", "kill @e[tag=bce_enemy]", "kill @e[tag=bce_boss]",
        "execute as @a[tag=bce_cs] run function cutscenes/force_end",
        "tickingarea remove_all", "scoreboard players set _state bce_sys 0",
        TELL("@a", "§e[BCE] 엔진을 정지했습니다 (RESETTING->UNINITIALIZED). 맵 블록은 남아 있습니다.")],
        doc="stop the engine (keeps scores & map)")


# ---------------------------------------------------------------- core
def core(F, ):
    F.emit("core/tick", [
        "scoreboard players add _tick bce_sys 1",
        "execute if score _state bce_sys matches 3 run function build/step",
        "execute if score _state bce_sys matches 4..12 run function core/run"],
        doc="tick.json dispatcher. Does nothing while state is 0..2 (not installed/initialising).")
    F.emit("core/run", [
        "function player/new_players",
        "function player/input",
        "function player/timers",
        "function cutscenes/dispatch",
        "function enemies/tick",
        "execute if score _bstate bce_sys matches 1.. run function bosses/tick",
        "scoreboard players operation _m5 bce_sys = _tick bce_sys",
        "scoreboard players operation _m5 bce_sys %= _c5 bce_sys",
        "execute if score _m5 bce_sys matches 0 run function core/every5",
        "scoreboard players operation _m10 bce_sys = _tick bce_sys",
        "scoreboard players operation _m10 bce_sys %= _c10 bce_sys",
        "execute if score _m10 bce_sys matches 0 run function core/every10",
        "scoreboard players operation _m20 bce_sys = _tick bce_sys",
        "scoreboard players operation _m20 bce_sys %= _c20 bce_sys",
        "execute if score _m20 bce_sys matches 0 run function core/every20"],
        doc="central scheduler: per-tick = input/cooldowns/cutscenes/AI/boss; 5/10/20-tick slots for the rest")
    F.emit("core/every5", [
        "function player/stamina", "function ui/hud", "execute if score _puzzle bce_sys matches 1 run function world/bridge_step"])
    F.emit("core/every10", [
        "function game/start_check", "function quests/check", "function checkpoints/check",
        "function world/puzzle_check", "function world/wall_logic", "function bosses/check_start",
        "function world/citadel_door"])
    F.emit("core/every20", [
        "function core/safety", "function core/state_sync", "function world/traps", "function effects/ambient",
        "execute if score _bstate bce_sys matches 2 run function bosses/corrupt_tick"])
    F.emit("core/state_sync", [
        "scoreboard players set _state bce_sys 7",
        "execute unless score _started bce_sys matches 1.. run scoreboard players set _state bce_sys 4",
        "execute if entity @a[scores={bce_ps=2}] run scoreboard players set _state bce_sys 6",
        "execute if entity @a[tag=bce_comb] run scoreboard players set _state bce_sys 8",
        "execute if entity @a[tag=bce_cs] run scoreboard players set _state bce_sys 5",
        "execute if score _bstate bce_sys matches 2 run scoreboard players set _state bce_sys 9",
        "execute if score _qflash bce_sys matches 1.. run scoreboard players set _state bce_sys 10",
        "execute if score _qflash bce_sys matches 1.. run scoreboard players remove _qflash bce_sys 1",
        "execute if score _bdead bce_sys matches 1 if score _bstate bce_sys matches 4 run scoreboard players set _state bce_sys 12"],
        doc="derives the global state (4..12) from player/boss state. 12 is sticky only via bosses/finish_game")
    F.emit("core/safety", [
        "execute as @a[tag=bce_cs,scores={bce_cst=1500..}] run function cutscenes/force_end",
        "execute as @a[tag=bce_cs,scores={bce_cs=0}] run function cutscenes/force_end",
        "tag @a remove bce_comb",
        "execute as @a[tag=!bce_cs] run inputpermission set @s movement enabled",
        "execute as @a[tag=!bce_cs] run inputpermission set @s camera enabled"],
        doc="recovery nets: stuck cutscenes, orphan input locks, stale combat tags")


# ---------------------------------------------------------------- player
def player(F):
    F.emit("player/new_players", ["execute as @a[tag=!bce_init] run function player/init"])
    F.emit("player/init", [
        "tag @s add bce_init", "tag @s add bce_ctl",
        "scoreboard players set @s bce_stam %d" % ST["max"],
        "scoreboard players set @s bce_cdslash 0", "scoreboard players set @s bce_cddodge 0",
        "scoreboard players set @s bce_cdult 0", "scoreboard players set @s bce_cdheal 0",
        "scoreboard players set @s bce_combo 0", "scoreboard players set @s bce_cwin 0",
        "scoreboard players set @s bce_iframe 0", "scoreboard players set @s bce_cur 0",
        "scoreboard players set @s bce_prev 0", "scoreboard players set @s bce_q 0",
        "scoreboard players set @s bce_cp 0", "scoreboard players set @s bce_ps 0",
        "scoreboard players set @s bce_cs 0", "scoreboard players set @s bce_cst 0",
        TELL("@s", "§b[검은별의 성채] §f환영합니다. 시작 패드에 서면 오프닝이 시작됩니다.")],
        doc="one-time per player (tag bce_init persists across rejoin => quest data is never reset)")
    # --- input: hotbar selection edge detection
    items = SK["items"]
    lines = ["scoreboard players set @a bce_cur 0"]
    for k, it in items.items():
        lines.append("execute as @a[hasitem={item=%s,location=slot.weapon.mainhand}] run scoreboard players set @s bce_cur %s" % (it, k))
    lines += [
        "execute as @a[tag=bce_cs,scores={bce_cst=20..}] unless score @s bce_cur = @s bce_prev if score @s bce_cur matches 20 at @s run function cutscenes/skip",
        "execute as @a[tag=bce_ctl,tag=!bce_cs,scores={bce_ps=2..}] unless score @s bce_cur = @s bce_prev if score @s bce_cur matches 1..19 at @s run function abilities/dispatch",
        "scoreboard players operation @a bce_prev = @a bce_cur"]
    F.emit("player/input", lines,
           doc="ONE-SHOT trigger: an ability fires only when the selected skill item CHANGES (re-select to fire again)")
    F.emit("player/timers", [
        "scoreboard players remove @a[scores={bce_cdslash=1..}] bce_cdslash 1",
        "scoreboard players remove @a[scores={bce_cddodge=1..}] bce_cddodge 1",
        "scoreboard players remove @a[scores={bce_cdult=1..}] bce_cdult 1",
        "scoreboard players remove @a[scores={bce_cdheal=1..}] bce_cdheal 1",
        "scoreboard players remove @a[scores={bce_cddash=1..}] bce_cddash 1",
        "scoreboard players remove @a[scores={bce_cdbslash=1..}] bce_cdbslash 1",
        "scoreboard players remove @a[scores={bce_cdjudge=1..}] bce_cdjudge 1",
        "execute as @a[scores={bce_ultt=1..}] at @s run function abilities/judge_tick",
        "scoreboard players remove @a[scores={bce_cwin=1..}] bce_cwin 1",
        "scoreboard players set @a[scores={bce_cwin=0,bce_combo=1..}] bce_combo 0",
        "scoreboard players remove @a[scores={bce_iframe=1..}] bce_iframe 1",
        "tag @a[scores={bce_iframe=0},tag=bce_iframe] remove bce_iframe"],
        doc="per-player cooldown / combo window / i-frame timers")
    F.emit("player/stamina", [
        "scoreboard players operation @a[scores={bce_stam=..99},tag=!bce_comb] bce_stam += _regen bce_sys",
        "scoreboard players operation @a[scores={bce_stam=..99},tag=bce_comb] bce_stam += _regen_c bce_sys",
        "scoreboard players set @a[scores={bce_stam=%d..}] bce_stam %d" % (ST["max"] + 1, ST["max"])],
        doc="every 5 ticks; half regen in combat")
    F.emit("game/start_check", [
        "execute if score _state bce_sys matches 4.. as @a[scores={bce_ps=0},tag=!bce_cs] at @s if entity @s[%s] run function game/begin" % A("start_pad")])
    F.emit("game/begin", [
        "scoreboard players set @s bce_ps 1", "execute if score _astate bce_sys matches 4 run scoreboard players set _astate bce_sys 5",
        "function cutscenes/opening/start"],
        doc="run as player. also: /execute as @s run function game/begin")
    F.emit("game/start", ["execute as @s[scores={bce_ps=0}] run function game/begin"], doc="manual start (as player)")


# ---------------------------------------------------------------- abilities
def abilities(F):
    sl = SK["slash"]
    F.emit("abilities/dispatch", [
        "execute if score @s bce_cur matches 1 run function abilities/slash",
        "execute if score @s bce_cur matches 2 run function abilities/dodge_f",
        "execute if score @s bce_cur matches 3 run function abilities/dodge_b",
        "execute if score @s bce_cur matches 4 run function abilities/dodge_l",
        "execute if score @s bce_cur matches 5 run function abilities/dodge_r",
        "execute if score @s bce_cur matches 6 run function abilities/ult",
        "execute if score @s bce_cur matches 7 run function abilities/heal",
        "execute if score @s bce_cur matches 8 run function abilities/dash",
        "execute if score @s bce_cur matches 10 run function abilities/bslash",
        "execute if score @s bce_cur matches 11 run function abilities/judge"],
        doc="as player at @s. cur: 1 slash 2-5 dodge F/B/L/R 6 shockwave 7 heal 8 star dash 10 blackstar slash 11 star judgment")
    F.emit("abilities/slash", ["execute if score @s bce_cdslash matches 0 run function abilities/slash_go"])
    F.emit("abilities/slash_go", [
        "scoreboard players add @s bce_combo 1",
        "execute if score @s bce_combo matches 4.. run scoreboard players set @s bce_combo 1",
        "execute if score @s bce_combo matches 3 unless score @s bce_stam >= _cost_heavy bce_sys run scoreboard players set @s bce_combo 1",
        "execute if score @s bce_combo matches 1 run function abilities/slash_1",
        "execute if score @s bce_combo matches 2 run function abilities/slash_2",
        "execute if score @s bce_combo matches 3 run function abilities/slash_3",
        "scoreboard players set @s bce_cwin %d" % SK["combo_window_ticks"]])
    for s in sl:
        n = s["stage"]
        pos = "positioned ^ ^0.8 ^%s" % s["reach"]
        lines = [
            "scoreboard players set @s bce_cdslash %d" % s["cooldown"],
            "execute %s run damage @e[tag=bce_enemy,r=%s] %d entity_attack entity @s" % (pos, s["radius"], s["damage"]),
            "execute %s if entity @e[tag=bce_boss,r=%s] if score _mode bce_sys matches 0 if score _binv bce_sys matches 0 run scoreboard players remove _bhp bce_sys %d" % (pos, s["radius"], s["boss_ledger"]),
            "execute %s run particle minecraft:critical_hit_emitter ~ ~ ~" % pos,
            "playsound game.player.attack.strong @a ~ ~ ~ 0.7 %s" % (1.3 - 0.15 * n),
        ]
        if n >= 2:
            lines.append(fx(1, "execute %s run particle minecraft:basic_crit_particle ~ ~0.3 ~" % pos))
        if n == 3:
            lines += [
                "scoreboard players operation @s bce_stam -= _cost_heavy bce_sys",
                "execute %s as @e[tag=bce_enemy,tag=!bce_boss,r=%s] run function enemies/stun" % (pos, s["radius"]),
                fx(2, "execute %s run particle minecraft:explosion_particle ~ ~ ~" % pos),
                SHAKE(0.25, 0.2)]
        else:
            lines.append(SHAKE(0.08, 0.1))
        F.emit("abilities/slash_%d" % n, lines, doc="combo stage %d: reach %s radius %s dmg %d" % (n, s["reach"], s["radius"], s["damage"]))
    d = SK["dodge"]
    dirs = {"f": "^ ^ ^1", "b": "^ ^ ^-1", "l": "^1 ^ ^", "r": "^-1 ^ ^"}
    for k, v in dirs.items():
        F.emit("abilities/dodge_" + k, [
            "execute if score @s bce_cddodge matches 0 if score @s bce_stam >= _cost_dodge bce_sys run function abilities/dodge_%s_go" % k])
        step = ("execute at @s rotated ~ 0 if block %s air if block %s air unless block %s air unless block %s lava run tp @s %s"
                % (v, v.replace("^ ^", "^ ^1 ^", 1) if False else _up(v), _down(v), _down(v), v))
        # unless block floor: need solid-ish floor (not air); lava excluded below
        F.emit("abilities/dodge_%s_go" % k, [
            "scoreboard players operation @s bce_stam -= _cost_dodge bce_sys",
            "scoreboard players set @s bce_cddodge %d" % d["cooldown"],
            "scoreboard players set @s bce_iframe %d" % d["iframes"],
            "tag @s add bce_iframe",
            "effect @s resistance 1 4 true",
            "playsound random.pop @a ~ ~ ~ 0.8 1.4",
            "particle minecraft:basic_smoke_particle ~ ~0.3 ~"] + [step] * d["steps"] +
            ["particle minecraft:basic_smoke_particle ~ ~0.3 ~"],
            doc="dodge %s: stamina, cooldown, i-frames (tag+resistance), wall/edge-safe stepwise teleport" % k)
    u = SK["ult"]
    F.emit("abilities/ult", ["execute if score @s bce_cdult matches 0 if score @s bce_stam >= _cost_ult bce_sys run function abilities/ult_go"])
    F.emit("abilities/ult_go", [
        "scoreboard players operation @s bce_stam -= _cost_ult bce_sys",
        "scoreboard players set @s bce_cdult %d" % u["cooldown"],
        "damage @e[tag=bce_enemy,r=%d] %d entity_attack entity @s" % (u["radius"], u["damage"]),
        "execute if entity @e[tag=bce_boss,r=%d] if score _mode bce_sys matches 0 if score _binv bce_sys matches 0 run scoreboard players remove _bhp bce_sys %d" % (u["radius"], u["boss_ledger"]),
        "execute as @e[tag=bce_enemy,tag=!bce_boss,r=%d] run function enemies/stun" % u["radius"],
        "playsound random.explode @a ~ ~ ~ 0.8 1.2",
        "particle minecraft:huge_explosion_emitter ~ ~1 ~"] + ring(0, 0, 4, 12, "minecraft:totem_particle", 0.3) + [SHAKE(0.3, 0.3)],
        doc="shockwave: sphere r=%d around the player" % u["radius"])
    F.emit("abilities/heal", ["execute if score @s bce_cdheal matches 0 run function abilities/heal_go"])
    F.emit("abilities/heal_go", [
        "scoreboard players set @s bce_cdheal %d" % SK["heal"]["cooldown"],
        "effect @s regeneration 6 2 true", "effect @s instant_health 1 0 true",
        "particle minecraft:villager_happy ~ ~1 ~", "playsound random.levelup @s ~ ~ ~ 0.5 1.5"])

    D = SK["dash"]; B = SK["black_slash"]; J = SK["judgment"]
    F.emit("abilities/dash", ["execute if score @s bce_cddash matches 0 if score @s bce_stam >= _cost_dash bce_sys run function abilities/dash_go"])
    stepf = "execute at @s rotated ~ 0 if block ^ ^ ^1 air if block ^ ^1 ^1 air unless block ^ ^-1 ^1 air unless block ^ ^-1 ^1 lava run tp @s ^ ^ ^1"
    F.emit("abilities/dash_go", [
        "scoreboard players operation @s bce_stam -= _cost_dash bce_sys",
        "scoreboard players set @s bce_cddash %d" % D["cooldown"], "scoreboard players set @s bce_iframe %d" % D["iframes"], "tag @s add bce_iframe",
        "particle minecraft:endrod ~ ~1 ~", "playsound random.orb @a ~ ~ ~ 0.8 1.6"] + [stepf] * D["steps"] + [
        "execute positioned ^ ^0.8 ^1 run damage @e[tag=bce_enemy,r=%s] %d entity_attack entity @s" % (D["radius"], D["damage"]),
        "execute positioned ^ ^0.8 ^1 if entity @e[tag=bce_boss,r=%s] if score _mode bce_sys matches 0 if score _binv bce_sys matches 0 run scoreboard players remove _bhp bce_sys %d" % (D["radius"], D["boss_ledger"]),
        fx(1, "particle minecraft:totem_particle ~ ~1 ~"), SHAKE(0.12, 0.12)],
        doc="SKILL 3: star dash = wall/edge-safe forward move, then one strike around the landing point")
    F.emit("abilities/bslash", ["execute if score @s bce_cdbslash matches 0 if score @s bce_stam >= _cost_bslash bce_sys run function abilities/bslash_go"])
    ds = [1.5 + 1.5 * i for i in range(int(B["length"] / 1.5))]
    bl = ["scoreboard players operation @s bce_stam -= _cost_bslash bce_sys", "scoreboard players set @s bce_cdbslash %d" % B["cooldown"]]
    for d in ds:
        bl.append("execute positioned ^ ^1 ^%s run tag @e[tag=bce_enemy,r=1.6] add bce_hitmark" % d)
        bl.append("execute positioned ^ ^1 ^%s run particle minecraft:soul_particle ~ ~ ~" % d)
        bl.append(fx(1, "execute positioned ^ ^1 ^%s run particle minecraft:endrod ~ ~ ~" % d))
    bl += ["damage @e[tag=bce_hitmark] %d entity_attack entity @s" % B["damage"],
           "execute if entity @e[tag=bce_hitmark,tag=bce_boss] if score _mode bce_sys matches 0 if score _binv bce_sys matches 0 run scoreboard players remove _bhp bce_sys %d" % B["boss_ledger"],
           "tag @e[tag=bce_hitmark] remove bce_hitmark", "playsound mob.wither.spawn @a ~ ~ ~ 0.4 2", SHAKE(0.3, 0.25)]
    F.emit("abilities/bslash_go", bl, doc="SKILL 4: straight line of %d sphere probes; hit-mark tag prevents double damage" % len(ds))
    F.emit("abilities/judge", ["execute if score @s bce_cdjudge matches 0 if score @s bce_stam >= _cost_judge bce_sys if score @s bce_ultt matches 0 run function abilities/judge_go"])
    F.emit("abilities/judge_go", [
        "scoreboard players operation @s bce_stam -= _cost_judge bce_sys", "scoreboard players set @s bce_cdjudge %d" % J["cooldown"],
        "scoreboard players set @s bce_ultt 1", "scoreboard players set @s bce_iframe %d" % J["iframes"], "tag @s add bce_iframe",
        "titleraw @s actionbar " + TXT("§d별의 심판 — 별빛을 모은다…"), "playsound random.levelup @a ~ ~ ~ 1 0.5"],
        doc="ULTIMATE step 1/4 (prepare): invulnerable while charging")
    jt = ["scoreboard players add @s bce_ultt 1"]
    jt += ["execute if score @s bce_ultt matches %d run %s" % (t, c) for t, cs in [(2, ring(0, 0, 3, 12, "minecraft:totem_particle", 0.2)), (10, ring(0, 0, 6, 16, "minecraft:soul_particle", 0.3))] for c in cs]
    jt += ["execute if score @s bce_ultt matches 10 run " + SHAKE(0.15, 0.4),
           "execute if score @s bce_ultt matches 20 run damage @e[tag=bce_enemy,r=%d] %d entity_attack entity @s" % (J["radius_inner"], J["damage_inner"]),
           "execute if score @s bce_ultt matches 20 if entity @e[tag=bce_boss,r=%d] if score _mode bce_sys matches 0 if score _binv bce_sys matches 0 run scoreboard players remove _bhp bce_sys %d" % (J["radius_inner"], J["boss_ledger"]),
           "execute if score @s bce_ultt matches 20 run particle minecraft:huge_explosion_emitter ~ ~1 ~",
           "execute if score @s bce_ultt matches 20 run playsound random.explode @a ~ ~ ~ 1 0.7",
           "execute if score @s bce_ultt matches 20 run " + SHAKE(0.45, 0.5),
           "execute if score @s bce_ultt matches 26 run damage @e[tag=bce_enemy,tag=!bce_boss,r=%d] %d entity_attack entity @s" % (J["radius_outer"], J["damage_outer"]),
           "execute if score @s bce_ultt matches 26 run " + fx(1, "particle minecraft:huge_explosion_emitter ~4 ~1 ~"),
           "execute if score @s bce_ultt matches 40 run titleraw @s actionbar " + TXT("§d별의 심판 완료"),
           "execute if score @s bce_ultt matches 40.. run scoreboard players set @s bce_ultt 0"]
    F.emit("abilities/judge_tick", jt, doc="ULTIMATE steps 2-4: effect ring (t=2,10) -> inner damage (t=20) -> outer damage (t=26) -> end (t=40)")


def _up(v):
    p = v.split(" ")
    return "%s ^1 %s" % (p[0], p[2])


def _down(v):
    p = v.split(" ")
    return "%s ^-1 %s" % (p[0], p[2])


# ---------------------------------------------------------------- enemies
def enemies(F):
    F.emit("enemies/tick", [
        "scoreboard players operation _m2 bce_sys = _tick bce_sys",
        "scoreboard players operation _m2 bce_sys %= _c2 bce_sys",
        "execute if score _m2 bce_sys matches 0 as @e[tag=bce_enemy,tag=!bce_boss] at @s run function enemies/ai_one"],
        doc="AI runs every 2 ticks on tagged enemies only (unloaded chunks cost nothing)")
    F.emit("enemies/ai_one", [
        "scoreboard players add @s bce_aitm 2",
        "execute if entity @s[scores={bce_ai=1..7}] run tag @a[r=14] add bce_comb",
        "execute if score @s bce_ai matches 0 run function enemies/st_idle",
        "execute if score @s bce_ai matches 1 run function enemies/st_detect",
        "execute if score @s bce_ai matches 2 run function enemies/st_chase",
        "execute if score @s bce_ai matches 3 run function enemies/st_prepare",
        "execute if score @s bce_ai matches 5 run function enemies/st_recover",
        "execute if score @s bce_ai matches 6 run function enemies/st_stun",
        "execute if score @s bce_ai matches 7 run function enemies/st_return",
        "execute if score @s bce_ai matches 8 run function enemies/st_patrol"],
        doc="states: 0 IDLE 1 DETECT 2 CHASE 3 ATTACK_PREPARE 4 ATTACK(instant, see atk_*) 5 RECOVERY 6 STUNNED 7 RETURN 8 PATROL 9 DEAD(entity removed => no function can run)")
    setai = lambda n: ["scoreboard players set @s bce_ai %d" % n, "scoreboard players set @s bce_aitm 0"]
    F.emit("enemies/st_idle", ["execute if entity @a[r=14,tag=bce_ctl] run function enemies/to_detect",
                               "execute if entity @s[tag=bce_patrol] unless entity @a[r=14,tag=bce_ctl] if score @s bce_aitm matches 60.. run function enemies/to_patrol"])
    F.emit("enemies/to_patrol", setai(8) + ["tp @s ~ ~ ~ ~73 ~"])
    pat = ["execute if entity @a[r=14,tag=bce_ctl] run function enemies/to_detect",
           "execute unless block ^ ^ ^1 air run tp @s ~ ~ ~ ~100 ~"]
    for t in range(10, 90, 10):
        pat.append("execute if score @s bce_aitm matches %d if block ^ ^ ^1 air if block ^ ^1 ^1 air unless block ^ ^-1 ^1 air run tp @s ^ ^ ^1" % t)
    pat.append("execute if score @s bce_aitm matches 90.. run function enemies/to_idle")
    F.emit("enemies/st_patrol", pat, doc="PATROL: walk 8 blocks in short hops (air/floor checked), turn at walls, return to IDLE; aggro on sight")
    F.emit("enemies/to_detect", setai(1) + ["particle minecraft:critical_hit_emitter ~ ~2.2 ~", "playsound random.pop @a ~ ~ ~ 0.6 0.7"])
    F.emit("enemies/st_detect", [
        "execute unless entity @a[r=20,tag=bce_ctl] run function enemies/to_idle",
        "execute if score @s bce_aitm matches 8.. if entity @a[r=20,tag=bce_ctl] run function enemies/to_chase"])
    F.emit("enemies/to_idle", setai(0))
    chase = setai(2)
    for k, e in EN.items():
        for f in e["fx"]:
            chase.append("execute if entity @s[tag=bce_%s] run effect @s %s true" % (k, f))
    F.emit("enemies/to_chase", chase)
    F.emit("enemies/st_chase", [
        "execute unless entity @a[r=26,tag=bce_ctl] run function enemies/to_return",
        "execute if entity @s[tag=!bce_e3] if entity @a[r=2.8,tag=bce_ctl] run function enemies/to_prepare",
        "execute if entity @s[tag=bce_e3] if entity @a[r=5,tag=bce_ctl] run function enemies/to_reposition"])
    F.emit("enemies/to_prepare", setai(3) + ["playsound note.bell @a ~ ~ ~ 0.8 0.6"])
    pre = ["effect @s slowness 1 6 true", "particle minecraft:basic_flame_particle ^ ^1 ^1.4",
           fx(1, "particle minecraft:basic_flame_particle ^0.4 ^1.3 ^1.4")]
    for k in ("e1", "e2", "e4"):
        pre.append("execute if entity @s[tag=bce_%s] if score @s bce_aitm matches %d.. run function enemies/atk_%s" % (k, EN[k]["warn"], k))
    F.emit("enemies/st_prepare", pre, doc="warning window before damage = per-type 'warn' ticks")
    for k in ("e1", "e2", "e4"):
        e = EN[k]
        sel = "@a[r=2,tag=bce_ctl,tag=!bce_iframe]"
        F.emit("enemies/atk_" + k, [
            "execute positioned ^ ^ ^1.4 run " + SHAKE(0.15, 0.15, "@a[r=2,tag=bce_ctl,tag=!bce_iframe]")] +
            ["execute positioned ^ ^ ^1.4 run " + h for h in hit(sel, e["dmg"], 8)] +
            ["particle minecraft:critical_hit_emitter ^ ^1 ^1.4", "playsound random.break @a ~ ~ ~ 0.7 0.8"] +
            setai(5), doc="ATTACK: damage lands only in front (r=2 at 1.4 blocks), skipped for i-framed players")
    rec = []
    for k, e in EN.items():
        if k == "e3":
            continue
        rec.append("execute if entity @s[tag=bce_%s] if score @s bce_aitm matches %d.. run function enemies/to_chase" % (k, e["recover"]))
    rec.append("execute if entity @s[tag=bce_e3] if score @s bce_aitm matches 40.. run function enemies/to_chase")
    rec.append("execute if entity @s[tag=bce_e2] if score @s bce_aitm matches 2 run function enemies/retreat")
    rec.append("execute if entity @s[tag=bce_e3] if score @s bce_aitm matches 2 run function enemies/retreat")
    rec.append("effect @s slowness 1 3 true")
    F.emit("enemies/st_recover", rec)
    back = "execute at @s facing entity @p[r=10,tag=bce_ctl] feet if block ^ ^ ^-1 air if block ^ ^1 ^-1 air unless block ^ ^-1 ^-1 air run tp @s ^ ^ ^-1"
    F.emit("enemies/retreat", [back] * 4, doc="back off up to 4 blocks, never into walls or over edges")
    F.emit("enemies/to_reposition", setai(5) + ["playsound note.bell @a ~ ~ ~ 0.6 1.4"])
    F.emit("enemies/stun", setai(6) + ["effect @s slowness 2 255 true", "particle minecraft:villager_angry ~ ~2 ~"])
    F.emit("enemies/st_stun", ["effect @s slowness 1 255 true", "execute if score @s bce_aitm matches 30.. run function enemies/to_chase"])
    F.emit("enemies/to_return", setai(7))
    F.emit("enemies/st_return", [
        "execute if entity @a[r=14,tag=bce_ctl] run function enemies/to_detect",
        "execute if score @s bce_aitm matches 100.. unless entity @s[tag=bce_wave] run kill @s",
        "execute if score @s bce_aitm matches 100.. if entity @s[tag=bce_wave] run function enemies/to_idle"],
        doc="RETURN: lost target. temporary enemies despawn; scripted wave enemies go back to IDLE")
    for k, e in EN.items():
        init = ["tag @s add bce_enemy", "tag @s add bce_" + k, "scoreboard players set @s bce_ai 0", "scoreboard players set @s bce_aitm 0"]
        if k != "e3":
            init.append("effect @s weakness 100000 255 true")   # vanilla melee neutralised; damage is scripted (telegraphed)
        for f in e["fx"]:
            init.append("effect @s %s true" % f)
        if e["hp_boost"]:
            init.append("effect @s health_boost 100000 %d true" % e["hp_boost"])
            init.append("effect @s instant_health 1 10 true")
        F.emit("enemies/init_" + k, init)
        F.emit("enemies/spawn_" + k, [
            'summon %s ~ ~ ~ 0 0 %s "%s"' % (e["entity"], e["event"], e["name"]),
            "execute as @e[type=%s,r=1.5,c=1,tag=!bce_enemy] run function enemies/init_%s" % (e["entity"], k)],
            doc="run with `execute positioned X Y Z run function enemies/spawn_%s`" % k)


# ---------------------------------------------------------------- boss
def boss(F):
    bsel = "@e[tag=bce_boss]"
    pl_in = "@a[%s,tag=bce_ctl,tag=!bce_iframe]" % ARENA
    ax, ay, az = ARC
    F.emit("bosses/summon", [
        "scoreboard players set _bstate bce_sys 1", "scoreboard players set _bhp bce_sys 1000",
        "scoreboard players set _bphase bce_sys 1", "scoreboard players set _btimer bce_sys 0",
        "scoreboard players set _binv bce_sys 0", "scoreboard players set _bfin bce_sys 0",
        "scoreboard players set _bftimer bce_sys 0", "scoreboard players set _bq bce_sys 0",
        "scoreboard players set _btrack bce_sys 1", "scoreboard players set _bempty bce_sys 0",
        "scoreboard players set _bmiss bce_sys 0", "kill " + bsel,
        'execute if score _mode bce_sys matches 0 run summon wither_skeleton %d %d %d 0 0 minecraft:entity_spawned "§c검은별의 수호자"' % (ax, ay, az),
        'execute if score _mode bce_sys matches 1 run summon bce:citadel_guardian %d %d %d 0 0 minecraft:entity_spawned "§c검은별의 수호자"' % (ax, ay, az),
        "execute positioned %d %d %d run tag @e[type=wither_skeleton,r=4,tag=!bce_boss] add bce_boss" % (ax, ay, az),
        "execute positioned %d %d %d run tag @e[type=bce:citadel_guardian,r=4,tag=!bce_boss] add bce_boss" % (ax, ay, az),
        "tag %s add bce_enemy" % bsel, "effect %s slowness 100000 255 true" % bsel,
        "execute if score _mode bce_sys matches 1 run playanimation @e[tag=bce_boss] animation.bce_guardian.boss_intro"],
        doc="idempotent per fight: guarded by _bstate==0 at call sites")
    F.emit("bosses/begin", [
        "scoreboard players set _bstate bce_sys 2", "scoreboard players set _btimer bce_sys 0",
        "effect %s clear" % bsel,
        "execute if score _mode bce_sys matches 0 run effect %s weakness 100000 255 true" % bsel,
        "execute if score _mode bce_sys matches 0 run effect %s health_boost 100000 100 true" % bsel,
        "execute if score _mode bce_sys matches 0 run effect %s instant_health 1 20 true" % bsel,
        "execute if score _mode bce_sys matches 0 run effect %s resistance 100000 3 true" % bsel,
        "tag @a[%s] add bce_comb" % ARENA, "scoreboard players set @a[%s] bce_ps 5" % ARENA,
        TELL("@a[%s]" % ARENA, "§c[보스전] §f경고 표시를 보고 회피하세요!")],
        doc="BOSS_BATTLE starts (called at the end of the intro cutscene)")
    F.emit("bosses/check_start", [
        "execute if score _bstate bce_sys matches 0 if entity @a[scores={bce_q=7..},%s] as @a[%s,tag=!bce_cs] at @s run function cutscenes/boss_intro/start" % (ARENA, ARENA)],
        doc="starts the intro for every player inside the arena (summon is guarded by _bstate)")
    F.emit("bosses/tick", [
        "execute if score _bstate bce_sys matches 2 run function bosses/fight",
        "execute if score _bstate bce_sys matches 2 run function bosses/watch",
        "execute if score _bstate bce_sys matches 1 run function bosses/watch_intro",
        "execute if score _bstate bce_sys matches 3 unless entity @a[tag=bce_cs] run function bosses/victory_world"],
        doc="bstate: 0 idle 1 intro 2 fight 3 dying 4 done. fallbacks keep the state machine from sticking")
    F.emit("bosses/watch_intro", [
        "execute if entity @a[%s] run scoreboard players set _bempty bce_sys 0" % ARENA,
        "execute unless entity @a[%s] run scoreboard players add _bempty bce_sys 1" % ARENA,
        "execute if score _bempty bce_sys matches 100.. run function bosses/reset"])
    # patterns: phase -> (cycle, [(t, fn)])
    P = {
        1: (180, [(20, "w_slash"), (40, "h_slash"), (45, "track"), (70, "w_charge"), (95, "h_charge"), (100, "track"),
                  (125, "w_slam"), (150, "h_slam"), (158, "track")]),
        2: (130, [(10, "w_slash"), (24, "h_slash"), (30, "track"), (40, "tp_behind"), (46, "w_slash"), (58, "h_slash"), (62, "track"),
                  (75, "w_slam"), (95, "h_slam"), (100, "track"), (105, "w_charge"), (122, "h_charge"), (127, "track")]),
        3: (110, [(8, "w_quad"), (36, "h_quad"), (40, "track"), (44, "w_slash"), (58, "h_slash"), (62, "track"),
                  (70, "w_slam"), (88, "h_slam"), (92, "track"), (94, "w_charge"), (108, "h_charge")]),
    }
    fight = [
        "scoreboard players add _btimer bce_sys 1",
        "execute if score _binv bce_sys matches 1.. run scoreboard players remove _binv bce_sys 1",
        "execute if score _btrack bce_sys matches 1 as %s at @s run tp @s ~ ~ ~ facing @p[tag=bce_ctl,tag=!bce_cs]" % bsel,
        "execute if score _bphase bce_sys matches 1 if score _bhp bce_sys matches ..650 run function bosses/to_phase2",
        "execute if score _bphase bce_sys matches 2 if score _bhp bce_sys matches ..300 run function bosses/to_phase3",
        "execute if score _bfin bce_sys matches 0 if score _bhp bce_sys matches ..100 run function bosses/final_start",
        "execute if score _bfin bce_sys matches 1 run function bosses/final_tick",
        "scoreboard players operation _bpct bce_sys = _bhp bce_sys",
        "scoreboard players operation _bpct bce_sys /= _c10 bce_sys"]
    for ph, (cyc, ev) in P.items():
        for t, fn in ev:
            fight.append("execute if score _binv bce_sys matches 0 if score _bphase bce_sys matches %d if score _btimer bce_sys matches %d run function bosses/%s" % (ph, t, fn))
        fight.append("execute if score _bphase bce_sys matches %d if score _btimer bce_sys matches %d.. run scoreboard players set _btimer bce_sys 0" % (ph, cyc))
    fight.append("execute if score _bhp bce_sys matches ..0 run function bosses/death")
    F.emit("bosses/fight", fight, doc="pattern timeline per phase; each attack = WARN (>=12 ticks) -> HIT -> recover (facing resumes)")
    F.emit("bosses/track", ["scoreboard players set _btrack bce_sys 1"])
    F.emit("bosses/watch", [
        "execute if entity @a[%s] run scoreboard players set _bempty bce_sys 0" % ARENA,
        "execute unless entity @a[%s] run scoreboard players add _bempty bce_sys 1" % ARENA,
        "execute if score _bempty bce_sys matches 100.. run function bosses/reset",
        "execute if entity @a[%s] unless entity @e[tag=bce_boss] run scoreboard players add _bmiss bce_sys 1" % ARENA,
        "execute if entity @e[tag=bce_boss] run scoreboard players set _bmiss bce_sys 0",
        "execute if score _bmiss bce_sys matches 40.. run function bosses/death"],
        doc="arena empty for 5s (all dead/left) => reset. boss entity vanished while players present => counts as defeated")
    warn = lambda msg: [
        "scoreboard players set _btrack bce_sys 0",
        "playsound note.bell @a[%s] ~ ~ ~ 1 0.5" % ARENA,
        "titleraw @a[%s] actionbar %s" % (ARENA, TXT(msg)),
        "execute if score _mode bce_sys matches 1 run playanimation @e[tag=bce_boss] animation.bce_guardian.boss_attack"]
    atk = lambda sel_, d1, d2, d3: [
        "execute if score _bphase bce_sys matches 1 run " + hit(sel_, d1)[0],
        "execute if score _bphase bce_sys matches 2 run " + hit(sel_, d2)[0],
        "execute if score _bphase bce_sys matches 3 run " + hit(sel_, d3)[0]]
    # NOTE: hit() returns 3 commands; the phase-scaled variant keeps one damage line and shared i-frame lines
    def hitp(sel_, d1, d2, d3, ticks=8):
        return atk(sel_, d1, d2, d3) + hit(sel_, 0, ticks)[1:]
    near = "@a[r=3,tag=bce_ctl,tag=!bce_iframe]"
    F.emit("bosses/w_slash", warn("§c⚠ 검격! 피하세요") + [
        "execute as %s at @s run particle minecraft:basic_flame_particle ^ ^1.2 ^2" % bsel,
        "execute as %s at @s run particle minecraft:basic_flame_particle ^ ^1.2 ^3" % bsel,
        "execute as %s at @s run particle minecraft:basic_flame_particle ^0.8 ^1.2 ^2.5" % bsel,
        "execute as %s at @s run particle minecraft:basic_flame_particle ^-0.8 ^1.2 ^2.5" % bsel])
    F.emit("bosses/h_slash", ["execute as %s at @s positioned ^ ^ ^2.5 run %s" % (bsel, c) for c in hitp(near, 6, 7, 8)] + [
        "execute as %s at @s run particle minecraft:critical_hit_emitter ^ ^1.2 ^2.5" % bsel,
        "playsound game.player.attack.strong @a[%s] ~ ~ ~ 1 0.6" % ARENA,
        SHAKE(0.2, 0.2, "@a[%s]" % ARENA)])
    F.emit("bosses/w_charge", warn("§c⚠ 돌진! 옆으로 피하세요") + [
        "execute as %s at @s run particle minecraft:basic_flame_particle ^ ^0.3 ^%d" % (bsel, d) for d in range(2, 10, 2)])
    step = "execute as %s at @s if block ^ ^ ^1 air if block ^ ^1 ^1 air unless block ^ ^-1 ^1 air run tp @s ^ ^ ^1" % bsel
    cl = "@a[r=2.4,tag=bce_ctl,tag=!bce_iframe]"
    chg = []
    for i in range(8):
        chg.append(step)
        if i % 2 == 1:
            chg += ["execute as %s at @s run %s" % (bsel, c) for c in hitp(cl, 7, 8, 9, 10)]
    chg += [SHAKE(0.25, 0.25, "@a[%s]" % ARENA), "playsound mob.enderdragon.growl @a[%s] ~ ~ ~ 0.6 1.4" % ARENA]
    F.emit("bosses/h_charge", chg)
    F.emit("bosses/w_slam", warn("§c⚠ 바닥 충격! 범위 밖으로") + ["execute as %s at @s run %s" % (bsel, c) for c in ring(0, 0, 5, 16, "minecraft:basic_flame_particle")] + [
        "execute if score _mode bce_sys matches 1 as %s at @s run particle bce:warning_ring ~ ~0.2 ~" % bsel])
    sl_ = "@a[r=5,tag=bce_ctl,tag=!bce_iframe]"
    F.emit("bosses/h_slam", ["execute as %s at @s run %s" % (bsel, c) for c in hitp(sl_, 8, 9, 10)] + [
        "execute as %s at @s run particle minecraft:huge_explosion_emitter ~ ~0.5 ~" % bsel,
        "playsound random.explode @a[%s] ~ ~ ~ 1 0.8" % ARENA, SHAKE(0.4, 0.4, "@a[%s]" % ARENA)])
    F.emit("bosses/tp_behind", [
        "playsound mob.endermen.portal @a[%s] ~ ~ ~ 1 0.6" % ARENA,
        "execute as @p[%s,tag=bce_ctl] at @s positioned ^ ^ ^-3 if block ~ ~ ~ air if block ~ ~1 ~ air unless block ~ ~-1 ~ air run tp %s ~ ~ ~ facing @p" % (ARENA, bsel),
        "execute as %s at @s run particle minecraft:totem_particle ~ ~1 ~" % bsel],
        doc="teleport behind the nearest player, only onto free floor")
    quadpos = [(ax - 8, az - 8), (ax + 8, az - 8), (ax + 8, az + 8), (ax - 8, az + 8)]
    wq = warn("§c⚠ 바닥 표식! 벗어나세요") + ["scoreboard players add _bq bce_sys 1", "execute if score _bq bce_sys matches 4.. run scoreboard players set _bq bce_sys 0"]
    F.emit("bosses/w_quad", wq + sum([[ "execute if score _bq bce_sys matches %d positioned %d %d %d run %s" % (i, qx, ay, qz, c)
                                            for c in ring(0, 0, 6, 14, "minecraft:basic_flame_particle")] for i, (qx, qz) in enumerate(quadpos)], []))
    qh = []
    for i, (qx, qz) in enumerate(quadpos):
        for c in hitp("@a[r=7,tag=bce_ctl,tag=!bce_iframe]", 8, 9, 10):
            qh.append("execute if score _bq bce_sys matches %d positioned %d %d %d run %s" % (i, qx, ay, qz, c))
        qh.append("execute if score _bq bce_sys matches %d positioned %d %d %d run particle minecraft:huge_explosion_emitter ~ ~ ~" % (i, qx, ay, qz))
    F.emit("bosses/h_quad", qh + [SHAKE(0.3, 0.3, "@a[%s]" % ARENA)])
    for ph, nm, title, msg in [(2, "to_phase2", "§c검은별이 해방된다", "PHASE 2"), (3, "to_phase3", "§4성채가 붕괴한다", "PHASE 3")]:
        lines = ["scoreboard players set _bphase bce_sys %d" % ph, "scoreboard players set _btimer bce_sys 0",
                 "scoreboard players set _binv bce_sys 40", "scoreboard players set _btrack bce_sys 1",
                 "titleraw @a[%s] times 5 40 10" % ARENA, "titleraw @a[%s] title %s" % (ARENA, TXT(title)),
                 "playsound mob.wither.spawn @a[%s] ~ ~ ~ 0.8 1.2" % ARENA, SHAKE(0.4, 0.8, "@a[%s]" % ARENA),
                 "execute as %s at @s run particle minecraft:huge_explosion_emitter ~ ~1 ~" % bsel,
                 "stopsound @a[%s]" % ARENA,
                 "execute if score _mode bce_sys matches 1 run playanimation @e[tag=bce_boss] animation.bce_guardian.phase_transition"]
        if ph == 2:
            lines.append("playsound record.pigstep @a[%s] ~ ~ ~ 0.8 1" % ARENA)
        else:
            lines += ["function bosses/collapse_floor"]
        F.emit("bosses/" + nm, lines)
    ax1, ax2 = L.CX[4] + 2, L.CX[4] + 36
    F.emit("bosses/collapse_floor", [
        "fill %d 99 %d %d 99 %d magma" % (ax1, -17, ax2, 17),
        "fill %d 99 -9 %d 99 9 polished_blackstone" % (ax - 9, ax + 9),
        TELL("@a[%s]" % ARENA, "§c[경고] 바닥이 부식된다! 중앙의 검은 돌 위로 이동하세요.")],
        doc="PHASE 3 arena change: outside the safe square the floor becomes magma (damage in boss/corrupt_tick)")
    F.emit("bosses/corrupt_tick", [
        "execute if score _bphase bce_sys matches 3 as @a[%s,tag=bce_ctl,tag=!bce_iframe] at @s if block ~ ~-1 ~ magma run damage @s 2 magic" % ARENA,
        "execute if score _bfin bce_sys matches 2 run function bosses/shrink_once"])
    F.emit("bosses/shrink_once", [
        "fill %d 99 -9 %d 99 9 magma" % (ax - 9, ax + 9), "fill %d 99 -5 %d 99 5 polished_blackstone" % (ax - 5, ax + 5),
        "scoreboard players set _bfin bce_sys 3"], doc="after the final strike the safe zone shrinks (once)")
    F.emit("bosses/final_start", [
        "scoreboard players set _bfin bce_sys 1", "scoreboard players set _bftimer bce_sys 0",
        "titleraw @a[%s] actionbar %s" % (ARENA, TXT("§4⚠ 최후의 일격! 거리를 벌리거나 회피하세요")),
        "playsound mob.wither.spawn @a[%s] ~ ~ ~ 1 0.5" % ARENA])
    ft = ["scoreboard players add _bftimer bce_sys 1", "scoreboard players set _btrack bce_sys 0"]
    for t in (1, 15, 30, 45):
        ft += ["execute if score _bftimer bce_sys matches %d as %s at @s run %s" % (t, bsel, c) for c in ring(0, 0, 11, 24, "minecraft:basic_flame_particle")]
        ft.append("execute if score _bftimer bce_sys matches %d run playsound note.bell @a[%s] ~ ~ ~ 1 0.5" % (t, ARENA))
    fh = ["execute as %s at @s run %s" % (bsel, c) for c in hit("@a[r=11,tag=bce_ctl,tag=!bce_iframe]", 12, 12)]
    ft += ["execute if score _bftimer bce_sys matches 60 run function bosses/final_hit"]
    F.emit("bosses/final_tick", ft)
    F.emit("bosses/final_hit", fh + ["scoreboard players set _bfin bce_sys 2", "scoreboard players set _btrack bce_sys 1",
                                     "playsound random.explode @a[%s] ~ ~ ~ 1 0.6" % ARENA, SHAKE(0.5, 0.6, "@a[%s]" % ARENA)])
    F.emit("bosses/death", [
        "execute if score _bstate bce_sys matches 2 run function bosses/death_go"], doc="guard: runs once")
    F.emit("bosses/death_go", [
        "scoreboard players set _bstate bce_sys 3", "scoreboard players set _binv bce_sys 999",
        "effect %s slowness 100000 255 true" % bsel, "kill @e[tag=bce_enemy,tag=!bce_boss]", "stopsound @a[%s]" % ARENA,
        "execute if score _mode bce_sys matches 1 run playanimation @e[tag=bce_boss] animation.bce_guardian.death",
        "execute as @a[%s,tag=!bce_cs] at @s run function cutscenes/boss_death/start" % ARENA],
        doc="BOSS DEATH: attacks stop, death cutscene starts")
    F.emit("bosses/cleanup", ["kill " + bsel, "fill %d 99 -17 %d 99 17 polished_blackstone_bricks" % (ax1, ax2),
                              "fill %d 99 -7 %d 99 7 gilded_blackstone" % (ax - 7, ax + 7), "fill %d 99 -6 %d 99 6 polished_blackstone" % (ax - 6, ax + 6)],
           doc="idempotent: remove boss entity, restore arena floor")
    F.emit("bosses/victory", [
        "execute if score _bstate bce_sys matches 3 run function bosses/victory_world",
        "scoreboard players set @s[scores={bce_q=7}] bce_q 8",
        "give @s golden_apple 3", "function cutscenes/ending/start"],
        doc="as player at end of boss_death cutscene. world part is guarded => safe for multiple players")
    F.emit("bosses/victory_world", [
        "scoreboard players set _bstate bce_sys 4", "scoreboard players set _bdead bce_sys 1",
        "function bosses/cleanup", "scoreboard players set @a[scores={bce_q=7}] bce_q 8",
        "scoreboard players set _qflash bce_sys 60"],
        doc="shared credit policy: every online player with quest 7 advances")
    F.emit("bosses/finish_game", [
        "execute as @s run stopsound @s", TELL("@s", "§6[완료] 검은별의 성채를 클리어했습니다. 플레이해 주셔서 감사합니다!"),
        "scoreboard players set _state bce_sys 12", "time set 18000"],
        doc="end of ending cutscene (as player)")
    F.emit("bosses/reset", [
        "kill " + bsel, "scoreboard players set _bstate bce_sys 0", "scoreboard players set _bhp bce_sys 1000",
        "scoreboard players set _bphase bce_sys 1", "scoreboard players set _bempty bce_sys 0",
        "scoreboard players set _bfin bce_sys 0", "scoreboard players set _binv bce_sys 0",
        "function bosses/cleanup", "stopsound @a", "scoreboard players set @a[scores={bce_ps=5}] bce_ps 3",
        TELL("@a", "§7[보스전] 전투가 초기화되었습니다. 다시 도전하세요.")],
        doc="arena empty / admin: full, safe reset of the fight")


# ---------------------------------------------------------------- quests / checkpoints
def quests(F):
    chk = [
        "execute as @a[scores={bce_q=1,bce_ps=2..}] at @s if entity @s[%s] run function quests/done_1" % A("door"),
        "execute as @a[scores={bce_q=2}] at @s if entity @s[%s] run function quests/done_2" % A("weapon"),
        "execute as @a[scores={bce_q=3}] at @s if entity @s[%s] if score _yard bce_sys matches 0 run function world/yard_spawn" % A("yard"),
        "execute if score _yard bce_sys matches 1.. as @a[scores={bce_q=3}] at @s if entity @s[%s] unless entity @e[tag=bce_enemy,%s] run function quests/done_3" % (A("yard"), A("yard")),
        "execute as @a[scores={bce_q=4}] at @s if entity @s[%s] run function quests/done_4" % A("village"),
        "execute if score _puzzle bce_sys matches 1 as @a[scores={bce_q=5}] at @s if entity @s[%s] run function quests/done_5" % A("ruins_exit"),
        "execute if score _wall bce_sys matches 4 as @a[scores={bce_q=6}] at @s if entity @s[%s] run function quests/done_6" % A("wall_gate")]
    F.emit("quests/check", chk, doc="every 10 ticks. reward is given only on the q -> q+1 transition (never twice)")
    adv = lambda n: ["scoreboard players set @s bce_q %d" % (n + 1), "scoreboard players set _qflash bce_sys 40",
                     "titleraw @s title %s" % TXT("§a퀘스트 완료"), "titleraw @s subtitle %s" % TXT(L.QUESTS[n][0]),
                     "playsound random.levelup @s ~ ~ ~ 0.8 1", "particle minecraft:totem_particle ~ ~1 ~"]
    nxt = lambda n: TELL("@s", "§e[다음 임무] §f" + L.QUESTS[n + 1][0])
    kit = ["clear @s iron_sword", "clear @s blaze_rod", "clear @s feather", "clear @s rabbit_foot", "clear @s flint", "clear @s brick", "clear @s apple",
           "give @s iron_sword", "give @s blaze_rod", "give @s feather", "give @s rabbit_foot", "give @s flint", "give @s brick", "give @s apple 3",
           TELL("@s", "§b[조작] §f블레이즈 막대=연속 베기(3타) / 깃털=전방 회피 / 토끼 발=후방 회피 / 부싯돌=좌 / 벽돌=우 / 사과=회복"),
           TELL("@s", "§b[조작] §f스킬은 핫바에서 해당 아이템을 '새로 선택'할 때 1회 발동합니다. 칼로 돌아갔다가 다시 선택하세요.")]
    rewards = {1: ["effect @s regeneration 3 1 true"], 2: kit, 3: ["give @s arrow 8", "scoreboard players set @s bce_ps 3"],
               4: ["clear @s nether_star", "give @s nether_star", TELL("@s", "§b[해금] §f네더의 별=충격파(스태미나 %d)" % ST["cost_ult"])],
               5: ["give @s golden_apple 2"], 6: ["give @s golden_apple 2", "effect @s health_boost 60 1 true"]}
    dest = {2: "신전 문 밖 북쪽의 무기 선반(빛기둥)에서 검을 집으세요.", 3: "동쪽 훈련장으로 가서 적을 처치하세요.",
            4: "동쪽 다리를 건너 잿빛 마을(입구 x≈66)로 가세요. 빛기둥이 표시합니다.", 5: "가라앉은 유적(x≈164) 지하로 내려가 레버 3개를 [켜짐-꺼짐-켜짐]으로 맞추세요. 벽의 등불이 힌트입니다.",
            6: "붕괴된 성벽(x≈260~340)의 적을 모두 처치하고 성문을 통과하세요.", 7: "검은별의 성채(x≈360~440) 중앙 홀의 봉인된 문 너머가 보스 아레나입니다."}
    intro = {3: "q4_intro", 5: "q6_intro", 6: "q7_intro"}      # cinematic at quest start (skippable)
    for n in range(1, 7):
        extra = [TELL("@s", "§e[목적지] §f" + dest[n + 1])] if (n + 1) in dest else []
        if n in intro:
            extra.append("function cutscenes/%s/start" % intro[n])
        F.emit("quests/done_%d" % n, adv(n) + rewards.get(n, []) + [nxt(n)] + extra, doc="Q%d %s -> Q%d" % (n, L.QUESTS[n][0], n + 1))
    # checkpoints
    cl = []
    for n, (reg, pos, label) in L.CHECKPOINTS.items():
        cl.append("execute as @a[scores={bce_cp=..%d,bce_ps=2..}] at @s if entity @s[%s] run function checkpoints/set_%d" % (n - 1, sel_box(reg), n))
        F.emit("checkpoints/set_%d" % n, [
            "scoreboard players set @s bce_cp %d" % n, "spawnpoint @s %d %d %d" % (math.floor(pos[0]), pos[1], math.floor(pos[2])),
            "titleraw @s actionbar %s" % TXT("§e체크포인트 활성화: " + label),
            "playsound random.orb @s ~ ~ ~ 0.8 1.2", "particle minecraft:totem_particle ~ ~1 ~"], doc="checkpoint %d: %s" % (n, label))
    F.emit("checkpoints/check", cl)
    F.emit("checkpoints/return", ["execute if score @s bce_cp matches %d run tp @s %s %d %s" % (n, pos[0], pos[1], pos[2]) for n, (_, pos, _) in L.CHECKPOINTS.items()] +
           ["execute if score @s bce_cp matches 0 run tp @s %s %d %s" % (L.START[0], L.START[1], L.START[2])],
           doc="player command: teleport to the last checkpoint (positions verified safe at build time)")


# ---------------------------------------------------------------- world scripting
def world(F):
    ys = L.YARD_SPAWN
    F.emit("world/yard_spawn", ["scoreboard players set _yard bce_sys 1",
                                "execute positioned %d %d %d run function enemies/spawn_e1" % ys,
                                "execute positioned %d %d %d run tag @e[tag=bce_enemy,r=3] add bce_wave" % ys,
                                TELL("@a[%s]" % A("yard"), "§c[훈련] §f적이 나타났다! 블레이즈 막대로 베어 보세요.")])
    # puzzle
    cond = " ".join('if block %d %d %d lever ["open_bit"=%s]' % (x, y, z, "true" if on else "false") for (x, y, z), on in zip(L.LEVERS, L.LEVER_SOLUTION))
    F.emit("world/puzzle_check", ["execute if score _puzzle bce_sys matches 0 %s run function world/puzzle_solve" % cond],
           doc="solution (on,off,on) matches the lamp hint wall; checked every 10 ticks")
    gx1, gy1, gz1, gx2, gy2, gz2 = L.GATE_RUINS
    hx1, hy1, hz1, hx2, hy2, hz2 = L.HIDDEN_DOOR
    F.emit("world/puzzle_solve", [
        "scoreboard players set _puzzle bce_sys 1", "scoreboard players set _bridge bce_sys 0",
        "fill %d %d %d %d %d %d air" % (gx1, gy1, gz1, gx2, gy2, gz2),
        "fill %d %d %d %d %d %d air" % (hx1, hy1, hz1, hx2, hy2, hz2),
        "playsound random.anvil_land @a[%s] ~ ~ ~ 1 0.6" % A("ruins_all"),
        TELL("@a[%s]" % A("ruins_all"), "§a[장치] §f육중한 철창이 열리고 다리가 펼쳐진다. 숨은 방도 열렸다!")])
    br = []
    for i in range(L.BRIDGE_LEN):
        br.append("execute if score _bridge bce_sys matches %d run fill %d 86 -1 %d 86 1 stone_bricks" % (i, L.BRIDGE_X0 + i, L.BRIDGE_X0 + i))
    br.append("execute if score _bridge bce_sys matches 0..%d run scoreboard players add _bridge bce_sys 1" % (L.BRIDGE_LEN - 1))
    F.emit("world/bridge_step", br, doc="moving bridge: one column per 5 ticks after the puzzle is solved (_bridge=99 means idle)")
    # traps: 4 vents
    vents = [L.CX[2] + dx for dx in (-7, -4, -1, 2)]
    tl = ["execute if entity @a[%s] run scoreboard players add _trap bce_sys 1" % A("trap"),
          "execute unless entity @a[%s] run scoreboard players set _trap bce_sys 0" % A("trap"),
          "execute if score _trap bce_sys matches 3.. run scoreboard players set _trap bce_sys 1"]
    for vx in vents:
        tl.append("execute if score _trap bce_sys matches 1 run particle minecraft:basic_flame_particle %d 88 0" % vx)
        tl.append("execute if score _trap bce_sys matches 1 run playsound random.click @a[%s] %d 88 0 0.8 0.8" % (A("trap"), vx))
        for c in hit("@a[x=%d,y=87,z=-1,dx=1,dy=3,dz=2,tag=bce_ctl,tag=!bce_iframe]" % (vx - 1), 3, 10):
            tl.append("execute if score _trap bce_sys matches 2 run " + c)
        tl.append("execute if score _trap bce_sys matches 2 run particle minecraft:huge_explosion_emitter %d 88 0" % vx)
    F.emit("world/traps", tl, doc="every 20 ticks: vents warn (count 1) then damage (count 2). 1s warning; dodge/i-frames protect")
    # wall waves
    z3 = A("wall_zone")
    sp = lambda wv: sum([["execute positioned %d 100 %d run function enemies/spawn_%s" % (x, z, k)] + (["execute positioned %d 100 %d run tag @e[tag=bce_%s,r=3,tag=!bce_patrol] add bce_patrol" % (x, z, k)] if k in ("e1", "e2") else []) for k, x, z in L.WALL_WAVES[wv]], []) + [
        "tag @e[tag=bce_enemy,tag=!bce_wave,%s] add bce_wave" % z3]
    F.emit("world/wall_wave1", ["scoreboard players set _wall bce_sys 1"] + sp(1) + [TELL("@a[%s]" % z3, "§c[성벽] §f적이 몰려온다! (1/3)")])
    F.emit("world/wall_wave2", ["scoreboard players set _wall bce_sys 2"] + sp(2) + [TELL("@a[%s]" % z3, "§c[성벽] §f정예병 출현! (2/3)")])
    mx, my, mz = L.MIDBOSS_POS
    F.emit("world/wall_mid", ["scoreboard players set _wall bce_sys 3",
                              "execute positioned %d %d %d run function enemies/spawn_e4" % (mx, my, mz),
                              "execute positioned %d %d %d as @e[type=vindicator,r=3,tag=bce_e4] run function world/mid_boost" % (mx, my, mz),
                              "tag @e[tag=bce_enemy,tag=!bce_wave,%s] add bce_wave" % z3,
                              TELL("@a[%s]" % z3, "§6[중간 보스] §f성벽 감시장이 길을 막는다! (3/3)"),
                              "playsound mob.wither.spawn @a[%s] ~ ~ ~ 0.6 1.5" % z3])
    F.emit("world/mid_boost", ["tag @s add bce_mid", "effect @s health_boost 100000 5 true", "effect @s instant_health 1 10 true",
                               "effect @s resistance 100000 2 true", "tag @s add bce_wave"])
    gx1, gy1, gz1, gx2, gy2, gz2 = L.WALL_GATE_FILL
    F.emit("world/wall_open", ["scoreboard players set _wall bce_sys 4", "fill %d %d %d %d %d %d air" % (gx1, gy1, gz1, gx2, gy2, gz2),
                               "playsound random.anvil_land @a[%s] ~ ~ ~ 1 0.5" % z3,
                               TELL("@a[%s]" % z3, "§a[성벽] §f성채로 향하는 문이 열렸다!")])
    F.emit("world/wall_logic", [
        "execute if score _wall bce_sys matches 0 if entity @a[scores={bce_ps=2..},%s] run function world/wall_wave1" % A("wall_yard"),
        "execute if score _wall bce_sys matches 1 if entity @a[%s] unless entity @e[tag=bce_enemy,%s] run function world/wall_wave2" % (z3, z3),
        "execute if score _wall bce_sys matches 2 if entity @a[%s] unless entity @e[tag=bce_enemy,%s] run function world/wall_mid" % (z3, z3),
        "execute if score _wall bce_sys matches 3 if entity @a[%s] unless entity @e[tag=bce_enemy,%s] run function world/wall_open" % (z3, z3)],
        doc="wave state machine; progression requires a player in the zone (unloaded chunks never count as 'cleared')")
    dx1, dy1, dz1, dx2, dy2, dz2 = L.CIT_DOOR
    F.emit("world/citadel_door", ["execute if score _door bce_sys matches 0 if entity @a[scores={bce_q=7..},%s] run function world/open_cit_door" % A("cit_hall")])
    F.emit("world/open_cit_door", ["scoreboard players set _door bce_sys 1", "fill %d %d %d %d %d %d air" % (dx1, dy1, dz1, dx2, dy2, dz2),
                                   "playsound random.anvil_land @a[%s] ~ ~ ~ 1 0.4" % A("cit_hall"),
                                   TELL("@a[%s]" % A("cit_hall"), "§5[봉인] §f봉인된 문이 열렸다. 수호자가 기다리고 있다…")])


# ---------------------------------------------------------------- UI / effects
def ui(F):
    h = ["scoreboard players operation _hp bce_sys = _tick bce_sys", "scoreboard players operation _hp bce_sys /= _c20 bce_sys",
         "scoreboard players operation _hp bce_sys %= _c4 bce_sys"]   # page counter: changes every second, page B on odd 3s? see below
    # page A (mission) shown when (second/3) is even, page B (skill cooldowns) otherwise. Keep it simple: 4s cycle, 2s each.
    for q in range(1, 8):
        h.append("execute if score _hp bce_sys matches 0..1 as @a[tag=bce_ctl,tag=!bce_cs,scores={bce_ps=2..6,bce_q=%d}] run titleraw @s actionbar %s" % (
            q, jraw("§aST§f ", ("@s", "bce_stam"), " §e회피§f ", ("@s", "bce_cddodge"), " §b" + L.QUESTS[q][1])))
    h.append("execute if score _hp bce_sys matches 0..1 as @a[tag=bce_ctl,tag=!bce_cs,scores={bce_ps=2..6,bce_q=8..}] run titleraw @s actionbar %s" % jraw("§aST§f ", ("@s", "bce_stam"), " §6임무 완료"))
    h += ["execute if score _hp bce_sys matches 2..3 as @a[tag=bce_ctl,tag=!bce_cs,scores={bce_ps=2..6}] run function ui/cd_page"]
    h.append("execute if score _bstate bce_sys matches 2 as @a[%s,tag=!bce_cs] run titleraw @s actionbar %s" % (ARENA, jraw(
        "§c수호자 ", ("_bpct", "bce_sys"), "% §7P", ("_bphase", "bce_sys"), " §aST§f ", ("@s", "bce_stam"))))
    F.emit("ui/hud", h, doc="actionbar HUD every 5 ticks. 2s mission page / 2s skill-cooldown page. HP = vanilla hearts (commands cannot read health)")
    F.emit("ui/cd_page", [
        "scoreboard players operation @s bce_tmp = @s bce_cddodge", "scoreboard players operation @s bce_tmp += _c19 bce_sys", "scoreboard players operation @s bce_tmp /= _c20 bce_sys",
        "scoreboard players operation _t1 bce_sys = @s bce_tmp",
        "scoreboard players operation @s bce_tmp = @s bce_cddash", "scoreboard players operation @s bce_tmp += _c19 bce_sys", "scoreboard players operation @s bce_tmp /= _c20 bce_sys",
        "scoreboard players operation _t2 bce_sys = @s bce_tmp",
        "scoreboard players operation @s bce_tmp = @s bce_cdbslash", "scoreboard players operation @s bce_tmp += _c19 bce_sys", "scoreboard players operation @s bce_tmp /= _c20 bce_sys",
        "scoreboard players operation _t3 bce_sys = @s bce_tmp",
        "scoreboard players operation @s bce_tmp = @s bce_cdjudge", "scoreboard players operation @s bce_tmp += _c19 bce_sys", "scoreboard players operation @s bce_tmp /= _c20 bce_sys",
        "titleraw @s actionbar " + jraw("§e회피 ", ("_t1", "bce_sys"), " §b돌진 ", ("_t2", "bce_sys"), " §d참격 ", ("_t3", "bce_sys"), " §6심판 ", ("@s", "bce_tmp")),
    ], doc="skill cooldown page (seconds, 0 = ready). uses shared fake-player temps; safe because commands run sequentially per player")
    F.emit("ui/shake_on", ["scoreboard players set _shake bce_sys 1", TELL("@s", "화면 흔들림: 켜짐")])
    F.emit("ui/shake_off", ["scoreboard players set _shake bce_sys 0", TELL("@s", "화면 흔들림: 꺼짐")])
    for i, nm in enumerate(["low", "medium", "high"]):
        F.emit("ui/quality_" + nm, ["scoreboard players set _quality bce_sys %d" % i, TELL("@s", "그래픽 품질: " + nm.upper() + " (규칙은 동일)")])
    F.emit("effects/ambient", [
        "execute if score _quality bce_sys matches 2 as @a at @s run particle minecraft:basic_smoke_particle ~ ~3 ~",
        "execute if score _quality bce_sys matches 1.. as @a[scores={bce_cp=5..}] at @s run particle minecraft:soul_particle ~ ~1 ~"],
        doc="decoration only; skipped entirely on LOW")
    F.emit("effects/ping", ["particle minecraft:totem_particle ~ ~1 ~", "playsound random.orb @s"])


# ---------------------------------------------------------------- admin / debug
def admin(F, info):
    F.emit("debug/status", [
        "tellraw @s " + jraw("§e[BCE] 상태 _state=", ("_state", SYS), " 건축 ", ("_bstep", SYS), "/", ("_bstop", SYS), " 건축상태 ", ("_bsm", SYS), " 모드(0=A,1=B)=", ("_mode", SYS)),
        "tellraw @s " + jraw("§e[BCE] 퀘스트=", ("@s", "bce_q"), " 체크포인트=", ("@s", "bce_cp"), " 스태미나=", ("@s", "bce_stam"), " 보스상태=", ("_bstate", SYS), " 보스HP=", ("_bhp", SYS))],
        doc="/execute as @s run function debug/status")
    F.emit("debug/tick_probe", ["tellraw @a " + jraw("§7tick ", ("_tick", SYS))])
    F.emit("admin/grant", ["tag @s add bce_admin", TELL("@s", "§c[관리자] 권한 태그 부여 (치트가 켜진 월드에서 /function 으로만 사용)")])
    F.emit("admin/rebuild_all", ["function build/start", TELL("@a", "§e[BCE] 전체 맵을 다시 건축합니다.")])
    F.emit("admin/build_structures", ["function build/start_structures", TELL("@a", "§e[BCE] 구조물(.mcstructure) 방식으로 건축합니다.")])
    F.emit("admin/build_pause", ["function build/pause"]); F.emit("admin/build_resume", ["function build/resume"])
    F.emit("admin/build_status", ["function build/status"]); F.emit("admin/build_recover", ["function build/recover"])
    F.emit("admin/combat_reset", ["scoreboard players set @s bce_combo 0", "scoreboard players set @s bce_cwin 0", "scoreboard players set @s bce_iframe 0", "tag @s remove bce_iframe",
                                  "scoreboard players set @s bce_ultt 0", "scoreboard players set @s bce_cdslash 0", "scoreboard players set @s bce_cddodge 0",
                                  "scoreboard players set @s bce_cddash 0", "scoreboard players set @s bce_cdbslash 0", "scoreboard players set @s bce_cdjudge 0", "scoreboard players set @s bce_cdult 0",
                                  "function bosses/reset"], doc="reset combat state of the executor and the boss fight")
    for z in range(5):
        a, b = info["zones"][z]
        F.emit("admin/rebuild_z%d" % z, ["scoreboard players set _bstart bce_sys %d" % a, "scoreboard players set _bstep bce_sys %d" % a, "scoreboard players set _bstop bce_sys %d" % b,
                                        "scoreboard players set _bsm bce_sys 1", "scoreboard players set _berr bce_sys 0", "scoreboard players set _bwait bce_sys 0", "scoreboard players set _state bce_sys 3", TELL("@a", "§e[BCE] 구역 %d (%s) 재건축" % (z, L.ZNAME[z]))])
        F.emit("admin/tp_z%d" % z, ["tp @s %d 102 0" % (L.CX[z] if z else 0)])
    for n in range(1, 9):
        F.emit("admin/set_quest_%d" % n, ["scoreboard players set @s bce_q %d" % n, "execute if score @s bce_ps matches ..1 run scoreboard players set @s bce_ps 3"])
    F.emit("admin/heal", ["effect @s instant_health 1 10 true", "effect @s saturation 1 10 true"])
    F.emit("admin/stamina", ["scoreboard players set @s bce_stam %d" % ST["max"], "scoreboard players set @s bce_cddodge 0", "scoreboard players set @s bce_cdult 0"])
    for k in EN:
        F.emit("admin/spawn_" + k, ["execute at @s positioned ^ ^ ^5 run function enemies/spawn_" + k])
    F.emit("admin/spawn_boss", ["execute if score _bstate bce_sys matches 0 run function bosses/summon",
                                "execute if score _bstate bce_sys matches 1 run function bosses/begin"], doc="test: summon boss and start immediately (stand in the arena)")
    F.emit("admin/end_boss", ["function bosses/reset"])
    F.emit("admin/cleanup", ["kill @e[tag=bce_enemy]", "kill @e[type=arrow]", "kill @e[type=item]", TELL("@a", "§7[BCE] 임시 엔티티를 정리했습니다.")])
    for s, nm in [("opening", "opening"), ("boss_intro", "boss"), ("boss_death", "death"), ("ending", "ending"), ("q4_intro", "q4"), ("q6_intro", "q6"), ("q7_intro", "q7")]:
        F.emit("admin/cutscene_" + nm, ["function cutscenes/%s/start" % s], doc="test (as player)")
    for n in L.CHECKPOINTS:
        F.emit("admin/goto_cp%d" % n, ["tp @s %s %d %s" % (L.CHECKPOINTS[n][1][0], L.CHECKPOINTS[n][1][1], L.CHECKPOINTS[n][1][2])])
    F.emit("admin/goto_start", ["tp @s %s %d %s" % L.START])
    F.emit("admin/mode_a", ["scoreboard players set _mode bce_sys 0", TELL("@s", "MODE A (순수 명령어 보스)")])
    F.emit("admin/mode_b", ["scoreboard players set _mode bce_sys 1", TELL("@s", "MODE B (커스텀 엔티티 보스, 리소스/행동 팩 필요)")])
    F.emit("admin/reset_player", [
        "tag @s remove bce_init", "scoreboard players set @s bce_q 0", "scoreboard players set @s bce_ps 0", "scoreboard players set @s bce_cp 0",
        "clear @s", "function cutscenes/force_end"], doc="test-data reset for one player (re-inits next tick)")
    F.emit("admin/reset_world_flags", [
        "function bosses/reset", "scoreboard players set _yard bce_sys 0", "scoreboard players set _wall bce_sys 0",
        "scoreboard players set _puzzle bce_sys 0", "scoreboard players set _door bce_sys 0", "scoreboard players set _bdead bce_sys 0",
        "scoreboard players set _started bce_sys 0", "scoreboard players set _bridge bce_sys 99", "kill @e[tag=bce_enemy]",
        "function admin/rebuild_all"], doc="DESTRUCTIVE test reset: world flags + full rebuild (also re-closes gates)")
