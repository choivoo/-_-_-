# zone 0 ground 3
scoreboard players set #bzone bce_sys 0
execute unless block 0 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 0 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 0 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 0 79 0 stone run scoreboard players set #bstage bce_sys 0
execute if block 0 79 0 stone run fill 9 102 -37 10 102 -37 mossy_stone_bricks
execute if block 0 79 0 stone run fill 11 100 -37 15 100 -37 stone
execute if block 0 79 0 stone run fill 11 101 -37 15 101 -37 mossy_stone_bricks
execute if block 0 79 0 stone run fill 16 100 -37 16 100 -37 mossy_stone_bricks
execute if block 0 79 0 stone run fill 24 100 -37 28 100 -37 mossy_stone_bricks
execute if block 0 79 0 stone run fill 30 100 -37 33 100 -37 mossy_stone_bricks
execute if block 0 79 0 stone run fill 34 100 -37 39 100 -37 stone
execute if block 0 79 0 stone run fill 34 101 -37 39 101 -37 mossy_stone_bricks
execute if block 0 79 0 stone run fill -40 100 -36 -37 101 -36 stone
execute if block 0 79 0 stone run fill -40 102 -36 -37 102 -36 mossy_stone_bricks
execute if block 0 79 0 stone run fill -36 100 -36 -36 100 -36 stone
execute if block 0 79 0 stone run fill -36 101 -36 -36 101 -36 mossy_stone_bricks
execute if block 0 79 0 stone run fill -35 100 -36 -30 100 -36 mossy_stone_bricks
execute if block 0 79 0 stone run fill -24 100 -36 -17 100 -36 mossy_stone_bricks
execute if block 0 79 0 stone run fill -9 100 -36 -5 100 -36 mossy_stone_bricks
execute if block 0 79 0 stone run fill -4 100 -36 -2 100 -36 stone
execute if block 0 79 0 stone run fill -4 101 -36 -2 101 -36 mossy_stone_bricks
execute if block 0 79 0 stone run fill -1 100 -36 6 100 -36 mossy_stone_bricks
execute if block 0 79 0 stone run fill 7 100 -36 13 100 -36 stone
execute if block 0 79 0 stone run fill 7 101 -36 13 101 -36 mossy_stone_bricks
execute if block 0 79 0 stone run fill 14 100 -36 16 100 -36 mossy_stone_bricks
execute if block 0 79 0 stone run fill 24 100 -36 28 100 -36 mossy_stone_bricks
execute if block 0 79 0 stone run fill 32 100 -36 33 100 -36 mossy_stone_bricks
execute if block 0 79 0 stone run fill 34 100 -36 34 100 -36 stone
execute if block 0 79 0 stone run fill 34 101 -36 34 101 -36 mossy_stone_bricks
execute if block 0 79 0 stone run fill 35 100 -36 37 101 -36 stone
execute if block 0 79 0 stone run fill 35 102 -36 37 102 -36 mossy_stone_bricks
execute if block 0 79 0 stone run fill 38 100 -36 38 100 -36 stone
execute if block 0 79 0 stone run fill 38 101 -36 38 101 -36 mossy_stone_bricks
execute if block 0 79 0 stone run fill 39 100 -36 39 101 -36 stone
execute if block 0 79 0 stone run fill 39 102 -36 39 102 -36 mossy_stone_bricks
execute if block 0 79 0 stone run fill -40 100 -35 -36 100 -35 stone
execute if block 0 79 0 stone run fill -40 101 -35 -36 101 -35 mossy_stone_bricks
execute if block 0 79 0 stone run fill -35 100 -35 -30 100 -35 mossy_stone_bricks
execute if block 0 79 0 stone run fill -28 100 -35 -28 100 -35 mossy_stone_bricks
execute if block 0 79 0 stone run fill -22 100 -35 -16 100 -35 mossy_stone_bricks
execute if block 0 79 0 stone run scoreboard players add #bstep bce_sys 1
