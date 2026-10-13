scoreboard players set #bphase bce_sys 2
scoreboard players set #btimer bce_sys 0
scoreboard players set #binv bce_sys 40
scoreboard players set #btrack bce_sys 1
titleraw @a[x=402,y=100,z=-17,dx=34,dy=25,dz=34] times 5 40 10
titleraw @a[x=402,y=100,z=-17,dx=34,dy=25,dz=34] title {"rawtext":[{"text":"§c검은별이 해방된다"}]}
playsound mob.wither.spawn @a[x=402,y=100,z=-17,dx=34,dy=25,dz=34] ~ ~ ~ 0.8 1.2
execute if score #shake bce_sys matches 1 run camerashake add @a[x=402,y=100,z=-17,dx=34,dy=25,dz=34] 0.4 0.8 positional
execute as @e[tag=bce_boss] at @s run particle minecraft:huge_explosion_emitter ~ ~1 ~
stopsound @a[x=402,y=100,z=-17,dx=34,dy=25,dz=34]
execute if score #mode bce_sys matches 1 run playanimation @e[tag=bce_boss] animation.bce_guardian.phase_transition
playsound record.pigstep @a[x=402,y=100,z=-17,dx=34,dy=25,dz=34] ~ ~ ~ 0.8 1
