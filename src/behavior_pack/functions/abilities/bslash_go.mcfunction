# SKILL 4: straight line of 6 sphere probes; hit-mark tag prevents double damage
scoreboard players operation @s bce_stam -= _cost_bslash bce_sys
scoreboard players set @s bce_cdbslash 80
execute positioned ^ ^1 ^1.5 run tag @e[tag=bce_enemy,r=1.6] add bce_hitmark
execute positioned ^ ^1 ^1.5 run particle minecraft:soul_particle ~ ~ ~
execute if score _quality bce_sys matches 1.. run execute positioned ^ ^1 ^1.5 run particle minecraft:endrod ~ ~ ~
execute positioned ^ ^1 ^3.0 run tag @e[tag=bce_enemy,r=1.6] add bce_hitmark
execute positioned ^ ^1 ^3.0 run particle minecraft:soul_particle ~ ~ ~
execute if score _quality bce_sys matches 1.. run execute positioned ^ ^1 ^3.0 run particle minecraft:endrod ~ ~ ~
execute positioned ^ ^1 ^4.5 run tag @e[tag=bce_enemy,r=1.6] add bce_hitmark
execute positioned ^ ^1 ^4.5 run particle minecraft:soul_particle ~ ~ ~
execute if score _quality bce_sys matches 1.. run execute positioned ^ ^1 ^4.5 run particle minecraft:endrod ~ ~ ~
execute positioned ^ ^1 ^6.0 run tag @e[tag=bce_enemy,r=1.6] add bce_hitmark
execute positioned ^ ^1 ^6.0 run particle minecraft:soul_particle ~ ~ ~
execute if score _quality bce_sys matches 1.. run execute positioned ^ ^1 ^6.0 run particle minecraft:endrod ~ ~ ~
execute positioned ^ ^1 ^7.5 run tag @e[tag=bce_enemy,r=1.6] add bce_hitmark
execute positioned ^ ^1 ^7.5 run particle minecraft:soul_particle ~ ~ ~
execute if score _quality bce_sys matches 1.. run execute positioned ^ ^1 ^7.5 run particle minecraft:endrod ~ ~ ~
execute positioned ^ ^1 ^9.0 run tag @e[tag=bce_enemy,r=1.6] add bce_hitmark
execute positioned ^ ^1 ^9.0 run particle minecraft:soul_particle ~ ~ ~
execute if score _quality bce_sys matches 1.. run execute positioned ^ ^1 ^9.0 run particle minecraft:endrod ~ ~ ~
damage @e[tag=bce_hitmark] 10 entity_attack entity @s
execute if entity @e[tag=bce_hitmark,tag=bce_boss] if score _mode bce_sys matches 0 if score _binv bce_sys matches 0 run scoreboard players remove _bhp bce_sys 18
tag @e[tag=bce_hitmark] remove bce_hitmark
playsound mob.wither.spawn @a ~ ~ ~ 0.4 2
execute if score _shake bce_sys matches 1 run camerashake add @s 0.3 0.25 positional
