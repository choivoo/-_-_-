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
titleraw @s times 10 50 15
titleraw @s subtitle {"rawtext":[{"text":"이동하여 신전 밖으로 나가세요"}]}
titleraw @s title {"rawtext":[{"text":"§e튜토리얼"}]}
tellraw @s {"rawtext":[{"text":"§e[튜토리얼] §f이동하여 신전 밖으로 나가세요. 동쪽 출구의 빛기둥이 목적지입니다. 낮은 벽은 점프로 넘으세요."}]}
