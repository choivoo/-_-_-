# zone 1 detail 4
scoreboard players set #bzone bce_sys 1
execute unless block 100 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 100 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 100 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 100 79 0 stone run scoreboard players set #bstage bce_sys 3
execute if block 100 79 0 stone run setblock 113 118 -9 white_concrete
execute if block 100 79 0 stone run setblock 113 119 -9 white_concrete
execute if block 100 79 0 stone run setblock 113 120 -9 white_concrete
execute if block 100 79 0 stone run setblock 113 116 -8 stone_bricks
execute if block 100 79 0 stone run setblock 113 117 -8 white_concrete
execute if block 100 79 0 stone run setblock 113 118 -8 white_concrete
execute if block 100 79 0 stone run setblock 113 119 -8 white_concrete
execute if block 100 79 0 stone run setblock 113 120 -8 stone_bricks
execute if block 100 79 0 stone run setblock 113 118 -10 black_concrete
execute if block 100 79 0 stone run setblock 113 118 -10 black_concrete
execute if block 100 79 0 stone run setblock 113 119 -10 black_concrete
execute if block 100 79 0 stone run setblock 113 118 -9 black_concrete
execute if block 100 79 0 stone run setblock 113 120 -10 black_concrete
execute if block 100 79 0 stone run setblock 113 118 -8 black_concrete
execute if block 100 79 0 stone run setblock 113 118 -12 sea_lantern
execute if block 100 79 0 stone run setblock 113 118 -8 sea_lantern
execute if block 100 79 0 stone run setblock 119 116 -12 stone_bricks
execute if block 100 79 0 stone run setblock 119 117 -12 white_concrete
execute if block 100 79 0 stone run setblock 119 118 -12 white_concrete
execute if block 100 79 0 stone run setblock 119 119 -12 white_concrete
execute if block 100 79 0 stone run setblock 119 120 -12 stone_bricks
execute if block 100 79 0 stone run setblock 119 116 -11 white_concrete
execute if block 100 79 0 stone run setblock 119 117 -11 white_concrete
execute if block 100 79 0 stone run setblock 119 118 -11 white_concrete
execute if block 100 79 0 stone run setblock 119 119 -11 white_concrete
execute if block 100 79 0 stone run setblock 119 120 -11 white_concrete
execute if block 100 79 0 stone run setblock 119 116 -10 white_concrete
execute if block 100 79 0 stone run setblock 119 117 -10 white_concrete
execute if block 100 79 0 stone run setblock 119 118 -10 white_concrete
execute if block 100 79 0 stone run setblock 119 119 -10 white_concrete
execute if block 100 79 0 stone run setblock 119 120 -10 white_concrete
execute if block 100 79 0 stone run setblock 119 116 -9 white_concrete
execute if block 100 79 0 stone run setblock 119 117 -9 white_concrete
execute if block 100 79 0 stone run setblock 119 118 -9 white_concrete
execute if block 100 79 0 stone run setblock 119 119 -9 white_concrete
execute if block 100 79 0 stone run setblock 119 120 -9 white_concrete
execute if block 100 79 0 stone run scoreboard players add #bstep bce_sys 1
