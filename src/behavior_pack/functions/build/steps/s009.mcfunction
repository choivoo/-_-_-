# zone 0 ground 8
scoreboard players set #bzone bce_sys 0
execute unless block 0 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 0 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 0 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 0 79 0 stone run scoreboard players set #bstage bce_sys 0
execute if block 0 79 0 stone run fill 39 100 37 39 100 37 stone
execute if block 0 79 0 stone run fill 39 101 37 39 101 37 mossy_stone_bricks
execute if block 0 79 0 stone run fill -40 100 38 -38 100 38 mossy_stone_bricks
execute if block 0 79 0 stone run fill -37 100 38 -30 100 38 stone
execute if block 0 79 0 stone run fill -37 101 38 -30 101 38 mossy_stone_bricks
execute if block 0 79 0 stone run fill -29 100 38 -28 100 38 mossy_stone_bricks
execute if block 0 79 0 stone run fill -22 100 38 -22 100 38 mossy_stone_bricks
execute if block 0 79 0 stone run fill -21 100 38 -20 100 38 stone
execute if block 0 79 0 stone run fill -21 101 38 -20 101 38 mossy_stone_bricks
execute if block 0 79 0 stone run fill -19 100 38 -17 100 38 mossy_stone_bricks
execute if block 0 79 0 stone run fill -8 100 38 -7 100 38 mossy_stone_bricks
execute if block 0 79 0 stone run fill -6 100 38 -5 100 38 stone
execute if block 0 79 0 stone run fill -6 101 38 -5 101 38 mossy_stone_bricks
execute if block 0 79 0 stone run fill -4 100 38 -3 101 38 stone
execute if block 0 79 0 stone run fill -4 102 38 -3 102 38 mossy_stone_bricks
execute if block 0 79 0 stone run fill -2 100 38 -2 100 38 stone
execute if block 0 79 0 stone run fill -2 101 38 -2 101 38 mossy_stone_bricks
execute if block 0 79 0 stone run fill -1 100 38 -1 101 38 stone
execute if block 0 79 0 stone run fill -1 102 38 -1 102 38 mossy_stone_bricks
execute if block 0 79 0 stone run fill 0 100 38 1 100 38 stone
execute if block 0 79 0 stone run fill 0 101 38 1 101 38 mossy_stone_bricks
execute if block 0 79 0 stone run fill 2 100 38 2 100 38 mossy_stone_bricks
execute if block 0 79 0 stone run fill 3 100 38 3 100 38 stone
execute if block 0 79 0 stone run fill 3 101 38 3 101 38 mossy_stone_bricks
execute if block 0 79 0 stone run fill 4 100 38 7 100 38 mossy_stone_bricks
execute if block 0 79 0 stone run fill 8 100 38 8 100 38 stone
execute if block 0 79 0 stone run fill 8 101 38 8 101 38 mossy_stone_bricks
execute if block 0 79 0 stone run fill 9 100 38 9 100 38 mossy_stone_bricks
execute if block 0 79 0 stone run fill 10 100 38 10 100 38 stone
execute if block 0 79 0 stone run fill 10 101 38 10 101 38 mossy_stone_bricks
execute if block 0 79 0 stone run fill 11 100 38 13 101 38 stone
execute if block 0 79 0 stone run fill 11 102 38 13 102 38 mossy_stone_bricks
execute if block 0 79 0 stone run fill 14 100 38 14 100 38 stone
execute if block 0 79 0 stone run fill 14 101 38 14 101 38 mossy_stone_bricks
execute if block 0 79 0 stone run fill 15 100 38 16 101 38 stone
execute if block 0 79 0 stone run fill 15 102 38 16 102 38 mossy_stone_bricks
execute if block 0 79 0 stone run scoreboard players add #bstep bce_sys 1
