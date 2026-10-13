scoreboard players set #puzzle bce_sys 1
scoreboard players set #bridge bce_sys 0
fill 204 87 -2 205 93 2 air
fill 220 87 12 220 89 12 air
playsound random.anvil_land @a[x=170,y=84,z=-30,dx=60,dy=16,dz=60] ~ ~ ~ 1 0.6
tellraw @a[x=170,y=84,z=-30,dx=60,dy=16,dz=60] {"rawtext":[{"text":"§a[장치] §f육중한 철창이 열리고 다리가 펼쳐진다. 숨은 방도 열렸다!"}]}
