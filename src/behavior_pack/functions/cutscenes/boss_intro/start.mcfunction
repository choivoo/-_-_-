# cutscene boss_intro: start (run as the player)
tag @s add bce_cs
scoreboard players set @s bce_cs 2
scoreboard players set @s bce_cst 0
inputpermission set @s movement disabled
inputpermission set @s camera disabled
clear @s paper
give @s paper 1
execute if score _bstate bce_sys matches 0 run function bosses/summon
