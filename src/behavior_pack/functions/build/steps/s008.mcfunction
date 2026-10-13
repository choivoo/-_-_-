# zone 0 ground 7
scoreboard players set #bzone bce_sys 0
execute unless block 0 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 0 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 0 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 0 79 0 stone run scoreboard players set #bstage bce_sys 0
execute if block 0 79 0 stone run fill 4 100 36 11 100 36 mossy_stone_bricks
execute if block 0 79 0 stone run fill 12 100 36 15 100 36 stone
execute if block 0 79 0 stone run fill 12 101 36 15 101 36 mossy_stone_bricks
execute if block 0 79 0 stone run fill 16 100 36 16 101 36 stone
execute if block 0 79 0 stone run fill 16 102 36 16 102 36 mossy_stone_bricks
execute if block 0 79 0 stone run fill 17 100 36 19 100 36 stone
execute if block 0 79 0 stone run fill 17 101 36 19 101 36 mossy_stone_bricks
execute if block 0 79 0 stone run fill 20 100 36 21 100 36 mossy_stone_bricks
execute if block 0 79 0 stone run fill 23 100 36 29 100 36 mossy_stone_bricks
execute if block 0 79 0 stone run fill 30 100 36 31 100 36 stone
execute if block 0 79 0 stone run fill 30 101 36 31 101 36 mossy_stone_bricks
execute if block 0 79 0 stone run fill 32 100 36 32 100 36 mossy_stone_bricks
execute if block 0 79 0 stone run fill 33 100 36 34 100 36 stone
execute if block 0 79 0 stone run fill 33 101 36 34 101 36 mossy_stone_bricks
execute if block 0 79 0 stone run fill 35 100 36 39 100 36 mossy_stone_bricks
execute if block 0 79 0 stone run fill -40 100 37 -39 100 37 stone
execute if block 0 79 0 stone run fill -40 101 37 -39 101 37 mossy_stone_bricks
execute if block 0 79 0 stone run fill -38 100 37 -38 100 37 mossy_stone_bricks
execute if block 0 79 0 stone run fill -37 100 37 -29 100 37 stone
execute if block 0 79 0 stone run fill -37 101 37 -29 101 37 mossy_stone_bricks
execute if block 0 79 0 stone run fill -28 100 37 -28 100 37 mossy_stone_bricks
execute if block 0 79 0 stone run fill -22 100 37 -22 100 37 mossy_stone_bricks
execute if block 0 79 0 stone run fill -21 100 37 -21 100 37 stone
execute if block 0 79 0 stone run fill -21 101 37 -21 101 37 mossy_stone_bricks
execute if block 0 79 0 stone run fill -20 100 37 -18 100 37 mossy_stone_bricks
execute if block 0 79 0 stone run fill -8 100 37 -7 100 37 mossy_stone_bricks
execute if block 0 79 0 stone run fill -6 100 37 4 100 37 stone
execute if block 0 79 0 stone run fill -6 101 37 4 101 37 mossy_stone_bricks
execute if block 0 79 0 stone run fill 5 100 37 9 100 37 mossy_stone_bricks
execute if block 0 79 0 stone run fill 10 100 37 19 100 37 stone
execute if block 0 79 0 stone run fill 10 101 37 19 101 37 mossy_stone_bricks
execute if block 0 79 0 stone run fill 20 100 37 21 100 37 mossy_stone_bricks
execute if block 0 79 0 stone run fill 23 100 37 23 100 37 mossy_stone_bricks
execute if block 0 79 0 stone run fill 24 100 37 36 100 37 stone
execute if block 0 79 0 stone run fill 24 101 37 36 101 37 mossy_stone_bricks
execute if block 0 79 0 stone run fill 37 100 37 38 100 37 mossy_stone_bricks
execute if block 0 79 0 stone run scoreboard players add #bstep bce_sys 1
