# zone 1 detail 2
scoreboard players set #bzone bce_sys 1
execute unless block 100 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 100 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 100 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 100 79 0 stone run scoreboard players set #bstage bce_sys 3
execute if block 100 79 0 stone run setblock 116 117 -13 white_concrete
execute if block 100 79 0 stone run setblock 116 118 -13 white_concrete
execute if block 100 79 0 stone run setblock 116 119 -13 white_concrete
execute if block 100 79 0 stone run setblock 116 120 -13 white_concrete
execute if block 100 79 0 stone run setblock 117 116 -13 white_concrete
execute if block 100 79 0 stone run setblock 117 117 -13 white_concrete
execute if block 100 79 0 stone run setblock 117 118 -13 white_concrete
execute if block 100 79 0 stone run setblock 117 119 -13 white_concrete
execute if block 100 79 0 stone run setblock 117 120 -13 white_concrete
execute if block 100 79 0 stone run setblock 118 116 -13 stone_bricks
execute if block 100 79 0 stone run setblock 118 117 -13 white_concrete
execute if block 100 79 0 stone run setblock 118 118 -13 white_concrete
execute if block 100 79 0 stone run setblock 118 119 -13 white_concrete
execute if block 100 79 0 stone run setblock 118 120 -13 stone_bricks
execute if block 100 79 0 stone run setblock 116 118 -13 black_concrete
execute if block 100 79 0 stone run setblock 116 118 -13 black_concrete
execute if block 100 79 0 stone run setblock 116 119 -13 black_concrete
execute if block 100 79 0 stone run setblock 117 118 -13 black_concrete
execute if block 100 79 0 stone run setblock 116 120 -13 black_concrete
execute if block 100 79 0 stone run setblock 118 118 -13 black_concrete
execute if block 100 79 0 stone run setblock 114 118 -13 sea_lantern
execute if block 100 79 0 stone run setblock 118 118 -13 sea_lantern
execute if block 100 79 0 stone run setblock 114 116 -7 stone_bricks
execute if block 100 79 0 stone run setblock 114 117 -7 white_concrete
execute if block 100 79 0 stone run setblock 114 118 -7 white_concrete
execute if block 100 79 0 stone run setblock 114 119 -7 white_concrete
execute if block 100 79 0 stone run setblock 114 120 -7 stone_bricks
execute if block 100 79 0 stone run setblock 115 116 -7 white_concrete
execute if block 100 79 0 stone run setblock 115 117 -7 white_concrete
execute if block 100 79 0 stone run setblock 115 118 -7 white_concrete
execute if block 100 79 0 stone run setblock 115 119 -7 white_concrete
execute if block 100 79 0 stone run setblock 115 120 -7 white_concrete
execute if block 100 79 0 stone run setblock 116 116 -7 white_concrete
execute if block 100 79 0 stone run setblock 116 117 -7 white_concrete
execute if block 100 79 0 stone run setblock 116 118 -7 white_concrete
execute if block 100 79 0 stone run setblock 116 119 -7 white_concrete
execute if block 100 79 0 stone run scoreboard players add #bstep bce_sys 1
