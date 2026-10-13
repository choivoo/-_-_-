scoreboard players set #door bce_sys 1
fill 399 100 -3 401 108 3 air
playsound random.anvil_land @a[x=376,y=100,z=-10,dx=16,dy=12,dz=20] ~ ~ ~ 1 0.4
tellraw @a[x=376,y=100,z=-10,dx=16,dy=12,dz=20] {"rawtext":[{"text":"§5[봉인] §f봉인된 문이 열렸다. 수호자가 기다리고 있다…"}]}
