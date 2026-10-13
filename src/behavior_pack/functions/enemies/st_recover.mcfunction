execute if entity @s[tag=bce_e1] if score @s bce_aitm matches 24.. run function enemies/to_chase
execute if entity @s[tag=bce_e2] if score @s bce_aitm matches 14.. run function enemies/to_chase
execute if entity @s[tag=bce_e4] if score @s bce_aitm matches 40.. run function enemies/to_chase
execute if entity @s[tag=bce_e3] if score @s bce_aitm matches 40.. run function enemies/to_chase
execute if entity @s[tag=bce_e2] if score @s bce_aitm matches 2 run function enemies/retreat
execute if entity @s[tag=bce_e3] if score @s bce_aitm matches 2 run function enemies/retreat
effect @s slowness 1 3 true
