# every 20 ticks: vents warn (count 1) then damage (count 2). 1s warning; dodge/i-frames protect
execute if entity @a[x=192,y=87,z=-2,dx=11,dy=4,dz=4] run scoreboard players add _trap bce_sys 1
execute unless entity @a[x=192,y=87,z=-2,dx=11,dy=4,dz=4] run scoreboard players set _trap bce_sys 0
execute if score _trap bce_sys matches 3.. run scoreboard players set _trap bce_sys 1
execute if score _trap bce_sys matches 1 run particle minecraft:basic_flame_particle 193 88 0
execute if score _trap bce_sys matches 1 run playsound random.click @a[x=192,y=87,z=-2,dx=11,dy=4,dz=4] 193 88 0 0.8 0.8
execute if score _trap bce_sys matches 2 run damage @a[x=192,y=87,z=-1,dx=1,dy=3,dz=2,tag=bce_ctl,tag=!bce_iframe] 3 entity_attack
execute if score _trap bce_sys matches 2 run scoreboard players set @a[x=192,y=87,z=-1,dx=1,dy=3,dz=2,tag=bce_ctl,tag=!bce_iframe] bce_iframe 10
execute if score _trap bce_sys matches 2 run tag @a[x=192,y=87,z=-1,dx=1,dy=3,dz=2,tag=bce_ctl,tag=!bce_iframe] add bce_iframe
execute if score _trap bce_sys matches 2 run particle minecraft:huge_explosion_emitter 193 88 0
execute if score _trap bce_sys matches 1 run particle minecraft:basic_flame_particle 196 88 0
execute if score _trap bce_sys matches 1 run playsound random.click @a[x=192,y=87,z=-2,dx=11,dy=4,dz=4] 196 88 0 0.8 0.8
execute if score _trap bce_sys matches 2 run damage @a[x=195,y=87,z=-1,dx=1,dy=3,dz=2,tag=bce_ctl,tag=!bce_iframe] 3 entity_attack
execute if score _trap bce_sys matches 2 run scoreboard players set @a[x=195,y=87,z=-1,dx=1,dy=3,dz=2,tag=bce_ctl,tag=!bce_iframe] bce_iframe 10
execute if score _trap bce_sys matches 2 run tag @a[x=195,y=87,z=-1,dx=1,dy=3,dz=2,tag=bce_ctl,tag=!bce_iframe] add bce_iframe
execute if score _trap bce_sys matches 2 run particle minecraft:huge_explosion_emitter 196 88 0
execute if score _trap bce_sys matches 1 run particle minecraft:basic_flame_particle 199 88 0
execute if score _trap bce_sys matches 1 run playsound random.click @a[x=192,y=87,z=-2,dx=11,dy=4,dz=4] 199 88 0 0.8 0.8
execute if score _trap bce_sys matches 2 run damage @a[x=198,y=87,z=-1,dx=1,dy=3,dz=2,tag=bce_ctl,tag=!bce_iframe] 3 entity_attack
execute if score _trap bce_sys matches 2 run scoreboard players set @a[x=198,y=87,z=-1,dx=1,dy=3,dz=2,tag=bce_ctl,tag=!bce_iframe] bce_iframe 10
execute if score _trap bce_sys matches 2 run tag @a[x=198,y=87,z=-1,dx=1,dy=3,dz=2,tag=bce_ctl,tag=!bce_iframe] add bce_iframe
execute if score _trap bce_sys matches 2 run particle minecraft:huge_explosion_emitter 199 88 0
execute if score _trap bce_sys matches 1 run particle minecraft:basic_flame_particle 202 88 0
execute if score _trap bce_sys matches 1 run playsound random.click @a[x=192,y=87,z=-2,dx=11,dy=4,dz=4] 202 88 0 0.8 0.8
execute if score _trap bce_sys matches 2 run damage @a[x=201,y=87,z=-1,dx=1,dy=3,dz=2,tag=bce_ctl,tag=!bce_iframe] 3 entity_attack
execute if score _trap bce_sys matches 2 run scoreboard players set @a[x=201,y=87,z=-1,dx=1,dy=3,dz=2,tag=bce_ctl,tag=!bce_iframe] bce_iframe 10
execute if score _trap bce_sys matches 2 run tag @a[x=201,y=87,z=-1,dx=1,dy=3,dz=2,tag=bce_ctl,tag=!bce_iframe] add bce_iframe
execute if score _trap bce_sys matches 2 run particle minecraft:huge_explosion_emitter 202 88 0
