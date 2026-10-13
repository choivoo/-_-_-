# zone 1 detail 6
scoreboard players set _bzone bce_sys 1
function build/ready_z1
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 3
execute if score _bready bce_sys matches 1 run fill 125 101 -36 126 102 -36 cobblestone
execute if score _bready bce_sys matches 1 run fill 130 101 -36 131 102 -36 cobblestone
execute if score _bready bce_sys matches 1 run fill 104 102 -38 105 103 -38 cobblestone
execute if score _bready bce_sys matches 1 run fill 124 103 -39 125 104 -39 cobblestone
execute if score _bready bce_sys matches 1 run fill 105 101 -33 106 102 -33 cobblestone
execute if score _bready bce_sys matches 1 run fill 134 101 35 134 108 35 spruce_log
execute if score _bready bce_sys matches 1 run fill 134 105 36 134 105 37 spruce_log ["pillar_axis"="z"]
execute if score _bready bce_sys matches 1 run fill 134 105 36 134 105 37 spruce_log ["pillar_axis"="z"]
execute if score _bready bce_sys matches 1 run fill 77 101 36 77 106 36 spruce_log
execute if score _bready bce_sys matches 1 run fill 75 103 36 76 103 36 spruce_log ["pillar_axis"="x"]
execute if score _bready bce_sys matches 1 run fill 77 104 34 77 104 35 spruce_log ["pillar_axis"="z"]
execute if score _bready bce_sys matches 1 run fill 97 101 33 97 108 33 spruce_log
execute if score _bready bce_sys matches 1 run fill 98 107 33 99 107 33 spruce_log ["pillar_axis"="x"]
execute if score _bready bce_sys matches 1 run fill 95 107 33 96 107 33 spruce_log ["pillar_axis"="x"]
execute if score _bready bce_sys matches 1 run fill 95 107 33 96 107 33 spruce_log ["pillar_axis"="x"]
execute if score _bready bce_sys matches 1 run fill 132 102 37 132 108 37 spruce_log
execute if score _bready bce_sys matches 1 run fill 132 105 38 132 105 39 spruce_log ["pillar_axis"="z"]
execute if score _bready bce_sys matches 1 run fill 132 105 35 132 105 36 spruce_log ["pillar_axis"="z"]
execute if score _bready bce_sys matches 1 run fill 132 106 38 132 106 39 spruce_log ["pillar_axis"="z"]
execute if score _bready bce_sys matches 1 run fill 132 101 35 132 106 35 spruce_log
execute if score _bready bce_sys matches 1 run fill 132 105 36 132 105 37 spruce_log ["pillar_axis"="z"]
execute if score _bready bce_sys matches 1 run fill 132 103 33 132 103 34 spruce_log ["pillar_axis"="z"]
execute if score _bready bce_sys matches 1 run fill 102 101 34 102 106 34 spruce_log
execute if score _bready bce_sys matches 1 run fill 100 104 34 101 104 34 spruce_log ["pillar_axis"="x"]
execute if score _bready bce_sys matches 1 run fill 102 104 32 102 104 33 spruce_log ["pillar_axis"="z"]
execute if score _bready bce_sys matches 1 run fill 100 105 34 101 105 34 spruce_log ["pillar_axis"="x"]
execute if score _bready bce_sys matches 1 run fill 118 100 36 119 101 36 cobblestone
execute if score _bready bce_sys matches 1 run fill 137 101 35 138 102 35 cobblestone
execute if score _bready bce_sys matches 1 run fill 84 100 33 85 101 33 cobblestone
execute if score _bready bce_sys matches 1 run fill 66 100 35 67 101 35 cobblestone
execute if score _bready bce_sys matches 1 run fill 96 103 36 97 104 36 cobblestone
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
