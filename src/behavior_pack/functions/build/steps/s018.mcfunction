# zone 0 detail 0
scoreboard players set #bzone bce_sys 0
execute unless block 0 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 0 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 0 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 0 79 0 stone run scoreboard players set #bstage bce_sys 3
execute if block 0 79 0 stone run fill 16 99 -26 17 99 -25 mossy_stone_bricks replace stone_bricks
execute if block 0 79 0 stone run fill 21 99 -17 23 99 -16 cracked_stone_bricks replace stone_bricks
execute if block 0 79 0 stone run fill -10 99 -8 -9 99 -6 gravel replace stone_bricks
execute if block 0 79 0 stone run fill -13 99 8 -13 99 9 cracked_stone_bricks replace stone_bricks
execute if block 0 79 0 stone run fill -33 99 24 -33 99 25 gravel replace stone_bricks
execute if block 0 79 0 stone run fill -13 99 -36 -11 99 -35 cracked_stone_bricks replace stone_bricks
execute if block 0 79 0 stone run fill 31 99 -16 33 99 -14 mossy_stone_bricks replace stone_bricks
execute if block 0 79 0 stone run fill -6 99 -18 -5 99 -18 mossy_stone_bricks replace stone_bricks
execute if block 0 79 0 stone run fill 2 99 -36 4 99 -35 stone replace stone_bricks
execute if block 0 79 0 stone run fill 28 99 32 28 99 32 stone replace stone_bricks
execute if block 0 79 0 stone run fill 10 99 2 12 99 2 cracked_stone_bricks replace stone_bricks
execute if block 0 79 0 stone run fill 7 99 24 7 99 25 gravel replace stone_bricks
execute if block 0 79 0 stone run fill 20 99 8 21 99 10 stone replace stone_bricks
execute if block 0 79 0 stone run fill 22 99 4 22 99 4 cracked_stone_bricks replace stone_bricks
execute if block 0 79 0 stone run fill 19 99 -29 19 99 -28 mossy_stone_bricks replace stone_bricks
execute if block 0 79 0 stone run fill 9 99 -22 9 99 -22 stone replace stone_bricks
execute if block 0 79 0 stone run fill 6 99 5 7 99 7 gravel replace stone_bricks
execute if block 0 79 0 stone run fill -13 99 13 -13 99 13 cracked_stone_bricks replace stone_bricks
execute if block 0 79 0 stone run fill 0 99 0 1 99 1 mossy_stone_bricks replace stone_bricks
execute if block 0 79 0 stone run fill 33 99 37 35 99 37 mossy_stone_bricks replace stone_bricks
execute if block 0 79 0 stone run fill 24 99 14 26 99 15 gravel replace stone_bricks
execute if block 0 79 0 stone run fill 12 99 28 12 99 29 mossy_stone_bricks replace stone_bricks
execute if block 0 79 0 stone run fill -33 99 -13 -33 99 -13 stone replace stone_bricks
execute if block 0 79 0 stone run fill -13 99 -20 -13 99 -20 cracked_stone_bricks replace stone_bricks
execute if block 0 79 0 stone run fill 32 99 -4 32 99 -2 stone replace stone_bricks
execute if block 0 79 0 stone run fill -25 99 -12 -23 99 -12 cracked_stone_bricks replace stone_bricks
execute if block 0 79 0 stone run fill -19 99 8 -17 99 8 mossy_stone_bricks replace stone_bricks
execute if block 0 79 0 stone run fill 24 99 -3 26 99 -3 cracked_stone_bricks replace stone_bricks
execute if block 0 79 0 stone run fill -4 99 -36 -2 99 -36 cracked_stone_bricks replace stone_bricks
execute if block 0 79 0 stone run fill -20 99 29 -18 99 30 cracked_stone_bricks replace stone_bricks
execute if block 0 79 0 stone run fill 23 99 -17 24 99 -15 gravel replace stone_bricks
execute if block 0 79 0 stone run fill -38 99 -34 -37 99 -32 mossy_stone_bricks replace stone_bricks
execute if block 0 79 0 stone run fill 11 99 -30 13 99 -29 stone replace stone_bricks
execute if block 0 79 0 stone run fill -11 99 -35 -10 99 -35 stone replace stone_bricks
execute if block 0 79 0 stone run fill -11 99 4 -11 99 5 cracked_stone_bricks replace stone_bricks
execute if block 0 79 0 stone run fill -37 99 -10 -35 99 -8 cracked_stone_bricks replace stone_bricks
execute if block 0 79 0 stone run scoreboard players add #bstep bce_sys 1
