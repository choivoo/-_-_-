# zone 0 ground 5
scoreboard players set _bzone bce_sys 0
function build/ready_z0
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 0
execute if score _bready bce_sys matches 1 run fill 24 100 -33 26 100 -33 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 32 100 -33 39 100 -33 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -39 100 -32 -35 100 -32 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -2 100 -32 0 100 -32 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 24 100 -32 26 100 -32 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 35 100 -32 39 100 -32 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -37 100 32 -34 100 32 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -4 100 32 1 100 32 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 9 100 32 15 100 32 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -39 100 33 -30 100 33 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -5 100 33 3 100 33 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 7 100 33 18 100 33 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 27 100 33 27 100 33 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 29 100 33 31 100 33 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 38 100 33 38 100 33 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -38 100 34 -29 100 34 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -7 100 34 -4 100 34 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -3 100 34 -2 100 34 stone
execute if score _bready bce_sys matches 1 run fill -3 101 34 -2 101 34 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -1 100 34 -1 100 34 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 0 100 34 0 100 34 stone
execute if score _bready bce_sys matches 1 run fill 0 101 34 0 101 34 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 1 100 34 3 100 34 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 8 100 34 12 100 34 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 13 100 34 13 100 34 stone
execute if score _bready bce_sys matches 1 run fill 13 101 34 13 101 34 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 14 100 34 18 100 34 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 25 100 34 27 100 34 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 30 100 34 35 100 34 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 38 100 34 38 100 34 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -40 100 35 -32 100 35 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -31 100 35 -30 100 35 stone
execute if score _bready bce_sys matches 1 run fill -31 101 35 -30 101 35 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -29 100 35 -28 100 35 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -8 100 35 -6 100 35 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -5 100 35 1 100 35 stone
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
