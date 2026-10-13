# recovery: run as a player stuck in a cutscene
camera @s clear
inputpermission set @s movement enabled
tag @s remove bce_cs
scoreboard players set @s bce_cs 0
scoreboard players set @s bce_cst 0
clear @s paper
