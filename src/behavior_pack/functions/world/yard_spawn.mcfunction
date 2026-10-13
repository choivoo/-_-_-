scoreboard players set _yard bce_sys 1
execute positioned 28 100 0 run function enemies/spawn_e1
execute positioned 28 100 0 run tag @e[tag=bce_enemy,r=3] add bce_wave
tellraw @a[x=19,y=100,z=-13,dx=18,dy=12,dz=26] {"rawtext":[{"text":"§c[훈련] §f적이 나타났다! 블레이즈 막대로 베어 보세요."}]}
