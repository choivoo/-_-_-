# cutscene ending: timeline tick, 420 ticks total
execute if score @s bce_cst matches 0 run camera @s fade time 0 0.5 1.5 color 0 0 0
execute if score @s bce_cst matches 0 run camera @s set minecraft:free pos 400 112 -10 facing 419 104 0
execute if score @s bce_cst matches 0 run time set 23000
execute if score @s bce_cst matches 10 run camera @s set minecraft:free ease 8 in_out_sine pos 425 110 10 facing 419 104 0
execute if score @s bce_cst matches 20 run titleraw @s actionbar {"rawtext":[{"text":"§f검은별의 봉인이 다시 닫혔다."}]}
execute if score @s bce_cst matches 20 run playsound random.levelup @s ~ ~ ~ 0.6 0.9
execute if score @s bce_cst matches 50 run titleraw @s actionbar {"rawtext":[{"text":"§f검은별의 봉인이 다시 닫혔다."}]}
execute if score @s bce_cst matches 80 run titleraw @s actionbar {"rawtext":[{"text":"§f검은별의 봉인이 다시 닫혔다."}]}
execute if score @s bce_cst matches 180 run camera @s set minecraft:free ease 8 in_out_sine pos 419 125 0 facing 419 100 0
execute if score @s bce_cst matches 200 run titleraw @s actionbar {"rawtext":[{"text":"§f하늘 도시의 잔해 위로 새벽이 밝아온다."}]}
execute if score @s bce_cst matches 230 run titleraw @s actionbar {"rawtext":[{"text":"§f하늘 도시의 잔해 위로 새벽이 밝아온다."}]}
execute if score @s bce_cst matches 260 run titleraw @s actionbar {"rawtext":[{"text":"§f하늘 도시의 잔해 위로 새벽이 밝아온다."}]}
execute if score @s bce_cst matches 340 run titleraw @s times 20 60 20
execute if score @s bce_cst matches 340 run titleraw @s subtitle {"rawtext":[{"text":"검은별의 성채"}]}
execute if score @s bce_cst matches 340 run titleraw @s title {"rawtext":[{"text":"끝 — THE END"}]}
execute if score @s bce_cst matches 400 run camera @s fade time 0.5 0 0.5 color 0 0 0
scoreboard players add @s bce_cst 1
execute if score @s bce_cst matches 420.. run function cutscenes/ending/end
