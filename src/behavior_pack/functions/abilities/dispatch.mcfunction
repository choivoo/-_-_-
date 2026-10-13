# as player at @s. cur: 1 slash 2-5 dodge F/B/L/R 6 ult 7 heal
execute if score @s bce_cur matches 1 run function abilities/slash
execute if score @s bce_cur matches 2 run function abilities/dodge_f
execute if score @s bce_cur matches 3 run function abilities/dodge_b
execute if score @s bce_cur matches 4 run function abilities/dodge_l
execute if score @s bce_cur matches 5 run function abilities/dodge_r
execute if score @s bce_cur matches 6 run function abilities/ult
execute if score @s bce_cur matches 7 run function abilities/heal
