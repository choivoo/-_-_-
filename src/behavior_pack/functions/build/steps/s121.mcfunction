# zone 3 shell 0
scoreboard players set _bzone bce_sys 3
function build/ready_z3
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 1
execute if score _bready bce_sys matches 1 run fill 299 100 -39 304 117 38 stone_bricks
execute if score _bready bce_sys matches 1 run fill 299 100 -4 304 109 4 air
execute if score _bready bce_sys matches 1 run fill 299 110 -5 304 110 5 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 299 112 -37 304 117 -37 air
execute if score _bready bce_sys matches 1 run fill 299 109 -35 304 117 -35 air
execute if score _bready bce_sys matches 1 run fill 299 110 -34 304 117 -34 air
execute if score _bready bce_sys matches 1 run fill 299 112 -33 304 117 -33 air
execute if score _bready bce_sys matches 1 run fill 299 113 -32 304 117 -32 air
execute if score _bready bce_sys matches 1 run fill 299 114 -31 304 117 -31 air
execute if score _bready bce_sys matches 1 run fill 299 112 -28 304 117 -28 air
execute if score _bready bce_sys matches 1 run fill 299 109 -27 304 117 -27 air
execute if score _bready bce_sys matches 1 run fill 299 113 -26 304 117 -26 air
execute if score _bready bce_sys matches 1 run fill 299 110 -23 304 117 -23 air
execute if score _bready bce_sys matches 1 run fill 299 110 -21 304 117 -21 air
execute if score _bready bce_sys matches 1 run fill 299 115 -20 304 117 -20 air
execute if score _bready bce_sys matches 1 run fill 299 110 -18 304 117 -18 air
execute if score _bready bce_sys matches 1 run fill 299 114 -13 304 117 -13 air
execute if score _bready bce_sys matches 1 run fill 299 113 13 304 117 13 air
execute if score _bready bce_sys matches 1 run fill 299 109 15 304 117 15 air
execute if score _bready bce_sys matches 1 run fill 299 112 19 304 117 19 air
execute if score _bready bce_sys matches 1 run fill 299 115 20 304 117 20 air
execute if score _bready bce_sys matches 1 run fill 299 110 21 304 117 21 air
execute if score _bready bce_sys matches 1 run fill 299 111 32 304 117 32 air
execute if score _bready bce_sys matches 1 run fill 299 112 33 304 117 33 air
execute if score _bready bce_sys matches 1 run fill 299 109 36 304 117 36 air
execute if score _bready bce_sys matches 1 run fill 299 118 -39 299 118 38 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 299 119 -39 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 299 119 -37 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 299 119 -35 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 299 119 -33 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 299 119 -31 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 299 119 -29 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 299 119 -27 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 299 119 -25 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 299 119 -23 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 299 119 -21 stone_bricks
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
