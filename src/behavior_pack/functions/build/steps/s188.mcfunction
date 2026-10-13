# tb zone 1 func 0
scoreboard players set _bzone bce_sys 1
function build/ready_z1
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 5
execute if score _bready bce_sys matches 1 run fill 109 100 26 111 102 28 spruce_planks
execute if score _bready bce_sys matches 1 run fill 110 100 26 110 101 27 air
execute if score _bready bce_sys matches 1 run fill 108 100 25 112 102 25 bookshelf
execute if score _bready bce_sys matches 1 run fill 110 100 25 110 101 25 air
execute if score _bready bce_sys matches 1 run setblock 110 100 27 chest
execute if score _bready bce_sys matches 1 run replaceitem block 110 100 27 slot.container 0 golden_apple 3
execute if score _bready bce_sys matches 1 run replaceitem block 110 100 27 slot.container 1 arrow 16
execute if score _bready bce_sys matches 1 run kill @e[tag=bce_npc,x=60,y=95,z=-40,dx=80,dy=40,dz=80]
execute if score _bready bce_sys matches 1 run summon villager 103 100 6 0 0 minecraft:entity_spawned "§e상인 마렌"
execute if score _bready bce_sys matches 1 run summon villager 97 100 -6 0 0 minecraft:entity_spawned "§e늙은 파수꾼"
execute if score _bready bce_sys matches 1 run execute positioned 100 100 0 run tag @e[type=villager,r=20,tag=!bce_npc] add bce_npc
execute if score _bready bce_sys matches 1 run effect @e[tag=bce_npc,x=60,y=95,z=-40,dx=80,dy=40,dz=80] slowness 100000 4 true
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
