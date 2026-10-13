# cutscene q6_intro: restore camera + input, then on-end hooks
camera @s clear
inputpermission set @s movement enabled
inputpermission set @s camera enabled
tag @s remove bce_cs
scoreboard players set @s bce_cs 0
scoreboard players set @s bce_cst 0
clear @s paper
title @s clear
