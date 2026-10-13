# zone 3 detail 4
scoreboard players set #bzone bce_sys 3
execute unless block 300 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 300 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 300 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 300 79 0 stone run scoreboard players set #bstage bce_sys 3
execute if block 300 79 0 stone run fill 299 111 1 299 112 1 chiseled_stone_bricks
execute if block 300 79 0 stone run fill 299 111 2 299 112 2 chiseled_stone_bricks
execute if block 300 79 0 stone run fill 299 110 3 299 111 3 chiseled_stone_bricks
execute if block 300 79 0 stone run fill 299 109 4 299 111 4 chiseled_stone_bricks
execute if block 300 79 0 stone run fill 299 100 5 299 110 5 chiseled_stone_bricks
execute if block 300 79 0 stone run fill 299 100 6 299 108 6 chiseled_stone_bricks
execute if block 300 79 0 stone run fill 304 100 -6 304 108 -6 chiseled_stone_bricks
execute if block 300 79 0 stone run fill 304 100 -5 304 110 -5 chiseled_stone_bricks
execute if block 300 79 0 stone run fill 304 109 -4 304 111 -4 chiseled_stone_bricks
execute if block 300 79 0 stone run fill 304 110 -3 304 111 -3 chiseled_stone_bricks
execute if block 300 79 0 stone run fill 304 111 -2 304 112 -2 chiseled_stone_bricks
execute if block 300 79 0 stone run fill 304 111 -1 304 112 -1 chiseled_stone_bricks
execute if block 300 79 0 stone run fill 304 111 0 304 112 0 chiseled_stone_bricks
execute if block 300 79 0 stone run fill 304 111 1 304 112 1 chiseled_stone_bricks
execute if block 300 79 0 stone run fill 304 111 2 304 112 2 chiseled_stone_bricks
execute if block 300 79 0 stone run fill 304 110 3 304 111 3 chiseled_stone_bricks
execute if block 300 79 0 stone run fill 304 109 4 304 111 4 chiseled_stone_bricks
execute if block 300 79 0 stone run fill 304 100 5 304 110 5 chiseled_stone_bricks
execute if block 300 79 0 stone run fill 304 100 6 304 108 6 chiseled_stone_bricks
execute if block 300 79 0 stone run fill 287 100 -33 289 100 -33 mossy_cobblestone
execute if block 300 79 0 stone run fill 286 100 -32 290 100 -32 mossy_cobblestone
execute if block 300 79 0 stone run fill 285 100 -31 291 100 -31 mossy_cobblestone
execute if block 300 79 0 stone run fill 285 100 -30 291 100 -30 mossy_cobblestone
execute if block 300 79 0 stone run fill 285 100 -29 291 100 -29 mossy_cobblestone
execute if block 300 79 0 stone run fill 286 100 -28 290 100 -28 mossy_cobblestone
execute if block 300 79 0 stone run fill 287 100 -27 289 100 -27 mossy_cobblestone
execute if block 300 79 0 stone run fill 287 101 -32 289 101 -32 mossy_cobblestone
execute if block 300 79 0 stone run fill 286 101 -31 290 101 -31 mossy_cobblestone
execute if block 300 79 0 stone run fill 286 101 -30 290 101 -30 mossy_cobblestone
execute if block 300 79 0 stone run fill 286 101 -29 290 101 -29 mossy_cobblestone
execute if block 300 79 0 stone run fill 287 101 -28 289 101 -28 mossy_cobblestone
execute if block 300 79 0 stone run fill 287 102 -31 289 102 -31 mossy_cobblestone
execute if block 300 79 0 stone run fill 287 102 -30 289 102 -30 mossy_cobblestone
execute if block 300 79 0 stone run fill 287 102 -29 289 102 -29 mossy_cobblestone
execute if block 300 79 0 stone run fill 282 100 27 286 100 27 cobblestone
execute if block 300 79 0 stone run fill 281 100 28 287 100 28 cobblestone
execute if block 300 79 0 stone run scoreboard players add #bstep bce_sys 1
