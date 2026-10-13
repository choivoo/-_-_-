# teleport behind the nearest player, only onto free floor
playsound mob.endermen.portal @a[x=402,y=100,z=-17,dx=34,dy=25,dz=34] ~ ~ ~ 1 0.6
execute as @p[x=402,y=100,z=-17,dx=34,dy=25,dz=34,tag=bce_ctl] at @s positioned ^ ^ ^-3 if block ~ ~ ~ air if block ~ ~1 ~ air unless block ~ ~-1 ~ air run tp @e[tag=bce_boss] ~ ~ ~ facing @p
execute as @e[tag=bce_boss] at @s run particle minecraft:totem_particle ~ ~1 ~
