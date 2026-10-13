execute as @e[tag=bce_boss] at @s positioned ^ ^ ^2.5 run execute if score _bphase bce_sys matches 1 run damage @a[r=3,tag=bce_ctl,tag=!bce_iframe] 6 entity_attack
execute as @e[tag=bce_boss] at @s positioned ^ ^ ^2.5 run execute if score _bphase bce_sys matches 2 run damage @a[r=3,tag=bce_ctl,tag=!bce_iframe] 7 entity_attack
execute as @e[tag=bce_boss] at @s positioned ^ ^ ^2.5 run execute if score _bphase bce_sys matches 3 run damage @a[r=3,tag=bce_ctl,tag=!bce_iframe] 8 entity_attack
execute as @e[tag=bce_boss] at @s positioned ^ ^ ^2.5 run scoreboard players set @a[r=3,tag=bce_ctl,tag=!bce_iframe] bce_iframe 8
execute as @e[tag=bce_boss] at @s positioned ^ ^ ^2.5 run tag @a[r=3,tag=bce_ctl,tag=!bce_iframe] add bce_iframe
execute as @e[tag=bce_boss] at @s run particle minecraft:critical_hit_emitter ^ ^1.2 ^2.5
playsound game.player.attack.strong @a[x=402,y=100,z=-17,dx=34,dy=25,dz=34] ~ ~ ~ 1 0.6
execute if score _shake bce_sys matches 1 run camerashake add @a[x=402,y=100,z=-17,dx=34,dy=25,dz=34] 0.2 0.2 positional
