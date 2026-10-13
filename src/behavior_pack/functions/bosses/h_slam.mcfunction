execute as @e[tag=bce_boss] at @s run execute if score #bphase bce_sys matches 1 run damage @a[r=5,tag=bce_ctl,tag=!bce_iframe] 8 entity_attack
execute as @e[tag=bce_boss] at @s run execute if score #bphase bce_sys matches 2 run damage @a[r=5,tag=bce_ctl,tag=!bce_iframe] 9 entity_attack
execute as @e[tag=bce_boss] at @s run execute if score #bphase bce_sys matches 3 run damage @a[r=5,tag=bce_ctl,tag=!bce_iframe] 10 entity_attack
execute as @e[tag=bce_boss] at @s run scoreboard players set @a[r=5,tag=bce_ctl,tag=!bce_iframe] bce_iframe 8
execute as @e[tag=bce_boss] at @s run tag @a[r=5,tag=bce_ctl,tag=!bce_iframe] add bce_iframe
execute as @e[tag=bce_boss] at @s run particle minecraft:huge_explosion_emitter ~ ~0.5 ~
playsound random.explode @a[x=402,y=100,z=-17,dx=34,dy=25,dz=34] ~ ~ ~ 1 0.8
execute if score #shake bce_sys matches 1 run camerashake add @a[x=402,y=100,z=-17,dx=34,dy=25,dz=34] 0.4 0.4 positional
