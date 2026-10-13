# zone 3 shell 1
scoreboard players set #bzone bce_sys 3
execute unless block 300 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 300 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 300 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 300 79 0 stone run scoreboard players set #bstage bce_sys 1
execute if block 300 79 0 stone run setblock 299 119 -19 stone_bricks
execute if block 300 79 0 stone run setblock 299 119 -17 stone_bricks
execute if block 300 79 0 stone run setblock 299 119 -15 stone_bricks
execute if block 300 79 0 stone run setblock 299 119 -13 stone_bricks
execute if block 300 79 0 stone run setblock 299 119 -11 stone_bricks
execute if block 300 79 0 stone run setblock 299 119 -9 stone_bricks
execute if block 300 79 0 stone run setblock 299 119 -7 stone_bricks
execute if block 300 79 0 stone run setblock 299 119 -5 stone_bricks
execute if block 300 79 0 stone run setblock 299 119 -3 stone_bricks
execute if block 300 79 0 stone run setblock 299 119 -1 stone_bricks
execute if block 300 79 0 stone run setblock 299 119 1 stone_bricks
execute if block 300 79 0 stone run setblock 299 119 3 stone_bricks
execute if block 300 79 0 stone run setblock 299 119 5 stone_bricks
execute if block 300 79 0 stone run setblock 299 119 7 stone_bricks
execute if block 300 79 0 stone run setblock 299 119 9 stone_bricks
execute if block 300 79 0 stone run setblock 299 119 11 stone_bricks
execute if block 300 79 0 stone run setblock 299 119 13 stone_bricks
execute if block 300 79 0 stone run setblock 299 119 15 stone_bricks
execute if block 300 79 0 stone run setblock 299 119 17 stone_bricks
execute if block 300 79 0 stone run setblock 299 119 19 stone_bricks
execute if block 300 79 0 stone run setblock 299 119 21 stone_bricks
execute if block 300 79 0 stone run setblock 299 119 23 stone_bricks
execute if block 300 79 0 stone run setblock 299 119 25 stone_bricks
execute if block 300 79 0 stone run setblock 299 119 27 stone_bricks
execute if block 300 79 0 stone run setblock 299 119 29 stone_bricks
execute if block 300 79 0 stone run setblock 299 119 31 stone_bricks
execute if block 300 79 0 stone run setblock 299 119 33 stone_bricks
execute if block 300 79 0 stone run setblock 299 119 35 stone_bricks
execute if block 300 79 0 stone run setblock 299 119 37 stone_bricks
execute if block 300 79 0 stone run setblock 295 100 -34 stone_brick_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if block 300 79 0 stone run setblock 295 101 -33 stone_brick_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if block 300 79 0 stone run setblock 295 102 -32 stone_brick_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if block 300 79 0 stone run setblock 295 103 -31 stone_brick_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if block 300 79 0 stone run setblock 295 104 -30 stone_brick_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if block 300 79 0 stone run setblock 295 105 -29 stone_brick_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if block 300 79 0 stone run setblock 295 106 -28 stone_brick_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if block 300 79 0 stone run scoreboard players add #bstep bce_sys 1
