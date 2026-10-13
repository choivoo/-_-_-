# zone 0 ground 9
scoreboard players set #bzone bce_sys 0
execute unless block 0 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 0 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 0 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 0 79 0 stone run scoreboard players set #bstage bce_sys 0
execute if block 0 79 0 stone run fill 17 100 38 19 100 38 stone
execute if block 0 79 0 stone run fill 17 101 38 19 101 38 mossy_stone_bricks
execute if block 0 79 0 stone run fill 20 100 38 21 100 38 mossy_stone_bricks
execute if block 0 79 0 stone run fill 23 100 38 23 100 38 mossy_stone_bricks
execute if block 0 79 0 stone run fill 24 100 38 28 100 38 stone
execute if block 0 79 0 stone run fill 24 101 38 28 101 38 mossy_stone_bricks
execute if block 0 79 0 stone run fill 29 100 38 36 101 38 stone
execute if block 0 79 0 stone run fill 29 102 38 36 102 38 mossy_stone_bricks
execute if block 0 79 0 stone run fill 37 100 38 39 100 38 stone
execute if block 0 79 0 stone run fill 37 101 38 39 101 38 mossy_stone_bricks
execute if block 0 79 0 stone run fill -40 100 39 -39 100 39 mossy_stone_bricks
execute if block 0 79 0 stone run fill -38 100 39 -34 100 39 stone
execute if block 0 79 0 stone run fill -38 101 39 -34 101 39 mossy_stone_bricks
execute if block 0 79 0 stone run fill -33 100 39 -29 100 39 mossy_stone_bricks
execute if block 0 79 0 stone run fill -23 100 39 -22 100 39 mossy_stone_bricks
execute if block 0 79 0 stone run fill -21 100 39 -17 100 39 stone
execute if block 0 79 0 stone run fill -21 101 39 -17 101 39 mossy_stone_bricks
execute if block 0 79 0 stone run fill -16 100 39 -16 100 39 mossy_stone_bricks
execute if block 0 79 0 stone run fill -10 100 39 -7 100 39 mossy_stone_bricks
execute if block 0 79 0 stone run fill -6 100 39 -5 100 39 stone
execute if block 0 79 0 stone run fill -6 101 39 -5 101 39 mossy_stone_bricks
execute if block 0 79 0 stone run fill -4 100 39 -1 101 39 stone
execute if block 0 79 0 stone run fill -4 102 39 -1 102 39 mossy_stone_bricks
execute if block 0 79 0 stone run fill 0 100 39 1 100 39 stone
execute if block 0 79 0 stone run fill 0 101 39 1 101 39 mossy_stone_bricks
execute if block 0 79 0 stone run fill 2 100 39 4 100 39 mossy_stone_bricks
execute if block 0 79 0 stone run fill 6 100 39 6 100 39 mossy_stone_bricks
execute if block 0 79 0 stone run fill 7 100 39 18 100 39 stone
execute if block 0 79 0 stone run fill 7 101 39 18 101 39 mossy_stone_bricks
execute if block 0 79 0 stone run fill 19 100 39 19 100 39 mossy_stone_bricks
execute if block 0 79 0 stone run fill 23 100 39 23 100 39 mossy_stone_bricks
execute if block 0 79 0 stone run fill 24 100 39 28 100 39 stone
execute if block 0 79 0 stone run fill 24 101 39 28 101 39 mossy_stone_bricks
execute if block 0 79 0 stone run fill 29 100 39 31 101 39 stone
execute if block 0 79 0 stone run fill 29 102 39 31 102 39 mossy_stone_bricks
execute if block 0 79 0 stone run fill 32 100 39 32 100 39 stone
execute if block 0 79 0 stone run scoreboard players add #bstep bce_sys 1
