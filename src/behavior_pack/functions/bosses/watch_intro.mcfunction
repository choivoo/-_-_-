execute if entity @a[x=402,y=100,z=-17,dx=34,dy=25,dz=34] run scoreboard players set _bempty bce_sys 0
execute unless entity @a[x=402,y=100,z=-17,dx=34,dy=25,dz=34] run scoreboard players add _bempty bce_sys 1
execute if score _bempty bce_sys matches 100.. run function bosses/reset
