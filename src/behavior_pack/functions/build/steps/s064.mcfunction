# zone 1 shell 2
scoreboard players set _bzone bce_sys 1
function build/ready_z1
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 1
execute if score _bready bce_sys matches 1 run fill 86 105 -25 94 105 -25 spruce_log ["pillar_axis"="x"]
execute if score _bready bce_sys matches 1 run fill 86 105 -18 94 105 -18 spruce_log ["pillar_axis"="x"]
execute if score _bready bce_sys matches 1 run fill 86 105 -25 86 105 -18 spruce_log ["pillar_axis"="z"]
execute if score _bready bce_sys matches 1 run fill 94 105 -25 94 105 -18 spruce_log ["pillar_axis"="z"]
execute if score _bready bce_sys matches 1 run fill 86 109 -25 94 109 -25 spruce_log ["pillar_axis"="x"]
execute if score _bready bce_sys matches 1 run fill 86 109 -18 94 109 -18 spruce_log ["pillar_axis"="x"]
execute if score _bready bce_sys matches 1 run fill 86 109 -25 86 109 -18 spruce_log ["pillar_axis"="z"]
execute if score _bready bce_sys matches 1 run fill 94 109 -25 94 109 -18 spruce_log ["pillar_axis"="z"]
execute if score _bready bce_sys matches 1 run fill 85 110 -25 95 110 -25 spruce_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 85 110 -18 95 110 -18 spruce_stairs ["weirdo_direction"=3,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 86 110 -24 86 110 -19 spruce_planks
execute if score _bready bce_sys matches 1 run fill 94 110 -24 94 110 -19 spruce_planks
execute if score _bready bce_sys matches 1 run fill 85 111 -24 95 111 -24 spruce_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 85 111 -19 95 111 -19 spruce_stairs ["weirdo_direction"=3,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 86 111 -23 86 111 -20 spruce_planks
execute if score _bready bce_sys matches 1 run fill 94 111 -23 94 111 -20 spruce_planks
execute if score _bready bce_sys matches 1 run fill 85 112 -23 95 112 -23 spruce_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 85 112 -20 95 112 -20 spruce_stairs ["weirdo_direction"=3,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 86 112 -22 86 112 -21 spruce_planks
execute if score _bready bce_sys matches 1 run fill 94 112 -22 94 112 -21 spruce_planks
execute if score _bready bce_sys matches 1 run fill 85 113 -22 95 113 -22 spruce_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 85 113 -21 95 113 -21 spruce_stairs ["weirdo_direction"=3,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 105 99 -26 115 99 -17 cobblestone
execute if score _bready bce_sys matches 1 run fill 106 100 -25 114 104 -18 spruce_planks
execute if score _bready bce_sys matches 1 run fill 106 100 -25 106 104 -25 spruce_log
execute if score _bready bce_sys matches 1 run fill 106 100 -18 106 104 -18 spruce_log
execute if score _bready bce_sys matches 1 run fill 114 100 -25 114 104 -25 spruce_log
execute if score _bready bce_sys matches 1 run fill 114 100 -18 114 104 -18 spruce_log
execute if score _bready bce_sys matches 1 run fill 106 104 -25 114 104 -25 spruce_log ["pillar_axis"="x"]
execute if score _bready bce_sys matches 1 run fill 106 104 -18 114 104 -18 spruce_log ["pillar_axis"="x"]
execute if score _bready bce_sys matches 1 run fill 106 104 -25 106 104 -18 spruce_log ["pillar_axis"="z"]
execute if score _bready bce_sys matches 1 run fill 114 104 -25 114 104 -18 spruce_log ["pillar_axis"="z"]
execute if score _bready bce_sys matches 1 run fill 105 105 -25 115 105 -25 spruce_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 105 105 -18 115 105 -18 spruce_stairs ["weirdo_direction"=3,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 106 105 -24 106 105 -19 spruce_planks
execute if score _bready bce_sys matches 1 run fill 114 105 -24 114 105 -19 spruce_planks
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
