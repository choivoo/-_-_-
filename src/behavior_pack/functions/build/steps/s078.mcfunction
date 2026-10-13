# zone 1 detail 2
scoreboard players set _bzone bce_sys 1
function build/ready_z1
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 3
execute if score _bready bce_sys matches 1 run setblock 116 117 -13 white_concrete
execute if score _bready bce_sys matches 1 run setblock 116 118 -13 white_concrete
execute if score _bready bce_sys matches 1 run setblock 116 119 -13 white_concrete
execute if score _bready bce_sys matches 1 run setblock 116 120 -13 white_concrete
execute if score _bready bce_sys matches 1 run setblock 117 116 -13 white_concrete
execute if score _bready bce_sys matches 1 run setblock 117 117 -13 white_concrete
execute if score _bready bce_sys matches 1 run setblock 117 118 -13 white_concrete
execute if score _bready bce_sys matches 1 run setblock 117 119 -13 white_concrete
execute if score _bready bce_sys matches 1 run setblock 117 120 -13 white_concrete
execute if score _bready bce_sys matches 1 run setblock 118 116 -13 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 118 117 -13 white_concrete
execute if score _bready bce_sys matches 1 run setblock 118 118 -13 white_concrete
execute if score _bready bce_sys matches 1 run setblock 118 119 -13 white_concrete
execute if score _bready bce_sys matches 1 run setblock 118 120 -13 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 116 118 -13 black_concrete
execute if score _bready bce_sys matches 1 run setblock 116 118 -13 black_concrete
execute if score _bready bce_sys matches 1 run setblock 116 119 -13 black_concrete
execute if score _bready bce_sys matches 1 run setblock 117 118 -13 black_concrete
execute if score _bready bce_sys matches 1 run setblock 116 120 -13 black_concrete
execute if score _bready bce_sys matches 1 run setblock 118 118 -13 black_concrete
execute if score _bready bce_sys matches 1 run setblock 114 118 -13 sea_lantern
execute if score _bready bce_sys matches 1 run setblock 118 118 -13 sea_lantern
execute if score _bready bce_sys matches 1 run setblock 114 116 -7 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 114 117 -7 white_concrete
execute if score _bready bce_sys matches 1 run setblock 114 118 -7 white_concrete
execute if score _bready bce_sys matches 1 run setblock 114 119 -7 white_concrete
execute if score _bready bce_sys matches 1 run setblock 114 120 -7 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 115 116 -7 white_concrete
execute if score _bready bce_sys matches 1 run setblock 115 117 -7 white_concrete
execute if score _bready bce_sys matches 1 run setblock 115 118 -7 white_concrete
execute if score _bready bce_sys matches 1 run setblock 115 119 -7 white_concrete
execute if score _bready bce_sys matches 1 run setblock 115 120 -7 white_concrete
execute if score _bready bce_sys matches 1 run setblock 116 116 -7 white_concrete
execute if score _bready bce_sys matches 1 run setblock 116 117 -7 white_concrete
execute if score _bready bce_sys matches 1 run setblock 116 118 -7 white_concrete
execute if score _bready bce_sys matches 1 run setblock 116 119 -7 white_concrete
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
