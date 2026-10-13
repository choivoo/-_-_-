# zone 1 entity 0
scoreboard players set _bzone bce_sys 1
function build/ready_z1
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 6
execute if score _bready bce_sys matches 1 run kill @e[tag=bce_npc,x=60,y=95,z=-40,dx=80,dy=40,dz=80]
execute if score _bready bce_sys matches 1 run summon villager 103 100 6 0 0 minecraft:entity_spawned "§e상인 마렌"
execute if score _bready bce_sys matches 1 run summon villager 97 100 -6 0 0 minecraft:entity_spawned "§e늙은 파수꾼"
execute if score _bready bce_sys matches 1 run execute positioned 100 100 0 run tag @e[type=villager,r=20,tag=!bce_npc] add bce_npc
execute if score _bready bce_sys matches 1 run effect @e[tag=bce_npc,x=60,y=95,z=-40,dx=80,dy=40,dz=80] slowness 100000 4 true
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
