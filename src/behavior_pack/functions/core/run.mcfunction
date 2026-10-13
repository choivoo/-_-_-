# central scheduler: per-tick = input/cooldowns/cutscenes/AI/boss; 5/10/20-tick slots for the rest
function player/new_players
function player/input
function player/timers
function cutscenes/dispatch
function enemies/tick
execute if score #bstate bce_sys matches 1.. run function bosses/tick
scoreboard players operation #m5 bce_sys = #tick bce_sys
scoreboard players operation #m5 bce_sys %= #c5 bce_sys
execute if score #m5 bce_sys matches 0 run function core/every5
scoreboard players operation #m10 bce_sys = #tick bce_sys
scoreboard players operation #m10 bce_sys %= #c10 bce_sys
execute if score #m10 bce_sys matches 0 run function core/every10
scoreboard players operation #m20 bce_sys = #tick bce_sys
scoreboard players operation #m20 bce_sys %= #c20 bce_sys
execute if score #m20 bce_sys matches 0 run function core/every20
