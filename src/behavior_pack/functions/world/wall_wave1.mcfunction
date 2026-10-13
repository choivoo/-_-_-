scoreboard players set #wall bce_sys 1
execute positioned 278 100 -8 run function enemies/spawn_e1
execute positioned 278 100 -8 run tag @e[tag=bce_e1,r=3,tag=!bce_patrol] add bce_patrol
execute positioned 278 100 8 run function enemies/spawn_e1
execute positioned 278 100 8 run tag @e[tag=bce_e1,r=3,tag=!bce_patrol] add bce_patrol
execute positioned 286 100 0 run function enemies/spawn_e1
execute positioned 286 100 0 run tag @e[tag=bce_e1,r=3,tag=!bce_patrol] add bce_patrol
execute positioned 294 100 14 run function enemies/spawn_e3
tag @e[tag=bce_enemy,tag=!bce_wave,x=267,y=100,z=-38,dx=70,dy=30,dz=76] add bce_wave
tellraw @a[x=267,y=100,z=-38,dx=70,dy=30,dz=76] {"rawtext":[{"text":"§c[성벽] §f적이 몰려온다! (1/3)"}]}
