# zone 0 detail 0
scoreboard players set _bzone bce_sys 0
function build/ready_z0
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 3
execute if score _bready bce_sys matches 1 run fill 16 99 -26 17 99 -25 mossy_stone_bricks replace stone_bricks
execute if score _bready bce_sys matches 1 run fill 21 99 -17 23 99 -16 cracked_stone_bricks replace stone_bricks
execute if score _bready bce_sys matches 1 run fill -10 99 -8 -9 99 -6 gravel replace stone_bricks
execute if score _bready bce_sys matches 1 run fill -13 99 8 -13 99 9 cracked_stone_bricks replace stone_bricks
execute if score _bready bce_sys matches 1 run fill -33 99 24 -33 99 25 gravel replace stone_bricks
execute if score _bready bce_sys matches 1 run fill -13 99 -36 -11 99 -35 cracked_stone_bricks replace stone_bricks
execute if score _bready bce_sys matches 1 run fill 31 99 -16 33 99 -14 mossy_stone_bricks replace stone_bricks
execute if score _bready bce_sys matches 1 run fill -6 99 -18 -5 99 -18 mossy_stone_bricks replace stone_bricks
execute if score _bready bce_sys matches 1 run fill 2 99 -36 4 99 -35 stone replace stone_bricks
execute if score _bready bce_sys matches 1 run fill 28 99 32 28 99 32 stone replace stone_bricks
execute if score _bready bce_sys matches 1 run fill 10 99 2 12 99 2 cracked_stone_bricks replace stone_bricks
execute if score _bready bce_sys matches 1 run fill 7 99 24 7 99 25 gravel replace stone_bricks
execute if score _bready bce_sys matches 1 run fill 20 99 8 21 99 10 stone replace stone_bricks
execute if score _bready bce_sys matches 1 run fill 22 99 4 22 99 4 cracked_stone_bricks replace stone_bricks
execute if score _bready bce_sys matches 1 run fill 19 99 -29 19 99 -28 mossy_stone_bricks replace stone_bricks
execute if score _bready bce_sys matches 1 run fill 9 99 -22 9 99 -22 stone replace stone_bricks
execute if score _bready bce_sys matches 1 run fill 6 99 5 7 99 7 gravel replace stone_bricks
execute if score _bready bce_sys matches 1 run fill -13 99 13 -13 99 13 cracked_stone_bricks replace stone_bricks
execute if score _bready bce_sys matches 1 run fill 0 99 0 1 99 1 mossy_stone_bricks replace stone_bricks
execute if score _bready bce_sys matches 1 run fill 33 99 37 35 99 37 mossy_stone_bricks replace stone_bricks
execute if score _bready bce_sys matches 1 run fill 24 99 14 26 99 15 gravel replace stone_bricks
execute if score _bready bce_sys matches 1 run fill 12 99 28 12 99 29 mossy_stone_bricks replace stone_bricks
execute if score _bready bce_sys matches 1 run fill -33 99 -13 -33 99 -13 stone replace stone_bricks
execute if score _bready bce_sys matches 1 run fill -13 99 -20 -13 99 -20 cracked_stone_bricks replace stone_bricks
execute if score _bready bce_sys matches 1 run fill 32 99 -4 32 99 -2 stone replace stone_bricks
execute if score _bready bce_sys matches 1 run fill -25 99 -12 -23 99 -12 cracked_stone_bricks replace stone_bricks
execute if score _bready bce_sys matches 1 run fill -19 99 8 -17 99 8 mossy_stone_bricks replace stone_bricks
execute if score _bready bce_sys matches 1 run fill 24 99 -3 26 99 -3 cracked_stone_bricks replace stone_bricks
execute if score _bready bce_sys matches 1 run fill -4 99 -36 -2 99 -36 cracked_stone_bricks replace stone_bricks
execute if score _bready bce_sys matches 1 run fill -20 99 29 -18 99 30 cracked_stone_bricks replace stone_bricks
execute if score _bready bce_sys matches 1 run fill 23 99 -17 24 99 -15 gravel replace stone_bricks
execute if score _bready bce_sys matches 1 run fill -38 99 -34 -37 99 -32 mossy_stone_bricks replace stone_bricks
execute if score _bready bce_sys matches 1 run fill 11 99 -30 13 99 -29 stone replace stone_bricks
execute if score _bready bce_sys matches 1 run fill -11 99 -35 -10 99 -35 stone replace stone_bricks
execute if score _bready bce_sys matches 1 run fill -11 99 4 -11 99 5 cracked_stone_bricks replace stone_bricks
execute if score _bready bce_sys matches 1 run fill -37 99 -10 -35 99 -8 cracked_stone_bricks replace stone_bricks
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
