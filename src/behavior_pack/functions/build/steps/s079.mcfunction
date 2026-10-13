# zone 1 detail 3
scoreboard players set _bzone bce_sys 1
function build/ready_z1
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 3
execute if score _bready bce_sys matches 1 run setblock 116 120 -7 white_concrete
execute if score _bready bce_sys matches 1 run setblock 117 116 -7 white_concrete
execute if score _bready bce_sys matches 1 run setblock 117 117 -7 white_concrete
execute if score _bready bce_sys matches 1 run setblock 117 118 -7 white_concrete
execute if score _bready bce_sys matches 1 run setblock 117 119 -7 white_concrete
execute if score _bready bce_sys matches 1 run setblock 117 120 -7 white_concrete
execute if score _bready bce_sys matches 1 run setblock 118 116 -7 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 118 117 -7 white_concrete
execute if score _bready bce_sys matches 1 run setblock 118 118 -7 white_concrete
execute if score _bready bce_sys matches 1 run setblock 118 119 -7 white_concrete
execute if score _bready bce_sys matches 1 run setblock 118 120 -7 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 116 118 -7 black_concrete
execute if score _bready bce_sys matches 1 run setblock 116 118 -7 black_concrete
execute if score _bready bce_sys matches 1 run setblock 116 119 -7 black_concrete
execute if score _bready bce_sys matches 1 run setblock 117 118 -7 black_concrete
execute if score _bready bce_sys matches 1 run setblock 116 120 -7 black_concrete
execute if score _bready bce_sys matches 1 run setblock 118 118 -7 black_concrete
execute if score _bready bce_sys matches 1 run setblock 114 118 -7 sea_lantern
execute if score _bready bce_sys matches 1 run setblock 118 118 -7 sea_lantern
execute if score _bready bce_sys matches 1 run setblock 113 116 -12 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 113 117 -12 white_concrete
execute if score _bready bce_sys matches 1 run setblock 113 118 -12 white_concrete
execute if score _bready bce_sys matches 1 run setblock 113 119 -12 white_concrete
execute if score _bready bce_sys matches 1 run setblock 113 120 -12 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 113 116 -11 white_concrete
execute if score _bready bce_sys matches 1 run setblock 113 117 -11 white_concrete
execute if score _bready bce_sys matches 1 run setblock 113 118 -11 white_concrete
execute if score _bready bce_sys matches 1 run setblock 113 119 -11 white_concrete
execute if score _bready bce_sys matches 1 run setblock 113 120 -11 white_concrete
execute if score _bready bce_sys matches 1 run setblock 113 116 -10 white_concrete
execute if score _bready bce_sys matches 1 run setblock 113 117 -10 white_concrete
execute if score _bready bce_sys matches 1 run setblock 113 118 -10 white_concrete
execute if score _bready bce_sys matches 1 run setblock 113 119 -10 white_concrete
execute if score _bready bce_sys matches 1 run setblock 113 120 -10 white_concrete
execute if score _bready bce_sys matches 1 run setblock 113 116 -9 white_concrete
execute if score _bready bce_sys matches 1 run setblock 113 117 -9 white_concrete
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
