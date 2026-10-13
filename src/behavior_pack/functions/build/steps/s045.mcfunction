# zone 1 shell 3
scoreboard players set #bzone bce_sys 1
execute unless block 100 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 100 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 100 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 100 79 0 stone run scoreboard players set #bstage bce_sys 1
execute if block 100 79 0 stone run fill 105 106 -24 115 106 -24 spruce_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if block 100 79 0 stone run fill 105 106 -19 115 106 -19 spruce_stairs ["weirdo_direction"=3,"upside_down_bit"=false]
execute if block 100 79 0 stone run fill 106 106 -23 106 106 -20 spruce_planks
execute if block 100 79 0 stone run fill 114 106 -23 114 106 -20 spruce_planks
execute if block 100 79 0 stone run fill 105 107 -23 115 107 -23 spruce_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if block 100 79 0 stone run fill 105 107 -20 115 107 -20 spruce_stairs ["weirdo_direction"=3,"upside_down_bit"=false]
execute if block 100 79 0 stone run fill 106 107 -22 106 107 -21 spruce_planks
execute if block 100 79 0 stone run fill 114 107 -22 114 107 -21 spruce_planks
execute if block 100 79 0 stone run fill 105 108 -22 115 108 -22 spruce_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if block 100 79 0 stone run fill 105 108 -21 115 108 -21 spruce_stairs ["weirdo_direction"=3,"upside_down_bit"=false]
execute if block 100 79 0 stone run fill 117 99 -28 131 99 -17 cobblestone
execute if block 100 79 0 stone run fill 118 100 -27 130 104 -18 spruce_planks
execute if block 100 79 0 stone run fill 118 100 -27 118 104 -27 spruce_log
execute if block 100 79 0 stone run fill 118 100 -18 118 104 -18 spruce_log
execute if block 100 79 0 stone run fill 130 100 -27 130 104 -27 spruce_log
execute if block 100 79 0 stone run fill 130 100 -18 130 104 -18 spruce_log
execute if block 100 79 0 stone run fill 118 104 -27 130 104 -27 spruce_log ["pillar_axis"="x"]
execute if block 100 79 0 stone run fill 118 104 -18 130 104 -18 spruce_log ["pillar_axis"="x"]
execute if block 100 79 0 stone run fill 118 104 -27 118 104 -18 spruce_log ["pillar_axis"="z"]
execute if block 100 79 0 stone run fill 130 104 -27 130 104 -18 spruce_log ["pillar_axis"="z"]
execute if block 100 79 0 stone run fill 117 105 -27 131 105 -27 spruce_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if block 100 79 0 stone run fill 117 105 -18 131 105 -18 spruce_stairs ["weirdo_direction"=3,"upside_down_bit"=false]
execute if block 100 79 0 stone run fill 118 105 -26 118 105 -19 spruce_planks
execute if block 100 79 0 stone run fill 130 105 -26 130 105 -19 spruce_planks
execute if block 100 79 0 stone run fill 117 106 -26 131 106 -26 spruce_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if block 100 79 0 stone run fill 117 106 -19 131 106 -19 spruce_stairs ["weirdo_direction"=3,"upside_down_bit"=false]
execute if block 100 79 0 stone run fill 118 106 -25 118 106 -20 spruce_planks
execute if block 100 79 0 stone run fill 130 106 -25 130 106 -20 spruce_planks
execute if block 100 79 0 stone run fill 117 107 -25 131 107 -25 spruce_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if block 100 79 0 stone run fill 117 107 -20 131 107 -20 spruce_stairs ["weirdo_direction"=3,"upside_down_bit"=false]
execute if block 100 79 0 stone run fill 118 107 -24 118 107 -21 spruce_planks
execute if block 100 79 0 stone run fill 130 107 -24 130 107 -21 spruce_planks
execute if block 100 79 0 stone run fill 117 108 -24 131 108 -24 spruce_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if block 100 79 0 stone run fill 117 108 -21 131 108 -21 spruce_stairs ["weirdo_direction"=3,"upside_down_bit"=false]
execute if block 100 79 0 stone run fill 118 108 -23 118 108 -22 spruce_planks
execute if block 100 79 0 stone run fill 130 108 -23 130 108 -22 spruce_planks
execute if block 100 79 0 stone run scoreboard players add #bstep bce_sys 1
