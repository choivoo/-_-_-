scoreboard players set _btrack bce_sys 0
playsound note.bell @a[x=402,y=100,z=-17,dx=34,dy=25,dz=34] ~ ~ ~ 1 0.5
titleraw @a[x=402,y=100,z=-17,dx=34,dy=25,dz=34] actionbar {"rawtext":[{"text":"§c⚠ 바닥 충격! 범위 밖으로"}]}
execute if score _mode bce_sys matches 1 run playanimation @e[tag=bce_boss] animation.bce_guardian.boss_attack
execute as @e[tag=bce_boss] at @s run particle minecraft:basic_flame_particle ~5.0 ~0.2 ~0.0
execute as @e[tag=bce_boss] at @s run particle minecraft:basic_flame_particle ~4.6 ~0.2 ~1.9
execute as @e[tag=bce_boss] at @s run particle minecraft:basic_flame_particle ~3.5 ~0.2 ~3.5
execute as @e[tag=bce_boss] at @s run particle minecraft:basic_flame_particle ~1.9 ~0.2 ~4.6
execute as @e[tag=bce_boss] at @s run particle minecraft:basic_flame_particle ~0.0 ~0.2 ~5.0
execute as @e[tag=bce_boss] at @s run particle minecraft:basic_flame_particle ~-1.9 ~0.2 ~4.6
execute as @e[tag=bce_boss] at @s run particle minecraft:basic_flame_particle ~-3.5 ~0.2 ~3.5
execute as @e[tag=bce_boss] at @s run particle minecraft:basic_flame_particle ~-4.6 ~0.2 ~1.9
execute as @e[tag=bce_boss] at @s run particle minecraft:basic_flame_particle ~-5.0 ~0.2 ~0.0
execute as @e[tag=bce_boss] at @s run particle minecraft:basic_flame_particle ~-4.6 ~0.2 ~-1.9
execute as @e[tag=bce_boss] at @s run particle minecraft:basic_flame_particle ~-3.5 ~0.2 ~-3.5
execute as @e[tag=bce_boss] at @s run particle minecraft:basic_flame_particle ~-1.9 ~0.2 ~-4.6
execute as @e[tag=bce_boss] at @s run particle minecraft:basic_flame_particle ~-0.0 ~0.2 ~-5.0
execute as @e[tag=bce_boss] at @s run particle minecraft:basic_flame_particle ~1.9 ~0.2 ~-4.6
execute as @e[tag=bce_boss] at @s run particle minecraft:basic_flame_particle ~3.5 ~0.2 ~-3.5
execute as @e[tag=bce_boss] at @s run particle minecraft:basic_flame_particle ~4.6 ~0.2 ~-1.9
execute if score _mode bce_sys matches 1 as @e[tag=bce_boss] at @s run particle bce:warning_ring ~ ~0.2 ~
