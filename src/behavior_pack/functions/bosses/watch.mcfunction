# arena empty for 5s (all dead/left) => reset. boss entity vanished while players present => counts as defeated
execute if entity @a[x=402,y=100,z=-17,dx=34,dy=25,dz=34] run scoreboard players set #bempty bce_sys 0
execute unless entity @a[x=402,y=100,z=-17,dx=34,dy=25,dz=34] run scoreboard players add #bempty bce_sys 1
execute if score #bempty bce_sys matches 100.. run function bosses/reset
execute if entity @a[x=402,y=100,z=-17,dx=34,dy=25,dz=34] unless entity @e[tag=bce_boss] run scoreboard players add #bmiss bce_sys 1
execute if entity @e[tag=bce_boss] run scoreboard players set #bmiss bce_sys 0
execute if score #bmiss bce_sys matches 40.. run function bosses/death
