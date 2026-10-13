# zone 3 shell 5
scoreboard players set #bzone bce_sys 3
execute unless block 300 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 300 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 300 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 300 79 0 stone run scoreboard players set #bstage bce_sys 1
execute if block 300 79 0 stone run setblock 296 113 32 stone_bricks
execute if block 300 79 0 stone run fill 296 114 32 296 116 32 air
execute if block 300 79 0 stone run setblock 296 114 31 stone_bricks
execute if block 300 79 0 stone run fill 296 115 31 296 117 31 air
execute if block 300 79 0 stone run setblock 296 115 30 stone_bricks
execute if block 300 79 0 stone run fill 296 116 30 296 118 30 air
execute if block 300 79 0 stone run setblock 296 116 29 stone_bricks
execute if block 300 79 0 stone run fill 296 117 29 296 119 29 air
execute if block 300 79 0 stone run setblock 296 117 28 stone_bricks
execute if block 300 79 0 stone run fill 296 118 28 296 120 28 air
execute if block 300 79 0 stone run setblock 297 118 28 stone_bricks
execute if block 300 79 0 stone run fill 297 119 28 297 121 28 air
execute if block 300 79 0 stone run setblock 298 119 30 lantern
execute if block 300 79 0 stone run scoreboard players add #bstep bce_sys 1
