# zone 1 detail 5
scoreboard players set #bzone bce_sys 1
execute unless block 100 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 100 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 100 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 100 79 0 stone run scoreboard players set #bstage bce_sys 3
execute if block 100 79 0 stone run setblock 119 116 -8 stone_bricks
execute if block 100 79 0 stone run setblock 119 117 -8 white_concrete
execute if block 100 79 0 stone run setblock 119 118 -8 white_concrete
execute if block 100 79 0 stone run setblock 119 119 -8 white_concrete
execute if block 100 79 0 stone run setblock 119 120 -8 stone_bricks
execute if block 100 79 0 stone run setblock 119 118 -10 black_concrete
execute if block 100 79 0 stone run setblock 119 118 -10 black_concrete
execute if block 100 79 0 stone run setblock 119 119 -10 black_concrete
execute if block 100 79 0 stone run setblock 119 118 -9 black_concrete
execute if block 100 79 0 stone run setblock 119 120 -10 black_concrete
execute if block 100 79 0 stone run setblock 119 118 -8 black_concrete
execute if block 100 79 0 stone run setblock 119 118 -12 sea_lantern
execute if block 100 79 0 stone run setblock 119 118 -8 sea_lantern
execute if block 100 79 0 stone run fill 116 120 -10 116 120 -10 spruce_log
execute if block 100 79 0 stone run fill 134 101 -34 134 107 -34 spruce_log
execute if block 100 79 0 stone run fill 134 105 -33 134 105 -32 spruce_log ["pillar_axis"="z"]
execute if block 100 79 0 stone run fill 132 104 -34 133 104 -34 spruce_log ["pillar_axis"="x"]
execute if block 100 79 0 stone run fill 115 101 -33 115 107 -33 spruce_log
execute if block 100 79 0 stone run fill 113 106 -33 114 106 -33 spruce_log ["pillar_axis"="x"]
execute if block 100 79 0 stone run fill 115 104 -32 115 104 -31 spruce_log ["pillar_axis"="z"]
execute if block 100 79 0 stone run fill 113 104 -33 114 104 -33 spruce_log ["pillar_axis"="x"]
execute if block 100 79 0 stone run fill 119 102 -37 119 108 -37 spruce_log
execute if block 100 79 0 stone run fill 119 105 -39 119 105 -38 spruce_log ["pillar_axis"="z"]
execute if block 100 79 0 stone run fill 120 105 -37 121 105 -37 spruce_log ["pillar_axis"="x"]
execute if block 100 79 0 stone run fill 111 101 -34 111 107 -34 spruce_log
execute if block 100 79 0 stone run fill 111 106 -36 111 106 -35 spruce_log ["pillar_axis"="z"]
execute if block 100 79 0 stone run fill 111 105 -36 111 105 -35 spruce_log ["pillar_axis"="z"]
execute if block 100 79 0 stone run fill 75 102 -35 75 108 -35 spruce_log
execute if block 100 79 0 stone run fill 73 106 -35 74 106 -35 spruce_log ["pillar_axis"="x"]
execute if block 100 79 0 stone run fill 73 106 -35 74 106 -35 spruce_log ["pillar_axis"="x"]
execute if block 100 79 0 stone run fill 136 101 -33 136 108 -33 spruce_log
execute if block 100 79 0 stone run fill 136 106 -35 136 106 -34 spruce_log ["pillar_axis"="z"]
execute if block 100 79 0 stone run fill 136 106 -35 136 106 -34 spruce_log ["pillar_axis"="z"]
execute if block 100 79 0 stone run fill 93 101 -35 93 108 -35 spruce_log
execute if block 100 79 0 stone run fill 93 106 -37 93 106 -36 spruce_log ["pillar_axis"="z"]
execute if block 100 79 0 stone run fill 94 106 -35 95 106 -35 spruce_log ["pillar_axis"="x"]
execute if block 100 79 0 stone run scoreboard players add #bstep bce_sys 1
