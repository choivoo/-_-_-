# idempotent per fight: guarded by #bstate==0 at call sites
scoreboard players set #bstate bce_sys 1
scoreboard players set #bhp bce_sys 1000
scoreboard players set #bphase bce_sys 1
scoreboard players set #btimer bce_sys 0
scoreboard players set #binv bce_sys 0
scoreboard players set #bfin bce_sys 0
scoreboard players set #bftimer bce_sys 0
scoreboard players set #bq bce_sys 0
scoreboard players set #btrack bce_sys 1
scoreboard players set #bempty bce_sys 0
scoreboard players set #bmiss bce_sys 0
kill @e[tag=bce_boss]
execute if score #mode bce_sys matches 0 run summon wither_skeleton 419 100 0 0 0 minecraft:entity_spawned "§c검은별의 수호자"
execute if score #mode bce_sys matches 1 run summon bce:citadel_guardian 419 100 0 0 0 minecraft:entity_spawned "§c검은별의 수호자"
execute positioned 419 100 0 run tag @e[type=wither_skeleton,r=4,tag=!bce_boss] add bce_boss
execute positioned 419 100 0 run tag @e[type=bce:citadel_guardian,r=4,tag=!bce_boss] add bce_boss
tag @e[tag=bce_boss] add bce_enemy
effect @e[tag=bce_boss] slowness 100000 255 true
execute if score #mode bce_sys matches 1 run playanimation @e[tag=bce_boss] animation.bce_guardian.boss_intro
