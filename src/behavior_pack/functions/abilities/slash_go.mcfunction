scoreboard players add @s bce_combo 1
execute if score @s bce_combo matches 4.. run scoreboard players set @s bce_combo 1
execute if score @s bce_combo matches 3 unless score @s bce_stam >= _cost_heavy bce_sys run scoreboard players set @s bce_combo 1
execute if score @s bce_combo matches 1 run function abilities/slash_1
execute if score @s bce_combo matches 2 run function abilities/slash_2
execute if score @s bce_combo matches 3 run function abilities/slash_3
scoreboard players set @s bce_cwin 30
