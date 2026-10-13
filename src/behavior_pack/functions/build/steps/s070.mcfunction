# zone 1 shell 8
scoreboard players set _bzone bce_sys 1
function build/ready_z1
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 1
execute if score _bready bce_sys matches 1 run fill 116 127 -9 116 127 -9 spruce_stairs ["weirdo_direction"=3,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 115 127 -10 115 127 -10 spruce_stairs ["weirdo_direction"=0,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 117 127 -10 117 127 -10 spruce_stairs ["weirdo_direction"=1,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run setblock 115 127 -11 spruce_planks
execute if score _bready bce_sys matches 1 run setblock 117 127 -11 spruce_planks
execute if score _bready bce_sys matches 1 run setblock 115 127 -9 spruce_planks
execute if score _bready bce_sys matches 1 run setblock 117 127 -9 spruce_planks
execute if score _bready bce_sys matches 1 run fill 116 128 -10 116 128 -10 spruce_planks
execute if score _bready bce_sys matches 1 run fill 116 128 -10 116 131 -10 end_rod
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
