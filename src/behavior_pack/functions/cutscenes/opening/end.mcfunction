# cutscene opening: restore camera + input, then on-end hooks
camera @s clear
inputpermission set @s movement enabled
inputpermission set @s camera enabled
tag @s remove bce_cs
scoreboard players set @s bce_cs 0
scoreboard players set @s bce_cst 0
clear @s paper
title @s clear
scoreboard players set @s bce_ps 2
scoreboard players set @s bce_q 1
scoreboard players set @s bce_cp 0
spawnpoint @s -7 100 0
tellraw @s {"rawtext":[{"text":"§e[튜토리얼] §f앞으로 걸어가 보세요. 낮은 벽은 점프로 넘습니다."}]}
