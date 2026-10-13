# run as the player: skip the active cutscene
execute if score @s bce_cs matches 3 at @s run function cutscenes/boss_death/skip
execute if score @s bce_cs matches 2 at @s run function cutscenes/boss_intro/skip
execute if score @s bce_cs matches 4 at @s run function cutscenes/ending/skip
execute if score @s bce_cs matches 1 at @s run function cutscenes/opening/skip
