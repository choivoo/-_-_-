# BOSS_BATTLE starts (called at the end of the intro cutscene)
scoreboard players set #bstate bce_sys 2
scoreboard players set #btimer bce_sys 0
effect @e[tag=bce_boss] clear
execute if score #mode bce_sys matches 0 run effect @e[tag=bce_boss] weakness 100000 255 true
execute if score #mode bce_sys matches 0 run effect @e[tag=bce_boss] health_boost 100000 100 true
execute if score #mode bce_sys matches 0 run effect @e[tag=bce_boss] instant_health 1 20 true
execute if score #mode bce_sys matches 0 run effect @e[tag=bce_boss] resistance 100000 3 true
tag @a[x=402,y=100,z=-17,dx=34,dy=25,dz=34] add bce_comb
scoreboard players set @a[x=402,y=100,z=-17,dx=34,dy=25,dz=34] bce_ps 5
tellraw @a[x=402,y=100,z=-17,dx=34,dy=25,dz=34] {"rawtext":[{"text":"§c[보스전] §f경고 표시를 보고 회피하세요!"}]}
