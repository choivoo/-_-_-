# zone 3 shell 1
scoreboard players set _bzone bce_sys 3
function build/ready_z3
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 1
execute if score _bready bce_sys matches 1 run setblock 299 119 -19 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 299 119 -17 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 299 119 -15 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 299 119 -13 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 299 119 -11 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 299 119 -9 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 299 119 -7 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 299 119 -5 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 299 119 -3 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 299 119 -1 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 299 119 1 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 299 119 3 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 299 119 5 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 299 119 7 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 299 119 9 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 299 119 11 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 299 119 13 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 299 119 15 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 299 119 17 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 299 119 19 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 299 119 21 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 299 119 23 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 299 119 25 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 299 119 27 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 299 119 29 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 299 119 31 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 299 119 33 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 299 119 35 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 299 119 37 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 295 100 -34 stone_brick_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run setblock 295 101 -33 stone_brick_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run setblock 295 102 -32 stone_brick_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run setblock 295 103 -31 stone_brick_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run setblock 295 104 -30 stone_brick_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run setblock 295 105 -29 stone_brick_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run setblock 295 106 -28 stone_brick_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
