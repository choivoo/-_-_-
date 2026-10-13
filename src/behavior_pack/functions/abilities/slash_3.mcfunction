# combo stage 3: reach 1.9 radius 3.2 dmg 9
scoreboard players set @s bce_cdslash 20
execute positioned ^ ^0.8 ^1.9 run damage @e[tag=bce_enemy,r=3.2] 9 entity_attack entity @s
execute positioned ^ ^0.8 ^1.9 if entity @e[tag=bce_boss,r=3.2] if score _mode bce_sys matches 0 if score _binv bce_sys matches 0 run scoreboard players remove _bhp bce_sys 14
execute positioned ^ ^0.8 ^1.9 run particle minecraft:critical_hit_emitter ~ ~ ~
playsound game.player.attack.strong @a ~ ~ ~ 0.7 0.8500000000000001
execute if score _quality bce_sys matches 1.. run execute positioned ^ ^0.8 ^1.9 run particle minecraft:basic_crit_particle ~ ~0.3 ~
scoreboard players operation @s bce_stam -= _cost_heavy bce_sys
execute positioned ^ ^0.8 ^1.9 as @e[tag=bce_enemy,tag=!bce_boss,r=3.2] run function enemies/stun
execute if score _quality bce_sys matches 2.. run execute positioned ^ ^0.8 ^1.9 run particle minecraft:explosion_particle ~ ~ ~
execute if score _shake bce_sys matches 1 run camerashake add @s 0.25 0.2 positional
