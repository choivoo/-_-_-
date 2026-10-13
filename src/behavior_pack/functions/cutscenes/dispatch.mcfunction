# runs every tick: advance all active cutscenes
execute as @a[tag=bce_cs,scores={bce_cs=3}] at @s run function cutscenes/boss_death/tick
execute as @a[tag=bce_cs,scores={bce_cs=2}] at @s run function cutscenes/boss_intro/tick
execute as @a[tag=bce_cs,scores={bce_cs=4}] at @s run function cutscenes/ending/tick
execute as @a[tag=bce_cs,scores={bce_cs=1}] at @s run function cutscenes/opening/tick
execute as @a[tag=bce_cs,scores={bce_cs=5}] at @s run function cutscenes/q4_intro/tick
execute as @a[tag=bce_cs,scores={bce_cs=6}] at @s run function cutscenes/q6_intro/tick
execute as @a[tag=bce_cs,scores={bce_cs=7}] at @s run function cutscenes/q7_intro/tick
