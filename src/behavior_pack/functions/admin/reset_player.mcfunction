# test-data reset for one player (re-inits next tick)
execute if entity @s[tag=bce_admin] run tag @s remove bce_init
execute if entity @s[tag=bce_admin] run scoreboard players set @s bce_q 0
execute if entity @s[tag=bce_admin] run scoreboard players set @s bce_ps 0
execute if entity @s[tag=bce_admin] run scoreboard players set @s bce_cp 0
execute if entity @s[tag=bce_admin] run clear @s
execute if entity @s[tag=bce_admin] run function cutscenes/force_end
