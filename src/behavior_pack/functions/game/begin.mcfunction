# run as player. also: /execute as @s run function game/begin
scoreboard players set @s bce_ps 1
execute if score _astate bce_sys matches 4 run scoreboard players set _astate bce_sys 5
function cutscenes/opening/start
