# cutscene opening: timeline tick, 600 ticks total
execute if score @s bce_cst matches 0 run tp @s -7.5 100 0.5 facing 14 102 0
execute if score @s bce_cst matches 0 run camera @s fade time 0 2.5 1.5 color 0 0 0
execute if score @s bce_cst matches 0 run camera @s set minecraft:free pos -60 128 -75 facing 0 108 0
execute if score @s bce_cst matches 0 run playsound ambient.cave @s ~ ~ ~ 0.6 0.8
execute if score @s bce_cst matches 20 run titleraw @s actionbar {"rawtext":[{"text":"§f먼 폐허 너머로 바람이 분다…"}]}
execute if score @s bce_cst matches 40 run inputpermission set @s movement disabled
execute if score @s bce_cst matches 40 run inputpermission set @s camera disabled
execute if score @s bce_cst matches 50 run titleraw @s actionbar {"rawtext":[{"text":"§f먼 폐허 너머로 바람이 분다…"}]}
execute if score @s bce_cst matches 60 run camera @s set minecraft:free pos -60 128 -75 facing 0 108 0
execute if score @s bce_cst matches 80 run playsound ambient.cave @s ~ ~ ~ 0.5 0.7
execute if score @s bce_cst matches 100 run camera @s set minecraft:free ease 8 in_out_sine pos -38 120 -48 facing 0 106 0
execute if score @s bce_cst matches 100 run inputpermission set @s movement disabled
execute if score @s bce_cst matches 100 run inputpermission set @s camera disabled
execute if score @s bce_cst matches 140 run titleraw @s actionbar {"rawtext":[{"text":"§f무너진 하늘 도시의 신전이 보인다."}]}
execute if score @s bce_cst matches 160 run inputpermission set @s movement disabled
execute if score @s bce_cst matches 160 run inputpermission set @s camera disabled
execute if score @s bce_cst matches 170 run titleraw @s actionbar {"rawtext":[{"text":"§f무너진 하늘 도시의 신전이 보인다."}]}
execute if score @s bce_cst matches 200 run titleraw @s actionbar {"rawtext":[{"text":"§f무너진 하늘 도시의 신전이 보인다."}]}
execute if score @s bce_cst matches 220 run inputpermission set @s movement disabled
execute if score @s bce_cst matches 220 run inputpermission set @s camera disabled
execute if score @s bce_cst matches 260 run camera @s fade time 0.5 0 0.75 color 0 0 0
execute if score @s bce_cst matches 270 run camera @s set minecraft:free pos -4 102.2 3.5 facing -8 100.3 0.5
execute if score @s bce_cst matches 280 run inputpermission set @s movement disabled
execute if score @s bce_cst matches 280 run inputpermission set @s camera disabled
execute if score @s bce_cst matches 290 run playsound random.orb @s ~ ~ ~ 0.5 0.6
execute if score @s bce_cst matches 300 run titleraw @s actionbar {"rawtext":[{"text":"§f…여기는… 어디지?"}]}
execute if score @s bce_cst matches 330 run titleraw @s actionbar {"rawtext":[{"text":"§f…여기는… 어디지?"}]}
execute if score @s bce_cst matches 330 run camera @s set minecraft:free pos -4 102.2 3.5 facing -8 100.3 0.5
execute if score @s bce_cst matches 340 run inputpermission set @s movement disabled
execute if score @s bce_cst matches 340 run inputpermission set @s camera disabled
execute if score @s bce_cst matches 360 run titleraw @s actionbar {"rawtext":[{"text":"§f…여기는… 어디지?"}]}
execute if score @s bce_cst matches 380 run fill 13 100 -2 15 106 2 air
execute if score @s bce_cst matches 380 run camera @s set minecraft:free ease 3 in_out_sine pos -2 103 0 facing 14 102 0
execute if score @s bce_cst matches 385 run playsound random.explode @s ~ ~ ~ 0.4 0.5
execute if score @s bce_cst matches 390 run particle minecraft:endrod 14 102 0
execute if score @s bce_cst matches 395 run particle minecraft:endrod 14 104 1
execute if score @s bce_cst matches 400 run particle minecraft:endrod 14 101 -1
execute if score @s bce_cst matches 400 run inputpermission set @s movement disabled
execute if score @s bce_cst matches 400 run inputpermission set @s camera disabled
execute if score @s bce_cst matches 420 run titleraw @s actionbar {"rawtext":[{"text":"§f신전 문 너머로 빛이 쏟아져 들어온다."}]}
execute if score @s bce_cst matches 450 run titleraw @s actionbar {"rawtext":[{"text":"§f신전 문 너머로 빛이 쏟아져 들어온다."}]}
execute if score @s bce_cst matches 460 run inputpermission set @s movement disabled
execute if score @s bce_cst matches 460 run inputpermission set @s camera disabled
execute if score @s bce_cst matches 480 run titleraw @s actionbar {"rawtext":[{"text":"§f신전 문 너머로 빛이 쏟아져 들어온다."}]}
execute if score @s bce_cst matches 500 run camera @s set minecraft:free ease 2 in_out_sine pos -7.5 101.62 0.5 facing 14 102 0
execute if score @s bce_cst matches 520 run inputpermission set @s movement disabled
execute if score @s bce_cst matches 520 run inputpermission set @s camera disabled
execute if score @s bce_cst matches 540 run camera @s fade time 0.5 0 0.75 color 0 0 0
execute if score @s bce_cst matches 560 run titleraw @s times 10 50 20
execute if score @s bce_cst matches 560 run titleraw @s subtitle {"rawtext":[{"text":"The Blackstar Citadel"}]}
execute if score @s bce_cst matches 560 run titleraw @s title {"rawtext":[{"text":"검은별의 성채"}]}
execute if score @s bce_cst matches 560 run playsound random.levelup @s ~ ~ ~ 0.5 0.7
scoreboard players add @s bce_cst 1
execute if score @s bce_cst matches 600.. run function cutscenes/opening/end
