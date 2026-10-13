scoreboard players set _wall bce_sys 3
execute positioned 330 100 0 run function enemies/spawn_e4
execute positioned 330 100 0 as @e[type=vindicator,r=3,tag=bce_e4] run function world/mid_boost
tag @e[tag=bce_enemy,tag=!bce_wave,x=267,y=100,z=-38,dx=70,dy=30,dz=76] add bce_wave
tellraw @a[x=267,y=100,z=-38,dx=70,dy=30,dz=76] {"rawtext":[{"text":"§6[중간 보스] §f성벽 감시장이 길을 막는다! (3/3)"}]}
playsound mob.wither.spawn @a[x=267,y=100,z=-38,dx=70,dy=30,dz=76] ~ ~ ~ 0.6 1.5
