# zone 1 shell 6
scoreboard players set _bzone bce_sys 1
function build/ready_z1
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 1
execute if score _bready bce_sys matches 1 run fill 106 105 18 106 105 24 spruce_planks
execute if score _bready bce_sys matches 1 run fill 116 105 18 116 105 24 spruce_planks
execute if score _bready bce_sys matches 1 run fill 105 106 18 117 106 18 spruce_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 105 106 24 117 106 24 spruce_stairs ["weirdo_direction"=3,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 106 106 19 106 106 23 spruce_planks
execute if score _bready bce_sys matches 1 run fill 116 106 19 116 106 23 spruce_planks
execute if score _bready bce_sys matches 1 run fill 105 107 19 117 107 19 spruce_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 105 107 23 117 107 23 spruce_stairs ["weirdo_direction"=3,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 106 107 20 106 107 22 spruce_planks
execute if score _bready bce_sys matches 1 run fill 116 107 20 116 107 22 spruce_planks
execute if score _bready bce_sys matches 1 run fill 105 108 20 117 108 20 spruce_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 105 108 22 117 108 22 spruce_stairs ["weirdo_direction"=3,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 106 108 21 106 108 21 spruce_planks
execute if score _bready bce_sys matches 1 run fill 116 108 21 116 108 21 spruce_planks
execute if score _bready bce_sys matches 1 run fill 105 109 21 117 109 21 spruce_planks
execute if score _bready bce_sys matches 1 run fill 119 99 16 129 99 25 cobblestone
execute if score _bready bce_sys matches 1 run fill 120 100 17 128 104 24 spruce_planks
execute if score _bready bce_sys matches 1 run fill 120 100 17 120 104 17 spruce_log
execute if score _bready bce_sys matches 1 run fill 120 100 24 120 104 24 spruce_log
execute if score _bready bce_sys matches 1 run fill 128 100 17 128 104 17 spruce_log
execute if score _bready bce_sys matches 1 run fill 128 100 24 128 104 24 spruce_log
execute if score _bready bce_sys matches 1 run fill 120 104 17 128 104 17 spruce_log ["pillar_axis"="x"]
execute if score _bready bce_sys matches 1 run fill 120 104 24 128 104 24 spruce_log ["pillar_axis"="x"]
execute if score _bready bce_sys matches 1 run fill 120 104 17 120 104 24 spruce_log ["pillar_axis"="z"]
execute if score _bready bce_sys matches 1 run fill 128 104 17 128 104 24 spruce_log ["pillar_axis"="z"]
execute if score _bready bce_sys matches 1 run fill 119 105 17 129 105 17 spruce_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 119 105 24 129 105 24 spruce_stairs ["weirdo_direction"=3,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 120 105 18 120 105 23 spruce_planks
execute if score _bready bce_sys matches 1 run fill 128 105 18 128 105 23 spruce_planks
execute if score _bready bce_sys matches 1 run fill 119 106 18 129 106 18 spruce_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 119 106 23 129 106 23 spruce_stairs ["weirdo_direction"=3,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 120 106 19 120 106 22 spruce_planks
execute if score _bready bce_sys matches 1 run fill 128 106 19 128 106 22 spruce_planks
execute if score _bready bce_sys matches 1 run fill 119 107 19 129 107 19 spruce_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 119 107 22 129 107 22 spruce_stairs ["weirdo_direction"=3,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 120 107 20 120 107 21 spruce_planks
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
