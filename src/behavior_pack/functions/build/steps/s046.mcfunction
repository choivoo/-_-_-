# zone 1 shell 4
scoreboard players set #bzone bce_sys 1
execute unless block 100 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 100 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 100 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 100 79 0 stone run scoreboard players set #bstage bce_sys 1
execute if block 100 79 0 stone run fill 117 109 -23 131 109 -23 spruce_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if block 100 79 0 stone run fill 117 109 -22 131 109 -22 spruce_stairs ["weirdo_direction"=3,"upside_down_bit"=false]
execute if block 100 79 0 stone run fill 71 99 16 83 99 26 cobblestone
execute if block 100 79 0 stone run fill 72 100 17 82 104 25 spruce_planks
execute if block 100 79 0 stone run fill 72 100 17 72 104 17 spruce_log
execute if block 100 79 0 stone run fill 72 100 25 72 104 25 spruce_log
execute if block 100 79 0 stone run fill 82 100 17 82 104 17 spruce_log
execute if block 100 79 0 stone run fill 82 100 25 82 104 25 spruce_log
execute if block 100 79 0 stone run fill 72 104 17 82 104 17 spruce_log ["pillar_axis"="x"]
execute if block 100 79 0 stone run fill 72 104 25 82 104 25 spruce_log ["pillar_axis"="x"]
execute if block 100 79 0 stone run fill 72 104 17 72 104 25 spruce_log ["pillar_axis"="z"]
execute if block 100 79 0 stone run fill 82 104 17 82 104 25 spruce_log ["pillar_axis"="z"]
execute if block 100 79 0 stone run fill 71 105 17 83 105 17 spruce_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if block 100 79 0 stone run fill 71 105 25 83 105 25 spruce_stairs ["weirdo_direction"=3,"upside_down_bit"=false]
execute if block 100 79 0 stone run fill 72 105 18 72 105 24 spruce_planks
execute if block 100 79 0 stone run fill 82 105 18 82 105 24 spruce_planks
execute if block 100 79 0 stone run fill 71 106 18 83 106 18 spruce_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if block 100 79 0 stone run fill 71 106 24 83 106 24 spruce_stairs ["weirdo_direction"=3,"upside_down_bit"=false]
execute if block 100 79 0 stone run fill 72 106 19 72 106 23 spruce_planks
execute if block 100 79 0 stone run fill 82 106 19 82 106 23 spruce_planks
execute if block 100 79 0 stone run fill 71 107 19 83 107 19 spruce_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if block 100 79 0 stone run fill 71 107 23 83 107 23 spruce_stairs ["weirdo_direction"=3,"upside_down_bit"=false]
execute if block 100 79 0 stone run fill 72 107 20 72 107 22 spruce_planks
execute if block 100 79 0 stone run fill 82 107 20 82 107 22 spruce_planks
execute if block 100 79 0 stone run fill 71 108 20 83 108 20 spruce_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if block 100 79 0 stone run fill 71 108 22 83 108 22 spruce_stairs ["weirdo_direction"=3,"upside_down_bit"=false]
execute if block 100 79 0 stone run fill 72 108 21 72 108 21 spruce_planks
execute if block 100 79 0 stone run fill 82 108 21 82 108 21 spruce_planks
execute if block 100 79 0 stone run fill 71 109 21 83 109 21 spruce_planks
execute if block 100 79 0 stone run fill 85 99 16 95 99 26 cobblestone
execute if block 100 79 0 stone run fill 86 100 17 94 109 25 spruce_planks
execute if block 100 79 0 stone run fill 86 100 17 86 109 17 spruce_log
execute if block 100 79 0 stone run fill 86 100 25 86 109 25 spruce_log
execute if block 100 79 0 stone run fill 94 100 17 94 109 17 spruce_log
execute if block 100 79 0 stone run fill 94 100 25 94 109 25 spruce_log
execute if block 100 79 0 stone run fill 86 105 17 94 105 17 spruce_log ["pillar_axis"="x"]
execute if block 100 79 0 stone run scoreboard players add #bstep bce_sys 1
