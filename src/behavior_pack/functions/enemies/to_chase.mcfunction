scoreboard players set @s bce_ai 2
scoreboard players set @s bce_aitm 0
execute if entity @s[tag=bce_e1] run effect @s slowness 100000 0 true
execute if entity @s[tag=bce_e2] run effect @s speed 100000 1 true
execute if entity @s[tag=bce_e4] run effect @s resistance 100000 1 true
execute if entity @s[tag=bce_e4] run effect @s slowness 100000 0 true
