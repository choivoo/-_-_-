# combo stage 2: reach 1.7 radius 2.6 dmg 6
scoreboard players set @s bce_cdslash 8
execute positioned ^ ^0.8 ^1.7 run damage @e[tag=bce_enemy,r=2.6] 6 entity_attack entity @s
execute positioned ^ ^0.8 ^1.7 if entity @e[tag=bce_boss,r=2.6] if score #mode bce_sys matches 0 if score #binv bce_sys matches 0 run scoreboard players remove #bhp bce_sys 8
execute positioned ^ ^0.8 ^1.7 run particle minecraft:critical_hit_emitter ~ ~ ~
playsound game.player.attack.strong @a ~ ~ ~ 0.7 1.0
execute if score #quality bce_sys matches 1.. run execute positioned ^ ^0.8 ^1.7 run particle minecraft:basic_crit_particle ~ ~0.3 ~
execute if score #shake bce_sys matches 1 run camerashake add @s 0.08 0.1 positional
