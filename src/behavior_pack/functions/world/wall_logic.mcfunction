# wave state machine; progression requires a player in the zone (unloaded chunks never count as 'cleared')
execute if score _wall bce_sys matches 0 if entity @a[scores={bce_ps=2..},x=267,y=100,z=-38,dx=31,dy=30,dz=76] run function world/wall_wave1
execute if score _wall bce_sys matches 1 if entity @a[x=267,y=100,z=-38,dx=70,dy=30,dz=76] unless entity @e[tag=bce_enemy,x=267,y=100,z=-38,dx=70,dy=30,dz=76] run function world/wall_wave2
execute if score _wall bce_sys matches 2 if entity @a[x=267,y=100,z=-38,dx=70,dy=30,dz=76] unless entity @e[tag=bce_enemy,x=267,y=100,z=-38,dx=70,dy=30,dz=76] run function world/wall_mid
execute if score _wall bce_sys matches 3 if entity @a[x=267,y=100,z=-38,dx=70,dy=30,dz=76] unless entity @e[tag=bce_enemy,x=267,y=100,z=-38,dx=70,dy=30,dz=76] run function world/wall_open
