scoreboard players set #btrack bce_sys 0
playsound note.bell @a[x=402,y=100,z=-17,dx=34,dy=25,dz=34] ~ ~ ~ 1 0.5
titleraw @a[x=402,y=100,z=-17,dx=34,dy=25,dz=34] actionbar {"rawtext":[{"text":"§c⚠ 바닥 표식! 벗어나세요"}]}
execute if score #mode bce_sys matches 1 run playanimation @e[tag=bce_boss] animation.bce_guardian.boss_attack
scoreboard players add #bq bce_sys 1
execute if score #bq bce_sys matches 4.. run scoreboard players set #bq bce_sys 0
execute if score #bq bce_sys matches 0 positioned 411 100 -8 run particle minecraft:basic_flame_particle ~6.0 ~0.2 ~0.0
execute if score #bq bce_sys matches 0 positioned 411 100 -8 run particle minecraft:basic_flame_particle ~5.4 ~0.2 ~2.6
execute if score #bq bce_sys matches 0 positioned 411 100 -8 run particle minecraft:basic_flame_particle ~3.7 ~0.2 ~4.7
execute if score #bq bce_sys matches 0 positioned 411 100 -8 run particle minecraft:basic_flame_particle ~1.3 ~0.2 ~5.8
execute if score #bq bce_sys matches 0 positioned 411 100 -8 run particle minecraft:basic_flame_particle ~-1.3 ~0.2 ~5.8
execute if score #bq bce_sys matches 0 positioned 411 100 -8 run particle minecraft:basic_flame_particle ~-3.7 ~0.2 ~4.7
execute if score #bq bce_sys matches 0 positioned 411 100 -8 run particle minecraft:basic_flame_particle ~-5.4 ~0.2 ~2.6
execute if score #bq bce_sys matches 0 positioned 411 100 -8 run particle minecraft:basic_flame_particle ~-6.0 ~0.2 ~0.0
execute if score #bq bce_sys matches 0 positioned 411 100 -8 run particle minecraft:basic_flame_particle ~-5.4 ~0.2 ~-2.6
execute if score #bq bce_sys matches 0 positioned 411 100 -8 run particle minecraft:basic_flame_particle ~-3.7 ~0.2 ~-4.7
execute if score #bq bce_sys matches 0 positioned 411 100 -8 run particle minecraft:basic_flame_particle ~-1.3 ~0.2 ~-5.8
execute if score #bq bce_sys matches 0 positioned 411 100 -8 run particle minecraft:basic_flame_particle ~1.3 ~0.2 ~-5.8
execute if score #bq bce_sys matches 0 positioned 411 100 -8 run particle minecraft:basic_flame_particle ~3.7 ~0.2 ~-4.7
execute if score #bq bce_sys matches 0 positioned 411 100 -8 run particle minecraft:basic_flame_particle ~5.4 ~0.2 ~-2.6
execute if score #bq bce_sys matches 1 positioned 427 100 -8 run particle minecraft:basic_flame_particle ~6.0 ~0.2 ~0.0
execute if score #bq bce_sys matches 1 positioned 427 100 -8 run particle minecraft:basic_flame_particle ~5.4 ~0.2 ~2.6
execute if score #bq bce_sys matches 1 positioned 427 100 -8 run particle minecraft:basic_flame_particle ~3.7 ~0.2 ~4.7
execute if score #bq bce_sys matches 1 positioned 427 100 -8 run particle minecraft:basic_flame_particle ~1.3 ~0.2 ~5.8
execute if score #bq bce_sys matches 1 positioned 427 100 -8 run particle minecraft:basic_flame_particle ~-1.3 ~0.2 ~5.8
execute if score #bq bce_sys matches 1 positioned 427 100 -8 run particle minecraft:basic_flame_particle ~-3.7 ~0.2 ~4.7
execute if score #bq bce_sys matches 1 positioned 427 100 -8 run particle minecraft:basic_flame_particle ~-5.4 ~0.2 ~2.6
execute if score #bq bce_sys matches 1 positioned 427 100 -8 run particle minecraft:basic_flame_particle ~-6.0 ~0.2 ~0.0
execute if score #bq bce_sys matches 1 positioned 427 100 -8 run particle minecraft:basic_flame_particle ~-5.4 ~0.2 ~-2.6
execute if score #bq bce_sys matches 1 positioned 427 100 -8 run particle minecraft:basic_flame_particle ~-3.7 ~0.2 ~-4.7
execute if score #bq bce_sys matches 1 positioned 427 100 -8 run particle minecraft:basic_flame_particle ~-1.3 ~0.2 ~-5.8
execute if score #bq bce_sys matches 1 positioned 427 100 -8 run particle minecraft:basic_flame_particle ~1.3 ~0.2 ~-5.8
execute if score #bq bce_sys matches 1 positioned 427 100 -8 run particle minecraft:basic_flame_particle ~3.7 ~0.2 ~-4.7
execute if score #bq bce_sys matches 1 positioned 427 100 -8 run particle minecraft:basic_flame_particle ~5.4 ~0.2 ~-2.6
execute if score #bq bce_sys matches 2 positioned 427 100 8 run particle minecraft:basic_flame_particle ~6.0 ~0.2 ~0.0
execute if score #bq bce_sys matches 2 positioned 427 100 8 run particle minecraft:basic_flame_particle ~5.4 ~0.2 ~2.6
execute if score #bq bce_sys matches 2 positioned 427 100 8 run particle minecraft:basic_flame_particle ~3.7 ~0.2 ~4.7
execute if score #bq bce_sys matches 2 positioned 427 100 8 run particle minecraft:basic_flame_particle ~1.3 ~0.2 ~5.8
execute if score #bq bce_sys matches 2 positioned 427 100 8 run particle minecraft:basic_flame_particle ~-1.3 ~0.2 ~5.8
execute if score #bq bce_sys matches 2 positioned 427 100 8 run particle minecraft:basic_flame_particle ~-3.7 ~0.2 ~4.7
execute if score #bq bce_sys matches 2 positioned 427 100 8 run particle minecraft:basic_flame_particle ~-5.4 ~0.2 ~2.6
execute if score #bq bce_sys matches 2 positioned 427 100 8 run particle minecraft:basic_flame_particle ~-6.0 ~0.2 ~0.0
execute if score #bq bce_sys matches 2 positioned 427 100 8 run particle minecraft:basic_flame_particle ~-5.4 ~0.2 ~-2.6
execute if score #bq bce_sys matches 2 positioned 427 100 8 run particle minecraft:basic_flame_particle ~-3.7 ~0.2 ~-4.7
execute if score #bq bce_sys matches 2 positioned 427 100 8 run particle minecraft:basic_flame_particle ~-1.3 ~0.2 ~-5.8
execute if score #bq bce_sys matches 2 positioned 427 100 8 run particle minecraft:basic_flame_particle ~1.3 ~0.2 ~-5.8
execute if score #bq bce_sys matches 2 positioned 427 100 8 run particle minecraft:basic_flame_particle ~3.7 ~0.2 ~-4.7
execute if score #bq bce_sys matches 2 positioned 427 100 8 run particle minecraft:basic_flame_particle ~5.4 ~0.2 ~-2.6
execute if score #bq bce_sys matches 3 positioned 411 100 8 run particle minecraft:basic_flame_particle ~6.0 ~0.2 ~0.0
execute if score #bq bce_sys matches 3 positioned 411 100 8 run particle minecraft:basic_flame_particle ~5.4 ~0.2 ~2.6
execute if score #bq bce_sys matches 3 positioned 411 100 8 run particle minecraft:basic_flame_particle ~3.7 ~0.2 ~4.7
execute if score #bq bce_sys matches 3 positioned 411 100 8 run particle minecraft:basic_flame_particle ~1.3 ~0.2 ~5.8
execute if score #bq bce_sys matches 3 positioned 411 100 8 run particle minecraft:basic_flame_particle ~-1.3 ~0.2 ~5.8
execute if score #bq bce_sys matches 3 positioned 411 100 8 run particle minecraft:basic_flame_particle ~-3.7 ~0.2 ~4.7
execute if score #bq bce_sys matches 3 positioned 411 100 8 run particle minecraft:basic_flame_particle ~-5.4 ~0.2 ~2.6
execute if score #bq bce_sys matches 3 positioned 411 100 8 run particle minecraft:basic_flame_particle ~-6.0 ~0.2 ~0.0
execute if score #bq bce_sys matches 3 positioned 411 100 8 run particle minecraft:basic_flame_particle ~-5.4 ~0.2 ~-2.6
execute if score #bq bce_sys matches 3 positioned 411 100 8 run particle minecraft:basic_flame_particle ~-3.7 ~0.2 ~-4.7
execute if score #bq bce_sys matches 3 positioned 411 100 8 run particle minecraft:basic_flame_particle ~-1.3 ~0.2 ~-5.8
execute if score #bq bce_sys matches 3 positioned 411 100 8 run particle minecraft:basic_flame_particle ~1.3 ~0.2 ~-5.8
execute if score #bq bce_sys matches 3 positioned 411 100 8 run particle minecraft:basic_flame_particle ~3.7 ~0.2 ~-4.7
execute if score #bq bce_sys matches 3 positioned 411 100 8 run particle minecraft:basic_flame_particle ~5.4 ~0.2 ~-2.6
