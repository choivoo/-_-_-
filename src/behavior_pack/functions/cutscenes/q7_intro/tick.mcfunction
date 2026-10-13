# cutscene q7_intro: timeline tick, 170 ticks total
execute if score @s bce_cst matches 0 run camera @s fade time 0.3 0 0.4 color 0 0 0
execute if score @s bce_cst matches 4 run camera @s set minecraft:free pos 338 112 0 facing 389 118 0
execute if score @s bce_cst matches 8 run camera @s set minecraft:free ease 6 in_out_sine pos 346 118 0 facing 389 150 0
execute if score @s bce_cst matches 15 run titleraw @s actionbar {"rawtext":[{"text":"§f저 멀리, 검은별의 성채 첨탑이 하늘을 찌른다."}]}
execute if score @s bce_cst matches 30 run playsound mob.enderdragon.growl @s ~ ~ ~ 0.3 0.5
execute if score @s bce_cst matches 45 run titleraw @s actionbar {"rawtext":[{"text":"§f저 멀리, 검은별의 성채 첨탑이 하늘을 찌른다."}]}
execute if score @s bce_cst matches 75 run titleraw @s actionbar {"rawtext":[{"text":"§f저 멀리, 검은별의 성채 첨탑이 하늘을 찌른다."}]}
execute if score @s bce_cst matches 105 run titleraw @s actionbar {"rawtext":[{"text":"§f저 멀리, 검은별의 성채 첨탑이 하늘을 찌른다."}]}
execute if score @s bce_cst matches 150 run camera @s fade time 0.3 0 0.4 color 0 0 0
scoreboard players add @s bce_cst 1
execute if score @s bce_cst matches 170.. run function cutscenes/q7_intro/end
