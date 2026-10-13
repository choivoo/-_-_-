# ULTIMATE steps 2-4: effect ring (t=2,10) -> inner damage (t=20) -> outer damage (t=26) -> end (t=40)
scoreboard players add @s bce_ultt 1
execute if score @s bce_ultt matches 2 run particle minecraft:totem_particle ~3.0 ~0.2 ~0.0
execute if score @s bce_ultt matches 2 run particle minecraft:totem_particle ~2.6 ~0.2 ~1.5
execute if score @s bce_ultt matches 2 run particle minecraft:totem_particle ~1.5 ~0.2 ~2.6
execute if score @s bce_ultt matches 2 run particle minecraft:totem_particle ~0.0 ~0.2 ~3.0
execute if score @s bce_ultt matches 2 run particle minecraft:totem_particle ~-1.5 ~0.2 ~2.6
execute if score @s bce_ultt matches 2 run particle minecraft:totem_particle ~-2.6 ~0.2 ~1.5
execute if score @s bce_ultt matches 2 run particle minecraft:totem_particle ~-3.0 ~0.2 ~0.0
execute if score @s bce_ultt matches 2 run particle minecraft:totem_particle ~-2.6 ~0.2 ~-1.5
execute if score @s bce_ultt matches 2 run particle minecraft:totem_particle ~-1.5 ~0.2 ~-2.6
execute if score @s bce_ultt matches 2 run particle minecraft:totem_particle ~-0.0 ~0.2 ~-3.0
execute if score @s bce_ultt matches 2 run particle minecraft:totem_particle ~1.5 ~0.2 ~-2.6
execute if score @s bce_ultt matches 2 run particle minecraft:totem_particle ~2.6 ~0.2 ~-1.5
execute if score @s bce_ultt matches 10 run particle minecraft:soul_particle ~6.0 ~0.3 ~0.0
execute if score @s bce_ultt matches 10 run particle minecraft:soul_particle ~5.5 ~0.3 ~2.3
execute if score @s bce_ultt matches 10 run particle minecraft:soul_particle ~4.2 ~0.3 ~4.2
execute if score @s bce_ultt matches 10 run particle minecraft:soul_particle ~2.3 ~0.3 ~5.5
execute if score @s bce_ultt matches 10 run particle minecraft:soul_particle ~0.0 ~0.3 ~6.0
execute if score @s bce_ultt matches 10 run particle minecraft:soul_particle ~-2.3 ~0.3 ~5.5
execute if score @s bce_ultt matches 10 run particle minecraft:soul_particle ~-4.2 ~0.3 ~4.2
execute if score @s bce_ultt matches 10 run particle minecraft:soul_particle ~-5.5 ~0.3 ~2.3
execute if score @s bce_ultt matches 10 run particle minecraft:soul_particle ~-6.0 ~0.3 ~0.0
execute if score @s bce_ultt matches 10 run particle minecraft:soul_particle ~-5.5 ~0.3 ~-2.3
execute if score @s bce_ultt matches 10 run particle minecraft:soul_particle ~-4.2 ~0.3 ~-4.2
execute if score @s bce_ultt matches 10 run particle minecraft:soul_particle ~-2.3 ~0.3 ~-5.5
execute if score @s bce_ultt matches 10 run particle minecraft:soul_particle ~-0.0 ~0.3 ~-6.0
execute if score @s bce_ultt matches 10 run particle minecraft:soul_particle ~2.3 ~0.3 ~-5.5
execute if score @s bce_ultt matches 10 run particle minecraft:soul_particle ~4.2 ~0.3 ~-4.2
execute if score @s bce_ultt matches 10 run particle minecraft:soul_particle ~5.5 ~0.3 ~-2.3
execute if score @s bce_ultt matches 10 run execute if score _shake bce_sys matches 1 run camerashake add @s 0.15 0.4 positional
execute if score @s bce_ultt matches 20 run damage @e[tag=bce_enemy,r=9] 14 entity_attack entity @s
execute if score @s bce_ultt matches 20 if entity @e[tag=bce_boss,r=9] if score _mode bce_sys matches 0 if score _binv bce_sys matches 0 run scoreboard players remove _bhp bce_sys 60
execute if score @s bce_ultt matches 20 run particle minecraft:huge_explosion_emitter ~ ~1 ~
execute if score @s bce_ultt matches 20 run playsound random.explode @a ~ ~ ~ 1 0.7
execute if score @s bce_ultt matches 20 run execute if score _shake bce_sys matches 1 run camerashake add @s 0.45 0.5 positional
execute if score @s bce_ultt matches 26 run damage @e[tag=bce_enemy,tag=!bce_boss,r=13] 6 entity_attack entity @s
execute if score @s bce_ultt matches 26 run execute if score _quality bce_sys matches 1.. run particle minecraft:huge_explosion_emitter ~4 ~1 ~
execute if score @s bce_ultt matches 40 run titleraw @s actionbar {"rawtext":[{"text":"§d별의 심판 완료"}]}
execute if score @s bce_ultt matches 40.. run scoreboard players set @s bce_ultt 0
