# test-data reset for one player (re-inits next tick)
tag @s remove bce_init
scoreboard players set @s bce_q 0
scoreboard players set @s bce_ps 0
scoreboard players set @s bce_cp 0
clear @s
function cutscenes/force_end
