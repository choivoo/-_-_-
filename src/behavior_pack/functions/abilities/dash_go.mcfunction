# SKILL 3: star dash = wall/edge-safe forward move, then one strike around the landing point
scoreboard players operation @s bce_stam -= #cost_dash bce_sys
scoreboard players set @s bce_cddash 60
scoreboard players set @s bce_iframe 8
tag @s add bce_iframe
particle minecraft:endrod ~ ~1 ~
playsound random.orb @a ~ ~ ~ 0.8 1.6
execute at @s rotated ~ 0 if block ^ ^ ^1 air if block ^ ^1 ^1 air unless block ^ ^-1 ^1 air unless block ^ ^-1 ^1 lava run tp @s ^ ^ ^1
execute at @s rotated ~ 0 if block ^ ^ ^1 air if block ^ ^1 ^1 air unless block ^ ^-1 ^1 air unless block ^ ^-1 ^1 lava run tp @s ^ ^ ^1
execute at @s rotated ~ 0 if block ^ ^ ^1 air if block ^ ^1 ^1 air unless block ^ ^-1 ^1 air unless block ^ ^-1 ^1 lava run tp @s ^ ^ ^1
execute at @s rotated ~ 0 if block ^ ^ ^1 air if block ^ ^1 ^1 air unless block ^ ^-1 ^1 air unless block ^ ^-1 ^1 lava run tp @s ^ ^ ^1
execute at @s rotated ~ 0 if block ^ ^ ^1 air if block ^ ^1 ^1 air unless block ^ ^-1 ^1 air unless block ^ ^-1 ^1 lava run tp @s ^ ^ ^1
execute at @s rotated ~ 0 if block ^ ^ ^1 air if block ^ ^1 ^1 air unless block ^ ^-1 ^1 air unless block ^ ^-1 ^1 lava run tp @s ^ ^ ^1
execute positioned ^ ^0.8 ^1 run damage @e[tag=bce_enemy,r=3] 7 entity_attack entity @s
execute positioned ^ ^0.8 ^1 if entity @e[tag=bce_boss,r=3] if score #mode bce_sys matches 0 if score #binv bce_sys matches 0 run scoreboard players remove #bhp bce_sys 10
execute if score #quality bce_sys matches 1.. run particle minecraft:totem_particle ~ ~1 ~
execute if score #shake bce_sys matches 1 run camerashake add @s 0.12 0.12 positional
