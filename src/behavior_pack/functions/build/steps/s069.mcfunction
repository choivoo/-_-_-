# zone 1 shell 7
scoreboard players set _bzone bce_sys 1
function build/ready_z1
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 1
execute if score _bready bce_sys matches 1 run fill 128 107 20 128 107 21 spruce_planks
execute if score _bready bce_sys matches 1 run fill 119 108 20 129 108 20 spruce_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 119 108 21 129 108 21 spruce_stairs ["weirdo_direction"=3,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 112 99 -14 120 99 -6 cobblestone
execute if score _bready bce_sys matches 1 run fill 113 100 -13 119 122 -7 stone_bricks
execute if score _bready bce_sys matches 1 run fill 113 100 -13 113 122 -13 spruce_log
execute if score _bready bce_sys matches 1 run fill 113 100 -7 113 122 -7 spruce_log
execute if score _bready bce_sys matches 1 run fill 119 100 -13 119 122 -13 spruce_log
execute if score _bready bce_sys matches 1 run fill 119 100 -7 119 122 -7 spruce_log
execute if score _bready bce_sys matches 1 run fill 112 114 -14 120 114 -6 spruce_planks
execute if score _bready bce_sys matches 1 run fill 112 123 -14 120 123 -6 deepslate_bricks
execute if score _bready bce_sys matches 1 run fill 113 124 -14 119 124 -14 spruce_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 113 124 -6 119 124 -6 spruce_stairs ["weirdo_direction"=3,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 112 124 -13 112 124 -7 spruce_stairs ["weirdo_direction"=0,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 120 124 -13 120 124 -7 spruce_stairs ["weirdo_direction"=1,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run setblock 112 124 -14 spruce_planks
execute if score _bready bce_sys matches 1 run setblock 120 124 -14 spruce_planks
execute if score _bready bce_sys matches 1 run setblock 112 124 -6 spruce_planks
execute if score _bready bce_sys matches 1 run setblock 120 124 -6 spruce_planks
execute if score _bready bce_sys matches 1 run fill 114 125 -13 118 125 -13 spruce_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 114 125 -7 118 125 -7 spruce_stairs ["weirdo_direction"=3,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 113 125 -12 113 125 -8 spruce_stairs ["weirdo_direction"=0,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 119 125 -12 119 125 -8 spruce_stairs ["weirdo_direction"=1,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run setblock 113 125 -13 spruce_planks
execute if score _bready bce_sys matches 1 run setblock 119 125 -13 spruce_planks
execute if score _bready bce_sys matches 1 run setblock 113 125 -7 spruce_planks
execute if score _bready bce_sys matches 1 run setblock 119 125 -7 spruce_planks
execute if score _bready bce_sys matches 1 run fill 115 126 -12 117 126 -12 spruce_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 115 126 -8 117 126 -8 spruce_stairs ["weirdo_direction"=3,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 114 126 -11 114 126 -9 spruce_stairs ["weirdo_direction"=0,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 118 126 -11 118 126 -9 spruce_stairs ["weirdo_direction"=1,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run setblock 114 126 -12 spruce_planks
execute if score _bready bce_sys matches 1 run setblock 118 126 -12 spruce_planks
execute if score _bready bce_sys matches 1 run setblock 114 126 -8 spruce_planks
execute if score _bready bce_sys matches 1 run setblock 118 126 -8 spruce_planks
execute if score _bready bce_sys matches 1 run fill 116 127 -11 116 127 -11 spruce_stairs ["weirdo_direction"=2,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
