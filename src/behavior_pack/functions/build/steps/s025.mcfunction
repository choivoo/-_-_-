# zone 0 ground 4
scoreboard players set _bzone bce_sys 0
function build/ready_z0
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 0
execute if score _bready bce_sys matches 1 run fill -10 100 -35 10 100 -35 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 11 100 -35 11 100 -35 stone
execute if score _bready bce_sys matches 1 run fill 11 101 -35 11 101 -35 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 12 100 -35 15 100 -35 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 24 100 -35 33 100 -35 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 34 100 -35 35 100 -35 stone
execute if score _bready bce_sys matches 1 run fill 34 101 -35 35 101 -35 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 36 100 -35 36 101 -35 stone
execute if score _bready bce_sys matches 1 run fill 36 102 -35 36 102 -35 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 37 100 -35 39 100 -35 stone
execute if score _bready bce_sys matches 1 run fill 37 101 -35 39 101 -35 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -40 100 -34 -37 100 -34 stone
execute if score _bready bce_sys matches 1 run fill -40 101 -34 -37 101 -34 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -36 100 -34 -34 100 -34 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -21 100 -34 -18 100 -34 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -16 100 -34 -16 100 -34 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -9 100 -34 -7 100 -34 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -5 100 -34 1 100 -34 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 3 100 -34 7 100 -34 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 9 100 -34 12 100 -34 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 25 100 -34 25 100 -34 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 32 100 -34 34 100 -34 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 35 100 -34 36 100 -34 stone
execute if score _bready bce_sys matches 1 run fill 35 101 -34 36 101 -34 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 37 100 -34 37 100 -34 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 38 100 -34 39 100 -34 stone
execute if score _bready bce_sys matches 1 run fill 38 101 -34 39 101 -34 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -40 100 -33 -33 100 -33 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -22 100 -33 -19 100 -33 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -16 100 -33 -16 100 -33 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -14 100 -33 -13 100 -33 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -8 100 -33 -7 100 -33 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -5 100 -33 -5 100 -33 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -3 100 -33 3 100 -33 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 5 100 -33 7 100 -33 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 10 100 -33 12 100 -33 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
