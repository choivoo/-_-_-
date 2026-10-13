# BOSS DEATH: attacks stop, death cutscene starts
scoreboard players set #bstate bce_sys 3
scoreboard players set #binv bce_sys 999
effect @e[tag=bce_boss] slowness 100000 255 true
kill @e[tag=bce_enemy,tag=!bce_boss]
stopsound @a[x=402,y=100,z=-17,dx=34,dy=25,dz=34]
execute if score #mode bce_sys matches 1 run playanimation @e[tag=bce_boss] animation.bce_guardian.death
execute as @a[x=402,y=100,z=-17,dx=34,dy=25,dz=34,tag=!bce_cs] at @s run function cutscenes/boss_death/start
