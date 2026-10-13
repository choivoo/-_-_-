# combo stage 1: reach 1.5 radius 2.0 dmg 4
scoreboard players set @s bce_cdslash 6
execute positioned ^ ^0.8 ^1.5 run damage @e[tag=bce_enemy,r=2.0] 4 entity_attack entity @s
execute positioned ^ ^0.8 ^1.5 if entity @e[tag=bce_boss,r=2.0] if score #mode bce_sys matches 0 if score #binv bce_sys matches 0 run scoreboard players remove #bhp bce_sys 5
execute positioned ^ ^0.8 ^1.5 run particle minecraft:critical_hit_emitter ~ ~ ~
playsound game.player.attack.strong @a ~ ~ ~ 0.7 1.1500000000000001
execute if score #shake bce_sys matches 1 run camerashake add @s 0.08 0.1 positional
