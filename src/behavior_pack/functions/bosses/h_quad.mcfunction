execute if score #bq bce_sys matches 0 positioned 411 100 -8 run execute if score #bphase bce_sys matches 1 run damage @a[r=7,tag=bce_ctl,tag=!bce_iframe] 8 entity_attack
execute if score #bq bce_sys matches 0 positioned 411 100 -8 run execute if score #bphase bce_sys matches 2 run damage @a[r=7,tag=bce_ctl,tag=!bce_iframe] 9 entity_attack
execute if score #bq bce_sys matches 0 positioned 411 100 -8 run execute if score #bphase bce_sys matches 3 run damage @a[r=7,tag=bce_ctl,tag=!bce_iframe] 10 entity_attack
execute if score #bq bce_sys matches 0 positioned 411 100 -8 run scoreboard players set @a[r=7,tag=bce_ctl,tag=!bce_iframe] bce_iframe 8
execute if score #bq bce_sys matches 0 positioned 411 100 -8 run tag @a[r=7,tag=bce_ctl,tag=!bce_iframe] add bce_iframe
execute if score #bq bce_sys matches 0 positioned 411 100 -8 run particle minecraft:huge_explosion_emitter ~ ~ ~
execute if score #bq bce_sys matches 1 positioned 427 100 -8 run execute if score #bphase bce_sys matches 1 run damage @a[r=7,tag=bce_ctl,tag=!bce_iframe] 8 entity_attack
execute if score #bq bce_sys matches 1 positioned 427 100 -8 run execute if score #bphase bce_sys matches 2 run damage @a[r=7,tag=bce_ctl,tag=!bce_iframe] 9 entity_attack
execute if score #bq bce_sys matches 1 positioned 427 100 -8 run execute if score #bphase bce_sys matches 3 run damage @a[r=7,tag=bce_ctl,tag=!bce_iframe] 10 entity_attack
execute if score #bq bce_sys matches 1 positioned 427 100 -8 run scoreboard players set @a[r=7,tag=bce_ctl,tag=!bce_iframe] bce_iframe 8
execute if score #bq bce_sys matches 1 positioned 427 100 -8 run tag @a[r=7,tag=bce_ctl,tag=!bce_iframe] add bce_iframe
execute if score #bq bce_sys matches 1 positioned 427 100 -8 run particle minecraft:huge_explosion_emitter ~ ~ ~
execute if score #bq bce_sys matches 2 positioned 427 100 8 run execute if score #bphase bce_sys matches 1 run damage @a[r=7,tag=bce_ctl,tag=!bce_iframe] 8 entity_attack
execute if score #bq bce_sys matches 2 positioned 427 100 8 run execute if score #bphase bce_sys matches 2 run damage @a[r=7,tag=bce_ctl,tag=!bce_iframe] 9 entity_attack
execute if score #bq bce_sys matches 2 positioned 427 100 8 run execute if score #bphase bce_sys matches 3 run damage @a[r=7,tag=bce_ctl,tag=!bce_iframe] 10 entity_attack
execute if score #bq bce_sys matches 2 positioned 427 100 8 run scoreboard players set @a[r=7,tag=bce_ctl,tag=!bce_iframe] bce_iframe 8
execute if score #bq bce_sys matches 2 positioned 427 100 8 run tag @a[r=7,tag=bce_ctl,tag=!bce_iframe] add bce_iframe
execute if score #bq bce_sys matches 2 positioned 427 100 8 run particle minecraft:huge_explosion_emitter ~ ~ ~
execute if score #bq bce_sys matches 3 positioned 411 100 8 run execute if score #bphase bce_sys matches 1 run damage @a[r=7,tag=bce_ctl,tag=!bce_iframe] 8 entity_attack
execute if score #bq bce_sys matches 3 positioned 411 100 8 run execute if score #bphase bce_sys matches 2 run damage @a[r=7,tag=bce_ctl,tag=!bce_iframe] 9 entity_attack
execute if score #bq bce_sys matches 3 positioned 411 100 8 run execute if score #bphase bce_sys matches 3 run damage @a[r=7,tag=bce_ctl,tag=!bce_iframe] 10 entity_attack
execute if score #bq bce_sys matches 3 positioned 411 100 8 run scoreboard players set @a[r=7,tag=bce_ctl,tag=!bce_iframe] bce_iframe 8
execute if score #bq bce_sys matches 3 positioned 411 100 8 run tag @a[r=7,tag=bce_ctl,tag=!bce_iframe] add bce_iframe
execute if score #bq bce_sys matches 3 positioned 411 100 8 run particle minecraft:huge_explosion_emitter ~ ~ ~
execute if score #shake bce_sys matches 1 run camerashake add @a[x=402,y=100,z=-17,dx=34,dy=25,dz=34] 0.3 0.3 positional
