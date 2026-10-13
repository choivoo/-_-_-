# zone 0 detail 7
scoreboard players set _bzone bce_sys 0
function build/ready_z0
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 3
execute if score _bready bce_sys matches 1 run fill 18 104 38 19 104 38 spruce_log ["pillar_axis"="x"]
execute if score _bready bce_sys matches 1 run fill 20 105 36 20 105 37 spruce_log ["pillar_axis"="z"]
execute if score _bready bce_sys matches 1 run fill 37 103 39 37 111 39 spruce_log
execute if score _bready bce_sys matches 1 run fill 35 108 39 36 108 39 spruce_log ["pillar_axis"="x"]
execute if score _bready bce_sys matches 1 run fill 35 110 39 36 110 39 spruce_log ["pillar_axis"="x"]
execute if score _bready bce_sys matches 1 run fill 30 103 39 30 110 39 spruce_log
execute if score _bready bce_sys matches 1 run fill 30 109 37 30 109 38 spruce_log ["pillar_axis"="z"]
execute if score _bready bce_sys matches 1 run fill 30 109 40 30 109 41 spruce_log ["pillar_axis"="z"]
execute if score _bready bce_sys matches 1 run fill 31 107 39 32 107 39 spruce_log ["pillar_axis"="x"]
execute if score _bready bce_sys matches 1 run fill 15 102 35 16 103 35 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill -10 100 33 -9 101 33 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 37 103 39 38 104 39 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 23 100 31 24 101 31 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 28 101 36 29 102 36 mossy_cobblestone
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
