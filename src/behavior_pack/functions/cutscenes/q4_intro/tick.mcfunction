# cutscene q4_intro: timeline tick, 130 ticks total
execute if score @s bce_cst matches 0 run camera @s fade time 0.3 0 0.4 color 0 0 0
execute if score @s bce_cst matches 4 run camera @s set minecraft:free pos 30 110 0 facing 62 106 0
execute if score @s bce_cst matches 8 run camera @s set minecraft:free ease 4.5 in_out_sine pos 44 112 0 facing 70 104 0
execute if score @s bce_cst matches 15 run titleraw @s actionbar {"rawtext":[{"text":"§f동쪽 다리 너머, 빛기둥 아래가 잿빛 마을이다."}]}
execute if score @s bce_cst matches 45 run titleraw @s actionbar {"rawtext":[{"text":"§f동쪽 다리 너머, 빛기둥 아래가 잿빛 마을이다."}]}
execute if score @s bce_cst matches 75 run titleraw @s actionbar {"rawtext":[{"text":"§f동쪽 다리 너머, 빛기둥 아래가 잿빛 마을이다."}]}
execute if score @s bce_cst matches 105 run titleraw @s actionbar {"rawtext":[{"text":"§f동쪽 다리 너머, 빛기둥 아래가 잿빛 마을이다."}]}
execute if score @s bce_cst matches 110 run camera @s fade time 0.3 0 0.4 color 0 0 0
scoreboard players add @s bce_cst 1
execute if score @s bce_cst matches 130.. run function cutscenes/q4_intro/end
