# run with `execute positioned X Y Z run function enemies/spawn_e2`
summon husk ~ ~ ~ 0 0 minecraft:as_adult "§8그림자 추적자"
execute as @e[type=husk,r=1.5,c=1,tag=!bce_enemy] run function enemies/init_e2
