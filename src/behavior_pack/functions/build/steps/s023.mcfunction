# zone 0 ground 2
scoreboard players set _bzone bce_sys 0
function build/ready_z0
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 0
execute if score _bready bce_sys matches 1 run fill -1 100 -38 0 100 -38 stone
execute if score _bready bce_sys matches 1 run fill -1 101 -38 0 101 -38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 1 100 -38 3 101 -38 stone
execute if score _bready bce_sys matches 1 run fill 1 102 -38 3 102 -38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 4 100 -38 7 100 -38 stone
execute if score _bready bce_sys matches 1 run fill 4 101 -38 7 101 -38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 8 100 -38 8 101 -38 stone
execute if score _bready bce_sys matches 1 run fill 8 102 -38 8 102 -38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 9 100 -38 9 102 -38 stone
execute if score _bready bce_sys matches 1 run fill 9 103 -38 9 103 -38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 10 100 -38 11 101 -38 stone
execute if score _bready bce_sys matches 1 run fill 10 102 -38 11 102 -38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 12 100 -38 13 100 -38 stone
execute if score _bready bce_sys matches 1 run fill 12 101 -38 13 101 -38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 14 100 -38 15 100 -38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 23 100 -38 24 100 -38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 25 100 -38 26 100 -38 stone
execute if score _bready bce_sys matches 1 run fill 25 101 -38 26 101 -38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 27 100 -38 32 100 -38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 33 100 -38 39 100 -38 stone
execute if score _bready bce_sys matches 1 run fill 33 101 -38 39 101 -38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -40 100 -37 -40 100 -37 stone
execute if score _bready bce_sys matches 1 run fill -40 101 -37 -40 101 -37 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -39 100 -37 -38 101 -37 stone
execute if score _bready bce_sys matches 1 run fill -39 102 -37 -38 102 -37 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -37 100 -37 -33 100 -37 stone
execute if score _bready bce_sys matches 1 run fill -37 101 -37 -33 101 -37 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -32 100 -37 -29 100 -37 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -24 100 -37 -23 100 -37 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -22 100 -37 -20 100 -37 stone
execute if score _bready bce_sys matches 1 run fill -22 101 -37 -20 101 -37 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -19 100 -37 -15 100 -37 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -8 100 -37 -8 100 -37 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -7 100 -37 8 100 -37 stone
execute if score _bready bce_sys matches 1 run fill -7 101 -37 8 101 -37 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 9 100 -37 10 101 -37 stone
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
