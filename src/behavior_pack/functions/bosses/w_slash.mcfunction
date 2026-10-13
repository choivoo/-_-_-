scoreboard players set _btrack bce_sys 0
playsound note.bell @a[x=402,y=100,z=-17,dx=34,dy=25,dz=34] ~ ~ ~ 1 0.5
titleraw @a[x=402,y=100,z=-17,dx=34,dy=25,dz=34] actionbar {"rawtext":[{"text":"§c⚠ 검격! 피하세요"}]}
execute if score _mode bce_sys matches 1 run playanimation @e[tag=bce_boss] animation.bce_guardian.boss_attack
execute as @e[tag=bce_boss] at @s run particle minecraft:basic_flame_particle ^ ^1.2 ^2
execute as @e[tag=bce_boss] at @s run particle minecraft:basic_flame_particle ^ ^1.2 ^3
execute as @e[tag=bce_boss] at @s run particle minecraft:basic_flame_particle ^0.8 ^1.2 ^2.5
execute as @e[tag=bce_boss] at @s run particle minecraft:basic_flame_particle ^-0.8 ^1.2 ^2.5
