execute as @e[tag=bce_boss] at @s run damage @a[r=11,tag=bce_ctl,tag=!bce_iframe] 12 entity_attack
execute as @e[tag=bce_boss] at @s run scoreboard players set @a[r=11,tag=bce_ctl,tag=!bce_iframe] bce_iframe 12
execute as @e[tag=bce_boss] at @s run tag @a[r=11,tag=bce_ctl,tag=!bce_iframe] add bce_iframe
scoreboard players set _bfin bce_sys 2
scoreboard players set _btrack bce_sys 1
playsound random.explode @a[x=402,y=100,z=-17,dx=34,dy=25,dz=34] ~ ~ ~ 1 0.6
execute if score _shake bce_sys matches 1 run camerashake add @a[x=402,y=100,z=-17,dx=34,dy=25,dz=34] 0.5 0.6 positional
