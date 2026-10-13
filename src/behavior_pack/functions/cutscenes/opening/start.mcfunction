# cutscene opening: start (run as the player)
tag @s add bce_cs
scoreboard players set @s bce_cs 1
scoreboard players set @s bce_cst 0
inputpermission set @s movement disabled
inputpermission set @s camera disabled
clear @s paper
give @s paper 1
tp @s -7.5 100 0.5 facing 14 102 0
execute if score _started bce_sys matches 0 run scoreboard players set _started bce_sys 1
