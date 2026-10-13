# cutscene boss_intro: timeline tick, 240 ticks total
execute if score @s bce_cst matches 0 run camera @s fade time 0.4 0.2 0.5 color 0 0 0
execute if score @s bce_cst matches 0 run camera @s set minecraft:free pos 404 106 0 facing 419 103 0
execute if score @s bce_cst matches 0 run execute if score _bstate bce_sys matches 0 run function bosses/summon
execute if score @s bce_cst matches 30 run playsound mob.wither.spawn @s ~ ~ ~ 0.8 0.7
execute if score @s bce_cst matches 40 run camera @s set minecraft:free ease 3.5 in_out_sine pos 412 103.5 7 facing 419 103.8 0
execute if score @s bce_cst matches 40 run inputpermission set @s movement disabled
execute if score @s bce_cst matches 40 run inputpermission set @s camera disabled
execute if score @s bce_cst matches 50 run execute if score _shake bce_sys matches 1 run camerashake add @s 0.2 1.5 positional
execute if score @s bce_cst matches 100 run titleraw @s times 10 50 15
execute if score @s bce_cst matches 100 run titleraw @s subtitle {"rawtext":[{"text":"봉인된 기사"}]}
execute if score @s bce_cst matches 100 run titleraw @s title {"rawtext":[{"text":"§c검은별의 수호자"}]}
execute if score @s bce_cst matches 100 run playsound mob.enderdragon.growl @s ~ ~ ~ 0.6 0.6
execute if score @s bce_cst matches 100 run inputpermission set @s movement disabled
execute if score @s bce_cst matches 100 run inputpermission set @s camera disabled
execute if score @s bce_cst matches 150 run camera @s set minecraft:free ease 2.5 in_out_sine pos 407 104 -5 facing 419 103 0
execute if score @s bce_cst matches 160 run inputpermission set @s movement disabled
execute if score @s bce_cst matches 160 run inputpermission set @s camera disabled
execute if score @s bce_cst matches 205 run camera @s fade time 0.4 0 0.5 color 0 0 0
execute if score @s bce_cst matches 215 run playsound record.otherside @s ~ ~ ~ 0.8 1
scoreboard players add @s bce_cst 1
execute if score @s bce_cst matches 240.. run function cutscenes/boss_intro/end
