# cutscene ending: start (run as the player)
tag @s add bce_cs
scoreboard players set @s bce_cs 4
scoreboard players set @s bce_cst 0
inputpermission set @s movement disabled
inputpermission set @s camera disabled
clear @s paper
give @s paper 1
time set 23000
