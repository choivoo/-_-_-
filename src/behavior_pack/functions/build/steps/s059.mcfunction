# zone 1 detail 3
scoreboard players set #bzone bce_sys 1
execute unless block 100 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 100 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 100 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 100 79 0 stone run scoreboard players set #bstage bce_sys 3
execute if block 100 79 0 stone run setblock 116 120 -7 white_concrete
execute if block 100 79 0 stone run setblock 117 116 -7 white_concrete
execute if block 100 79 0 stone run setblock 117 117 -7 white_concrete
execute if block 100 79 0 stone run setblock 117 118 -7 white_concrete
execute if block 100 79 0 stone run setblock 117 119 -7 white_concrete
execute if block 100 79 0 stone run setblock 117 120 -7 white_concrete
execute if block 100 79 0 stone run setblock 118 116 -7 stone_bricks
execute if block 100 79 0 stone run setblock 118 117 -7 white_concrete
execute if block 100 79 0 stone run setblock 118 118 -7 white_concrete
execute if block 100 79 0 stone run setblock 118 119 -7 white_concrete
execute if block 100 79 0 stone run setblock 118 120 -7 stone_bricks
execute if block 100 79 0 stone run setblock 116 118 -7 black_concrete
execute if block 100 79 0 stone run setblock 116 118 -7 black_concrete
execute if block 100 79 0 stone run setblock 116 119 -7 black_concrete
execute if block 100 79 0 stone run setblock 117 118 -7 black_concrete
execute if block 100 79 0 stone run setblock 116 120 -7 black_concrete
execute if block 100 79 0 stone run setblock 118 118 -7 black_concrete
execute if block 100 79 0 stone run setblock 114 118 -7 sea_lantern
execute if block 100 79 0 stone run setblock 118 118 -7 sea_lantern
execute if block 100 79 0 stone run setblock 113 116 -12 stone_bricks
execute if block 100 79 0 stone run setblock 113 117 -12 white_concrete
execute if block 100 79 0 stone run setblock 113 118 -12 white_concrete
execute if block 100 79 0 stone run setblock 113 119 -12 white_concrete
execute if block 100 79 0 stone run setblock 113 120 -12 stone_bricks
execute if block 100 79 0 stone run setblock 113 116 -11 white_concrete
execute if block 100 79 0 stone run setblock 113 117 -11 white_concrete
execute if block 100 79 0 stone run setblock 113 118 -11 white_concrete
execute if block 100 79 0 stone run setblock 113 119 -11 white_concrete
execute if block 100 79 0 stone run setblock 113 120 -11 white_concrete
execute if block 100 79 0 stone run setblock 113 116 -10 white_concrete
execute if block 100 79 0 stone run setblock 113 117 -10 white_concrete
execute if block 100 79 0 stone run setblock 113 118 -10 white_concrete
execute if block 100 79 0 stone run setblock 113 119 -10 white_concrete
execute if block 100 79 0 stone run setblock 113 120 -10 white_concrete
execute if block 100 79 0 stone run setblock 113 116 -9 white_concrete
execute if block 100 79 0 stone run setblock 113 117 -9 white_concrete
execute if block 100 79 0 stone run scoreboard players add #bstep bce_sys 1
