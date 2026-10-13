# observatory arrival
tp @a[tag=!bce_cs] -199.5 200 5.5 facing -200 202 0
setworldspawn -199 200 5
spawnpoint @a -199 200 5
effect @a resistance 1000000 255 true
effect @a saturation 1000000 10 true
playsound random.levelup @a -199.5 200 5.5 0.6 0.7
scoreboard players add _bstep bce_sys 1
