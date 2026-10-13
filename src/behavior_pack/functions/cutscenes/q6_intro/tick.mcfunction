# cutscene q6_intro: timeline tick, 130 ticks total
execute if score @s bce_cst matches 0 run camera @s fade time 0.3 0 0.4 color 0 0 0
execute if score @s bce_cst matches 4 run camera @s set minecraft:free pos 236 108 0 facing 276 106 0
execute if score @s bce_cst matches 8 run camera @s set minecraft:free ease 4.5 in_out_sine pos 246 113 0 facing 286 112 0
execute if score @s bce_cst matches 15 run titleraw @s actionbar {"rawtext":[{"text":"§f다리 끝에 붕괴된 대성벽이 길을 막고 있다."}]}
execute if score @s bce_cst matches 40 run inputpermission set @s movement disabled
execute if score @s bce_cst matches 40 run inputpermission set @s camera disabled
execute if score @s bce_cst matches 45 run titleraw @s actionbar {"rawtext":[{"text":"§f다리 끝에 붕괴된 대성벽이 길을 막고 있다."}]}
execute if score @s bce_cst matches 75 run titleraw @s actionbar {"rawtext":[{"text":"§f다리 끝에 붕괴된 대성벽이 길을 막고 있다."}]}
execute if score @s bce_cst matches 100 run inputpermission set @s movement disabled
execute if score @s bce_cst matches 100 run inputpermission set @s camera disabled
execute if score @s bce_cst matches 105 run titleraw @s actionbar {"rawtext":[{"text":"§f다리 끝에 붕괴된 대성벽이 길을 막고 있다."}]}
execute if score @s bce_cst matches 110 run camera @s fade time 0.3 0 0.4 color 0 0 0
scoreboard players add @s bce_cst 1
execute if score @s bce_cst matches 130.. run function cutscenes/q6_intro/end
