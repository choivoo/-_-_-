# zone 1 entity 0
kill @e[tag=bce_npc,x=60,y=95,z=-40,dx=80,dy=40,dz=80]
summon villager 103 100 6 0 0 minecraft:entity_spawned "§e상인 마렌"
summon villager 97 100 -6 0 0 minecraft:entity_spawned "§e늙은 파수꾼"
execute positioned 100 100 0 run tag @e[type=villager,r=20,tag=!bce_npc] add bce_npc
effect @e[tag=bce_npc,x=60,y=95,z=-40,dx=80,dy=40,dz=80] slowness 100000 4 true
scoreboard players add #bstep bce_sys 1
