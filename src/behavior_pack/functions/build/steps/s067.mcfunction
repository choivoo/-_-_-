# zone 1 shell 5
scoreboard players set _bzone bce_sys 1
function build/ready_z1
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 1
execute if score _bready bce_sys matches 1 run fill 86 105 25 94 105 25 spruce_log ["pillar_axis"="x"]
execute if score _bready bce_sys matches 1 run fill 86 105 17 86 105 25 spruce_log ["pillar_axis"="z"]
execute if score _bready bce_sys matches 1 run fill 94 105 17 94 105 25 spruce_log ["pillar_axis"="z"]
execute if score _bready bce_sys matches 1 run fill 86 109 17 94 109 17 spruce_log ["pillar_axis"="x"]
execute if score _bready bce_sys matches 1 run fill 86 109 25 94 109 25 spruce_log ["pillar_axis"="x"]
execute if score _bready bce_sys matches 1 run fill 86 109 17 86 109 25 spruce_log ["pillar_axis"="z"]
execute if score _bready bce_sys matches 1 run fill 94 109 17 94 109 25 spruce_log ["pillar_axis"="z"]
execute if score _bready bce_sys matches 1 run fill 85 110 17 95 110 17 spruce_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 85 110 25 95 110 25 spruce_stairs ["weirdo_direction"=3,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 86 110 18 86 110 24 spruce_planks
execute if score _bready bce_sys matches 1 run fill 94 110 18 94 110 24 spruce_planks
execute if score _bready bce_sys matches 1 run fill 85 111 18 95 111 18 spruce_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 85 111 24 95 111 24 spruce_stairs ["weirdo_direction"=3,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 86 111 19 86 111 23 spruce_planks
execute if score _bready bce_sys matches 1 run fill 94 111 19 94 111 23 spruce_planks
execute if score _bready bce_sys matches 1 run fill 85 112 19 95 112 19 spruce_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 85 112 23 95 112 23 spruce_stairs ["weirdo_direction"=3,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 86 112 20 86 112 22 spruce_planks
execute if score _bready bce_sys matches 1 run fill 94 112 20 94 112 22 spruce_planks
execute if score _bready bce_sys matches 1 run fill 85 113 20 95 113 20 spruce_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 85 113 22 95 113 22 spruce_stairs ["weirdo_direction"=3,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 86 113 21 86 113 21 spruce_planks
execute if score _bready bce_sys matches 1 run fill 94 113 21 94 113 21 spruce_planks
execute if score _bready bce_sys matches 1 run fill 85 114 21 95 114 21 spruce_planks
execute if score _bready bce_sys matches 1 run fill 105 99 16 117 99 26 cobblestone
execute if score _bready bce_sys matches 1 run fill 106 100 17 116 104 25 spruce_planks
execute if score _bready bce_sys matches 1 run fill 106 100 17 106 104 17 spruce_log
execute if score _bready bce_sys matches 1 run fill 106 100 25 106 104 25 spruce_log
execute if score _bready bce_sys matches 1 run fill 116 100 17 116 104 17 spruce_log
execute if score _bready bce_sys matches 1 run fill 116 100 25 116 104 25 spruce_log
execute if score _bready bce_sys matches 1 run fill 106 104 17 116 104 17 spruce_log ["pillar_axis"="x"]
execute if score _bready bce_sys matches 1 run fill 106 104 25 116 104 25 spruce_log ["pillar_axis"="x"]
execute if score _bready bce_sys matches 1 run fill 106 104 17 106 104 25 spruce_log ["pillar_axis"="z"]
execute if score _bready bce_sys matches 1 run fill 116 104 17 116 104 25 spruce_log ["pillar_axis"="z"]
execute if score _bready bce_sys matches 1 run fill 105 105 17 117 105 17 spruce_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 105 105 25 117 105 25 spruce_stairs ["weirdo_direction"=3,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
