# every 5 ticks: players that never started get placed at the altar and see the opening. Re-joining players (ps>0) are untouched
scoreboard players operation _m5a bce_sys = _tick bce_sys
scoreboard players operation _m5a bce_sys %= _c5 bce_sys
execute if score _m5a bce_sys matches 0 as @a[tag=bce_init,tag=!bce_cs,scores={bce_ps=0}] at @s run function auto/start_player
