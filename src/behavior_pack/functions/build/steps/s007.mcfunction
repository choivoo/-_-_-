# zone 0 ground 6
scoreboard players set #bzone bce_sys 0
execute unless block 0 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 0 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 0 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 0 79 0 stone run scoreboard players set #bstage bce_sys 0
execute if block 0 79 0 stone run fill -5 101 35 1 101 35 mossy_stone_bricks
execute if block 0 79 0 stone run fill 2 100 35 8 100 35 mossy_stone_bricks
execute if block 0 79 0 stone run fill 9 100 35 9 100 35 stone
execute if block 0 79 0 stone run fill 9 101 35 9 101 35 mossy_stone_bricks
execute if block 0 79 0 stone run fill 10 100 35 11 100 35 mossy_stone_bricks
execute if block 0 79 0 stone run fill 12 100 35 17 100 35 stone
execute if block 0 79 0 stone run fill 12 101 35 17 101 35 mossy_stone_bricks
execute if block 0 79 0 stone run fill 18 100 35 20 100 35 mossy_stone_bricks
execute if block 0 79 0 stone run fill 23 100 35 30 100 35 mossy_stone_bricks
execute if block 0 79 0 stone run fill 31 100 35 31 100 35 stone
execute if block 0 79 0 stone run fill 31 101 35 31 101 35 mossy_stone_bricks
execute if block 0 79 0 stone run fill 32 100 35 32 100 35 mossy_stone_bricks
execute if block 0 79 0 stone run fill 33 100 35 34 100 35 stone
execute if block 0 79 0 stone run fill 33 101 35 34 101 35 mossy_stone_bricks
execute if block 0 79 0 stone run fill 35 100 35 39 100 35 mossy_stone_bricks
execute if block 0 79 0 stone run fill -40 100 36 -36 100 36 mossy_stone_bricks
execute if block 0 79 0 stone run fill -35 100 36 -35 100 36 stone
execute if block 0 79 0 stone run fill -35 101 36 -35 101 36 mossy_stone_bricks
execute if block 0 79 0 stone run fill -34 100 36 -34 100 36 mossy_stone_bricks
execute if block 0 79 0 stone run fill -33 100 36 -33 100 36 stone
execute if block 0 79 0 stone run fill -33 101 36 -33 101 36 mossy_stone_bricks
execute if block 0 79 0 stone run fill -32 100 36 -32 100 36 mossy_stone_bricks
execute if block 0 79 0 stone run fill -31 100 36 -31 100 36 stone
execute if block 0 79 0 stone run fill -31 101 36 -31 101 36 mossy_stone_bricks
execute if block 0 79 0 stone run fill -30 100 36 -29 100 36 mossy_stone_bricks
execute if block 0 79 0 stone run fill -22 100 36 -20 100 36 mossy_stone_bricks
execute if block 0 79 0 stone run fill -8 100 36 -6 100 36 mossy_stone_bricks
execute if block 0 79 0 stone run fill -5 100 36 -5 100 36 stone
execute if block 0 79 0 stone run fill -5 101 36 -5 101 36 mossy_stone_bricks
execute if block 0 79 0 stone run fill -4 100 36 -3 101 36 stone
execute if block 0 79 0 stone run fill -4 102 36 -3 102 36 mossy_stone_bricks
execute if block 0 79 0 stone run fill -2 100 36 1 100 36 stone
execute if block 0 79 0 stone run fill -2 101 36 1 101 36 mossy_stone_bricks
execute if block 0 79 0 stone run fill 2 100 36 2 100 36 mossy_stone_bricks
execute if block 0 79 0 stone run fill 3 100 36 3 100 36 stone
execute if block 0 79 0 stone run fill 3 101 36 3 101 36 mossy_stone_bricks
execute if block 0 79 0 stone run scoreboard players add #bstep bce_sys 1
