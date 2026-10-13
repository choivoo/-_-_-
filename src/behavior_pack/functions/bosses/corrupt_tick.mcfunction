execute if score #bphase bce_sys matches 3 as @a[x=402,y=100,z=-17,dx=34,dy=25,dz=34,tag=bce_ctl,tag=!bce_iframe] at @s if block ~ ~-1 ~ magma run damage @s 2 magic
execute if score #bfin bce_sys matches 2 run function bosses/shrink_once
