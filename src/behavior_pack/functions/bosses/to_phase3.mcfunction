scoreboard players set _bphase bce_sys 3
scoreboard players set _btimer bce_sys 0
scoreboard players set _binv bce_sys 40
scoreboard players set _btrack bce_sys 1
titleraw @a[x=402,y=100,z=-17,dx=34,dy=25,dz=34] times 5 40 10
titleraw @a[x=402,y=100,z=-17,dx=34,dy=25,dz=34] title {"rawtext":[{"text":"§4성채가 붕괴한다"}]}
playsound mob.wither.spawn @a[x=402,y=100,z=-17,dx=34,dy=25,dz=34] ~ ~ ~ 0.8 1.2
execute if score _shake bce_sys matches 1 run camerashake add @a[x=402,y=100,z=-17,dx=34,dy=25,dz=34] 0.4 0.8 positional
execute as @e[tag=bce_boss] at @s run particle minecraft:huge_explosion_emitter ~ ~1 ~
stopsound @a[x=402,y=100,z=-17,dx=34,dy=25,dz=34]
execute if score _mode bce_sys matches 1 run playanimation @e[tag=bce_boss] animation.bce_guardian.phase_transition
function bosses/collapse_floor
