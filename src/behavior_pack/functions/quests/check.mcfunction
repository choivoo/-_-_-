# every 10 ticks. reward is given only on the q -> q+1 transition (never twice)
execute as @a[scores={bce_q=1,bce_ps=2..}] at @s if entity @s[x=-1,y=100,z=-18,dx=4,dy=8,dz=36] run function quests/done_1
execute as @a[scores={bce_q=2}] at @s if entity @s[x=6,y=100,z=-17,dx=4,dy=3,dz=4] run function quests/done_2
execute as @a[scores={bce_q=3}] at @s if entity @s[x=19,y=100,z=-13,dx=18,dy=12,dz=26] if score #yard bce_sys matches 0 run function world/yard_spawn
execute if score #yard bce_sys matches 1.. as @a[scores={bce_q=3}] at @s if entity @s[x=19,y=100,z=-13,dx=18,dy=12,dz=26] unless entity @e[tag=bce_enemy,x=19,y=100,z=-13,dx=18,dy=12,dz=26] run function quests/done_3
execute as @a[scores={bce_q=4}] at @s if entity @s[x=60,y=100,z=-6,dx=10,dy=12,dz=12] run function quests/done_4
execute if score #puzzle bce_sys matches 1 as @a[scores={bce_q=5}] at @s if entity @s[x=233,y=100,z=-6,dx=7,dy=12,dz=12] run function quests/done_5
execute if score #wall bce_sys matches 4 as @a[scores={bce_q=6}] at @s if entity @s[x=337,y=100,z=-5,dx=3,dy=12,dz=10] run function quests/done_6
