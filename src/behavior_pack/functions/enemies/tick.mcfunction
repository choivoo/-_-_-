# AI runs every 2 ticks on tagged enemies only (unloaded chunks cost nothing)
scoreboard players operation _m2 bce_sys = _tick bce_sys
scoreboard players operation _m2 bce_sys %= _c2 bce_sys
execute if score _m2 bce_sys matches 0 as @e[tag=bce_enemy,tag=!bce_boss] at @s run function enemies/ai_one
