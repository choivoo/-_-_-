# zone 0 ground 10
scoreboard players set _bzone bce_sys 0
function build/ready_z0
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 0
execute if score _bready bce_sys matches 1 run fill 32 101 39 32 101 39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 33 100 39 35 101 39 stone
execute if score _bready bce_sys matches 1 run fill 33 102 39 35 102 39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 36 100 39 36 102 39 stone
execute if score _bready bce_sys matches 1 run fill 36 103 39 36 103 39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 37 100 39 37 101 39 stone
execute if score _bready bce_sys matches 1 run fill 37 102 39 37 102 39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 38 100 39 39 100 39 stone
execute if score _bready bce_sys matches 1 run fill 38 101 39 39 101 39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
