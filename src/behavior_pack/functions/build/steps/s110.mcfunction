# zone 3 detail 2
scoreboard players set #bzone bce_sys 3
execute unless block 300 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 300 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 300 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 300 79 0 stone run scoreboard players set #bstage bce_sys 3
execute if block 300 79 0 stone run fill 310 94 37 310 94 38 stone_brick_stairs ["weirdo_direction"=0,"upside_down_bit"=false]
execute if block 300 79 0 stone run fill 311 95 37 311 95 38 stone_brick_stairs ["weirdo_direction"=0,"upside_down_bit"=false]
execute if block 300 79 0 stone run fill 312 96 37 312 96 38 stone_brick_stairs ["weirdo_direction"=0,"upside_down_bit"=false]
execute if block 300 79 0 stone run fill 313 97 37 313 97 38 stone_brick_stairs ["weirdo_direction"=0,"upside_down_bit"=false]
execute if block 300 79 0 stone run fill 314 98 37 314 98 38 stone_brick_stairs ["weirdo_direction"=0,"upside_down_bit"=false]
execute if block 300 79 0 stone run setblock 294 100 36 gravel
execute if block 300 79 0 stone run setblock 282 100 12 cobblestone
execute if block 300 79 0 stone run setblock 294 100 -26 stone_bricks
execute if block 300 79 0 stone run setblock 283 100 -7 mossy_cobblestone
execute if block 300 79 0 stone run setblock 277 100 10 cobblestone
execute if block 300 79 0 stone run setblock 276 100 18 mossy_cobblestone
execute if block 300 79 0 stone run setblock 296 100 -37 cobblestone
execute if block 300 79 0 stone run setblock 282 100 21 mossy_cobblestone
execute if block 300 79 0 stone run setblock 263 100 -36 mossy_cobblestone
execute if block 300 79 0 stone run setblock 274 100 -17 cobblestone
execute if block 300 79 0 stone run setblock 272 100 -26 mossy_cobblestone
execute if block 300 79 0 stone run setblock 280 100 14 gravel
execute if block 300 79 0 stone run setblock 273 100 -29 gravel
execute if block 300 79 0 stone run setblock 267 100 -35 gravel
execute if block 300 79 0 stone run setblock 271 100 -17 cobblestone
execute if block 300 79 0 stone run setblock 277 100 -22 mossy_cobblestone
execute if block 300 79 0 stone run setblock 285 100 12 gravel
execute if block 300 79 0 stone run setblock 272 100 32 mossy_cobblestone
execute if block 300 79 0 stone run setblock 297 100 8 stone_bricks
execute if block 300 79 0 stone run setblock 294 100 19 cobblestone
execute if block 300 79 0 stone run setblock 267 100 8 stone_bricks
execute if block 300 79 0 stone run setblock 275 100 -24 gravel
execute if block 300 79 0 stone run setblock 262 100 10 gravel
execute if block 300 79 0 stone run setblock 278 100 -15 cobblestone
execute if block 300 79 0 stone run setblock 274 100 26 gravel
execute if block 300 79 0 stone run setblock 263 100 6 stone_bricks
execute if block 300 79 0 stone run setblock 266 100 31 gravel
execute if block 300 79 0 stone run setblock 275 100 -13 stone_bricks
execute if block 300 79 0 stone run setblock 262 100 30 mossy_cobblestone
execute if block 300 79 0 stone run setblock 285 100 26 stone_bricks
execute if block 300 79 0 stone run setblock 264 100 32 mossy_cobblestone
execute if block 300 79 0 stone run scoreboard players add #bstep bce_sys 1
