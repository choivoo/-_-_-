# ATTACK: damage lands only in front (r=2 at 1.4 blocks), skipped for i-framed players
execute positioned ^ ^ ^1.4 run execute if score #shake bce_sys matches 1 run camerashake add @a[r=2,tag=bce_ctl,tag=!bce_iframe] 0.15 0.15 positional
execute positioned ^ ^ ^1.4 run damage @a[r=2,tag=bce_ctl,tag=!bce_iframe] 3 entity_attack
execute positioned ^ ^ ^1.4 run scoreboard players set @a[r=2,tag=bce_ctl,tag=!bce_iframe] bce_iframe 8
execute positioned ^ ^ ^1.4 run tag @a[r=2,tag=bce_ctl,tag=!bce_iframe] add bce_iframe
particle minecraft:critical_hit_emitter ^ ^1 ^1.4
playsound random.break @a ~ ~ ~ 0.7 0.8
scoreboard players set @s bce_ai 5
scoreboard players set @s bce_aitm 0
