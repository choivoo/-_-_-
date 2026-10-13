# cutscene boss_death: timeline tick, 160 ticks total
execute if score @s bce_cst matches 0 run camera @s set minecraft:free pos 411 103 5 facing 419 103.5 0
execute if score @s bce_cst matches 0 run playsound mob.wither.death @s ~ ~ ~ 0.8 0.8
execute if score @s bce_cst matches 0 run particle minecraft:huge_explosion_emitter 419 102 0
execute if score @s bce_cst matches 30 run camera @s set minecraft:free ease 3 in_sine pos 409 104 3 facing 419 104 0
execute if score @s bce_cst matches 40 run titleraw @s actionbar {"rawtext":[{"text":"§f검은별의 힘이 무너져 내린다…"}]}
execute if score @s bce_cst matches 40 run inputpermission set @s movement disabled
execute if score @s bce_cst matches 40 run inputpermission set @s camera disabled
execute if score @s bce_cst matches 60 run particle minecraft:totem_particle 419 103 0
execute if score @s bce_cst matches 70 run titleraw @s actionbar {"rawtext":[{"text":"§f검은별의 힘이 무너져 내린다…"}]}
execute if score @s bce_cst matches 90 run execute if score _shake bce_sys matches 1 run camerashake add @s 0.3 1 positional
execute if score @s bce_cst matches 100 run titleraw @s actionbar {"rawtext":[{"text":"§f검은별의 힘이 무너져 내린다…"}]}
execute if score @s bce_cst matches 100 run inputpermission set @s movement disabled
execute if score @s bce_cst matches 100 run inputpermission set @s camera disabled
execute if score @s bce_cst matches 130 run camera @s fade time 0.5 0.2 0.5 color 0 0 0
execute if score @s bce_cst matches 140 run function bosses/cleanup
scoreboard players add @s bce_cst 1
execute if score @s bce_cst matches 160.. run function cutscenes/boss_death/end
