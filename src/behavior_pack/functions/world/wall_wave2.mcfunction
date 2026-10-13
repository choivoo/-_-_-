scoreboard players set #wall bce_sys 2
execute positioned 280 100 -10 run function enemies/spawn_e2
execute positioned 280 100 10 run function enemies/spawn_e2
execute positioned 290 100 -6 run function enemies/spawn_e4
execute positioned 290 100 6 run function enemies/spawn_e4
tag @e[tag=bce_enemy,tag=!bce_wave,x=267,y=100,z=-38,dx=70,dy=30,dz=76] add bce_wave
tellraw @a[x=267,y=100,z=-38,dx=70,dy=30,dz=76] {"rawtext":[{"text":"§c[성벽] §f정예병 출현! (2/3)"}]}
