# shockwave: sphere r=6 around the player
scoreboard players operation @s bce_stam -= _cost_ult bce_sys
scoreboard players set @s bce_cdult 200
damage @e[tag=bce_enemy,r=6] 10 entity_attack entity @s
execute if entity @e[tag=bce_boss,r=6] if score _mode bce_sys matches 0 if score _binv bce_sys matches 0 run scoreboard players remove _bhp bce_sys 25
execute as @e[tag=bce_enemy,tag=!bce_boss,r=6] run function enemies/stun
playsound random.explode @a ~ ~ ~ 0.8 1.2
particle minecraft:huge_explosion_emitter ~ ~1 ~
particle minecraft:totem_particle ~4.0 ~0.3 ~0.0
particle minecraft:totem_particle ~3.5 ~0.3 ~2.0
particle minecraft:totem_particle ~2.0 ~0.3 ~3.5
particle minecraft:totem_particle ~0.0 ~0.3 ~4.0
particle minecraft:totem_particle ~-2.0 ~0.3 ~3.5
particle minecraft:totem_particle ~-3.5 ~0.3 ~2.0
particle minecraft:totem_particle ~-4.0 ~0.3 ~0.0
particle minecraft:totem_particle ~-3.5 ~0.3 ~-2.0
particle minecraft:totem_particle ~-2.0 ~0.3 ~-3.5
particle minecraft:totem_particle ~-0.0 ~0.3 ~-4.0
particle minecraft:totem_particle ~2.0 ~0.3 ~-3.5
particle minecraft:totem_particle ~3.5 ~0.3 ~-2.0
execute if score _shake bce_sys matches 1 run camerashake add @s 0.3 0.3 positional
