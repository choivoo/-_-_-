# as player at end of boss_death cutscene. world part is guarded => safe for multiple players
execute if score #bstate bce_sys matches 3 run function bosses/victory_world
scoreboard players set @s[scores={bce_q=7}] bce_q 8
give @s golden_apple 3
function cutscenes/ending/start
