# zone 3 shell 3
scoreboard players set #bzone bce_sys 3
execute unless block 300 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 300 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 300 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 300 79 0 stone run scoreboard players set #bstage bce_sys 1
execute if block 300 79 0 stone run fill 300 107 -31 300 109 -31 air
execute if block 300 79 0 stone run setblock 300 107 -30 stone_bricks
execute if block 300 79 0 stone run fill 300 108 -30 300 110 -30 air
execute if block 300 79 0 stone run setblock 300 108 -29 stone_bricks
execute if block 300 79 0 stone run fill 300 109 -29 300 111 -29 air
execute if block 300 79 0 stone run setblock 300 109 -28 stone_bricks
execute if block 300 79 0 stone run fill 300 110 -28 300 112 -28 air
execute if block 300 79 0 stone run setblock 299 110 -28 stone_bricks
execute if block 300 79 0 stone run fill 299 111 -28 299 113 -28 air
execute if block 300 79 0 stone run setblock 298 111 -28 stone_bricks
execute if block 300 79 0 stone run fill 298 112 -28 298 114 -28 air
execute if block 300 79 0 stone run setblock 297 112 -28 stone_bricks
execute if block 300 79 0 stone run fill 297 113 -28 297 115 -28 air
execute if block 300 79 0 stone run setblock 296 113 -28 stone_bricks
execute if block 300 79 0 stone run fill 296 114 -28 296 116 -28 air
execute if block 300 79 0 stone run setblock 296 114 -29 stone_bricks
execute if block 300 79 0 stone run fill 296 115 -29 296 117 -29 air
execute if block 300 79 0 stone run setblock 296 115 -30 stone_bricks
execute if block 300 79 0 stone run fill 296 116 -30 296 118 -30 air
execute if block 300 79 0 stone run setblock 296 116 -31 stone_bricks
execute if block 300 79 0 stone run fill 296 117 -31 296 119 -31 air
execute if block 300 79 0 stone run setblock 296 117 -32 stone_bricks
execute if block 300 79 0 stone run fill 296 118 -32 296 120 -32 air
execute if block 300 79 0 stone run setblock 297 118 -32 stone_bricks
execute if block 300 79 0 stone run fill 297 119 -32 297 121 -32 air
execute if block 300 79 0 stone run setblock 298 119 -30 lantern
execute if block 300 79 0 stone run fill 294 100 26 302 122 34 stone_bricks
execute if block 300 79 0 stone run fill 295 100 27 301 121 33 air
execute if block 300 79 0 stone run fill 293 120 25 303 120 35 deepslate_bricks
execute if block 300 79 0 stone run fill 295 120 27 301 120 33 spruce_planks
execute if block 300 79 0 stone run setblock 293 121 25 deepslate_bricks
execute if block 300 79 0 stone run setblock 293 121 35 deepslate_bricks
execute if block 300 79 0 stone run setblock 295 121 25 deepslate_bricks
execute if block 300 79 0 stone run setblock 295 121 35 deepslate_bricks
execute if block 300 79 0 stone run setblock 297 121 25 deepslate_bricks
execute if block 300 79 0 stone run setblock 297 121 35 deepslate_bricks
execute if block 300 79 0 stone run scoreboard players add #bstep bce_sys 1
