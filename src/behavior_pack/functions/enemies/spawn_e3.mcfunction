# run with `execute positioned X Y Z run function enemies/spawn_e3`
summon skeleton ~ ~ ~ 0 0 minecraft:entity_spawned "§b유적 감시자"
execute as @e[type=skeleton,r=1.5,c=1,tag=!bce_enemy] run function enemies/init_e3
