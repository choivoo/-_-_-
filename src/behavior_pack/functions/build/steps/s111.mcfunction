# zone 3 detail 3
scoreboard players set #bzone bce_sys 3
execute unless block 300 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 300 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 300 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 300 79 0 stone run scoreboard players set #bstage bce_sys 3
execute if block 300 79 0 stone run setblock 293 100 -37 gravel
execute if block 300 79 0 stone run setblock 283 100 -16 mossy_cobblestone
execute if block 300 79 0 stone run setblock 266 100 -19 mossy_cobblestone
execute if block 300 79 0 stone run setblock 268 100 -9 mossy_cobblestone
execute if block 300 79 0 stone run setblock 297 100 25 cobblestone
execute if block 300 79 0 stone run setblock 286 100 31 stone_bricks
execute if block 300 79 0 stone run fill 340 99 -2 359 99 2 polished_andesite
execute if block 300 79 0 stone run fill 340 99 -3 359 99 -3 stone_bricks
execute if block 300 79 0 stone run fill 340 99 3 359 99 3 stone_bricks
execute if block 300 79 0 stone run fill 340 100 -3 359 100 -3 iron_bars
execute if block 300 79 0 stone run fill 340 100 3 359 100 3 iron_bars
execute if block 300 79 0 stone run fill 342 88 -3 342 98 -3 stone_bricks
execute if block 300 79 0 stone run fill 342 88 3 342 98 3 stone_bricks
execute if block 300 79 0 stone run fill 342 101 -3 342 102 -3 stone_bricks
execute if block 300 79 0 stone run fill 342 101 3 342 102 3 stone_bricks
execute if block 300 79 0 stone run setblock 342 103 -3 lantern
execute if block 300 79 0 stone run setblock 342 103 3 lantern
execute if block 300 79 0 stone run fill 348 88 -3 348 98 -3 stone_bricks
execute if block 300 79 0 stone run fill 348 88 3 348 98 3 stone_bricks
execute if block 300 79 0 stone run fill 348 101 -3 348 102 -3 stone_bricks
execute if block 300 79 0 stone run fill 348 101 3 348 102 3 stone_bricks
execute if block 300 79 0 stone run setblock 348 103 -3 lantern
execute if block 300 79 0 stone run setblock 348 103 3 lantern
execute if block 300 79 0 stone run fill 354 88 -3 354 98 -3 stone_bricks
execute if block 300 79 0 stone run fill 354 88 3 354 98 3 stone_bricks
execute if block 300 79 0 stone run fill 354 101 -3 354 102 -3 stone_bricks
execute if block 300 79 0 stone run fill 354 101 3 354 102 3 stone_bricks
execute if block 300 79 0 stone run setblock 354 103 -3 lantern
execute if block 300 79 0 stone run setblock 354 103 3 lantern
execute if block 300 79 0 stone run fill 299 100 -6 299 108 -6 chiseled_stone_bricks
execute if block 300 79 0 stone run fill 299 100 -5 299 110 -5 chiseled_stone_bricks
execute if block 300 79 0 stone run fill 299 109 -4 299 111 -4 chiseled_stone_bricks
execute if block 300 79 0 stone run fill 299 110 -3 299 111 -3 chiseled_stone_bricks
execute if block 300 79 0 stone run fill 299 111 -2 299 112 -2 chiseled_stone_bricks
execute if block 300 79 0 stone run fill 299 111 -1 299 112 -1 chiseled_stone_bricks
execute if block 300 79 0 stone run fill 299 111 0 299 112 0 chiseled_stone_bricks
execute if block 300 79 0 stone run scoreboard players add #bstep bce_sys 1
