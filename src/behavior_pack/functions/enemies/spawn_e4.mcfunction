# run with `execute positioned X Y Z run function enemies/spawn_e4`
summon vindicator ~ ~ ~ 0 0 minecraft:entity_spawned "§6성채 수호병"
execute as @e[type=vindicator,r=1.5,c=1,tag=!bce_enemy] run function enemies/init_e4
