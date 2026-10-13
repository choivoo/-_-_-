# run with `execute positioned X Y Z run function enemies/spawn_e1`
summon zombie ~ ~ ~ 0 0 minecraft:as_adult "§7잿빛 망자"
execute as @e[type=zombie,r=1.5,c=1,tag=!bce_enemy] run function enemies/init_e1
