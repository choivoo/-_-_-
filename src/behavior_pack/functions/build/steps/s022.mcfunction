# zone 0 ground 1
scoreboard players set _bzone bce_sys 0
function build/ready_z0
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 0
execute if score _bready bce_sys matches 1 run fill -23 101 -39 -16 101 -39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -15 100 -39 -14 100 -39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -8 100 -39 -8 100 -39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -7 100 -39 -1 100 -39 stone
execute if score _bready bce_sys matches 1 run fill -7 101 -39 -1 101 -39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 0 100 -39 0 100 -39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 1 100 -39 6 100 -39 stone
execute if score _bready bce_sys matches 1 run fill 1 101 -39 6 101 -39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 7 100 -39 12 101 -39 stone
execute if score _bready bce_sys matches 1 run fill 7 102 -39 12 102 -39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 13 100 -39 15 100 -39 stone
execute if score _bready bce_sys matches 1 run fill 13 101 -39 15 101 -39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 16 100 -39 16 100 -39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 22 100 -39 23 100 -39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 24 100 -39 26 100 -39 stone
execute if score _bready bce_sys matches 1 run fill 24 101 -39 26 101 -39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 27 100 -39 29 100 -39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 30 100 -39 35 100 -39 stone
execute if score _bready bce_sys matches 1 run fill 30 101 -39 35 101 -39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 36 100 -39 36 100 -39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 37 100 -39 39 100 -39 stone
execute if score _bready bce_sys matches 1 run fill 37 101 -39 39 101 -39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -40 100 -38 -34 101 -38 stone
execute if score _bready bce_sys matches 1 run fill -40 102 -38 -34 102 -38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -33 100 -38 -30 100 -38 stone
execute if score _bready bce_sys matches 1 run fill -33 101 -38 -30 101 -38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -29 100 -38 -28 100 -38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -24 100 -38 -24 100 -38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -23 100 -38 -18 100 -38 stone
execute if score _bready bce_sys matches 1 run fill -23 101 -38 -18 101 -38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -17 100 -38 -15 100 -38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -8 100 -38 -8 100 -38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -7 100 -38 -3 100 -38 stone
execute if score _bready bce_sys matches 1 run fill -7 101 -38 -3 101 -38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -2 100 -38 -2 101 -38 stone
execute if score _bready bce_sys matches 1 run fill -2 102 -38 -2 102 -38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
