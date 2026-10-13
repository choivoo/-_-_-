# central scheduler: per-tick = input/cooldowns/cutscenes/AI/boss; 5/10/20-tick slots for the rest
function player/new_players
function player/input
function player/timers
function cutscenes/dispatch
function enemies/tick
execute if score _bstate bce_sys matches 1.. run function bosses/tick
scoreboard players operation _m5 bce_sys = _tick bce_sys
scoreboard players operation _m5 bce_sys %= _c5 bce_sys
execute if score _m5 bce_sys matches 0 run function core/every5
scoreboard players operation _m10 bce_sys = _tick bce_sys
scoreboard players operation _m10 bce_sys %= _c10 bce_sys
execute if score _m10 bce_sys matches 0 run function core/every10
scoreboard players operation _m20 bce_sys = _tick bce_sys
scoreboard players operation _m20 bce_sys %= _c20 bce_sys
execute if score _m20 bce_sys matches 0 run function core/every20
