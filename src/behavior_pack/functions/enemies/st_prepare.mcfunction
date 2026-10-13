# warning window before damage = per-type 'warn' ticks
effect @s slowness 1 6 true
particle minecraft:basic_flame_particle ^ ^1 ^1.4
execute if score _quality bce_sys matches 1.. run particle minecraft:basic_flame_particle ^0.4 ^1.3 ^1.4
execute if entity @s[tag=bce_e1] if score @s bce_aitm matches 14.. run function enemies/atk_e1
execute if entity @s[tag=bce_e2] if score @s bce_aitm matches 8.. run function enemies/atk_e2
execute if entity @s[tag=bce_e4] if score @s bce_aitm matches 26.. run function enemies/atk_e4
