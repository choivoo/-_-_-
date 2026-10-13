# zone 1 shell 1
scoreboard players set _bzone bce_sys 1
function build/ready_z1
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 1
execute if score _bready bce_sys matches 1 run setblock 100 104 -6 lantern
execute if score _bready bce_sys matches 1 run fill 100 100 6 100 103 6 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 100 104 6 lantern
execute if score _bready bce_sys matches 1 run fill 71 99 -27 83 99 -17 cobblestone
execute if score _bready bce_sys matches 1 run fill 72 100 -26 82 104 -18 spruce_planks
execute if score _bready bce_sys matches 1 run fill 72 100 -26 72 104 -26 spruce_log
execute if score _bready bce_sys matches 1 run fill 72 100 -18 72 104 -18 spruce_log
execute if score _bready bce_sys matches 1 run fill 82 100 -26 82 104 -26 spruce_log
execute if score _bready bce_sys matches 1 run fill 82 100 -18 82 104 -18 spruce_log
execute if score _bready bce_sys matches 1 run fill 72 104 -26 82 104 -26 spruce_log ["pillar_axis"="x"]
execute if score _bready bce_sys matches 1 run fill 72 104 -18 82 104 -18 spruce_log ["pillar_axis"="x"]
execute if score _bready bce_sys matches 1 run fill 72 104 -26 72 104 -18 spruce_log ["pillar_axis"="z"]
execute if score _bready bce_sys matches 1 run fill 82 104 -26 82 104 -18 spruce_log ["pillar_axis"="z"]
execute if score _bready bce_sys matches 1 run fill 71 105 -26 83 105 -26 spruce_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 71 105 -18 83 105 -18 spruce_stairs ["weirdo_direction"=3,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 72 105 -25 72 105 -19 spruce_planks
execute if score _bready bce_sys matches 1 run fill 82 105 -25 82 105 -19 spruce_planks
execute if score _bready bce_sys matches 1 run fill 71 106 -25 83 106 -25 spruce_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 71 106 -19 83 106 -19 spruce_stairs ["weirdo_direction"=3,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 72 106 -24 72 106 -20 spruce_planks
execute if score _bready bce_sys matches 1 run fill 82 106 -24 82 106 -20 spruce_planks
execute if score _bready bce_sys matches 1 run fill 71 107 -24 83 107 -24 spruce_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 71 107 -20 83 107 -20 spruce_stairs ["weirdo_direction"=3,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 72 107 -23 72 107 -21 spruce_planks
execute if score _bready bce_sys matches 1 run fill 82 107 -23 82 107 -21 spruce_planks
execute if score _bready bce_sys matches 1 run fill 71 108 -23 83 108 -23 spruce_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 71 108 -21 83 108 -21 spruce_stairs ["weirdo_direction"=3,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 72 108 -22 72 108 -22 spruce_planks
execute if score _bready bce_sys matches 1 run fill 82 108 -22 82 108 -22 spruce_planks
execute if score _bready bce_sys matches 1 run fill 71 109 -22 83 109 -22 spruce_planks
execute if score _bready bce_sys matches 1 run fill 85 99 -26 95 99 -17 cobblestone
execute if score _bready bce_sys matches 1 run fill 86 100 -25 94 109 -18 spruce_planks
execute if score _bready bce_sys matches 1 run fill 86 100 -25 86 109 -25 spruce_log
execute if score _bready bce_sys matches 1 run fill 86 100 -18 86 109 -18 spruce_log
execute if score _bready bce_sys matches 1 run fill 94 100 -25 94 109 -25 spruce_log
execute if score _bready bce_sys matches 1 run fill 94 100 -18 94 109 -18 spruce_log
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
