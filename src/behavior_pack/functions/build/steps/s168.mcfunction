# tb zone 1 func 0
scoreboard players set #bzone bce_sys 1
execute unless block 100 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 100 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 100 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 100 79 0 stone run scoreboard players set #bstage bce_sys 5
execute if block 100 79 0 stone run fill 109 100 26 111 102 28 spruce_planks
execute if block 100 79 0 stone run fill 110 100 26 110 101 27 air
execute if block 100 79 0 stone run fill 108 100 25 112 102 25 bookshelf
execute if block 100 79 0 stone run fill 110 100 25 110 101 25 air
execute if block 100 79 0 stone run setblock 110 100 27 chest
execute if block 100 79 0 stone run replaceitem block 110 100 27 slot.container 0 golden_apple 3
execute if block 100 79 0 stone run replaceitem block 110 100 27 slot.container 1 arrow 16
execute if block 100 79 0 stone run kill @e[tag=bce_npc,x=60,y=95,z=-40,dx=80,dy=40,dz=80]
execute if block 100 79 0 stone run summon villager 103 100 6 0 0 minecraft:entity_spawned "§e상인 마렌"
execute if block 100 79 0 stone run summon villager 97 100 -6 0 0 minecraft:entity_spawned "§e늙은 파수꾼"
execute if block 100 79 0 stone run execute positioned 100 100 0 run tag @e[type=villager,r=20,tag=!bce_npc] add bce_npc
execute if block 100 79 0 stone run effect @e[tag=bce_npc,x=60,y=95,z=-40,dx=80,dy=40,dz=80] slowness 100000 4 true
execute if block 100 79 0 stone run scoreboard players add #bstep bce_sys 1
