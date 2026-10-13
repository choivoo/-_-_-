# zone 1 interior 4
scoreboard players set _bzone bce_sys 1
function build/ready_z1
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 2
execute if score _bready bce_sys matches 1 run setblock 115 116 -11 spruce_planks
execute if score _bready bce_sys matches 1 run fill 115 117 -11 115 119 -11 air
execute if score _bready bce_sys matches 1 run setblock 116 117 -11 spruce_planks
execute if score _bready bce_sys matches 1 run fill 116 118 -11 116 120 -11 air
execute if score _bready bce_sys matches 1 run setblock 117 118 -11 spruce_planks
execute if score _bready bce_sys matches 1 run fill 117 119 -11 117 121 -11 air
execute if score _bready bce_sys matches 1 run setblock 117 119 -10 spruce_planks
execute if score _bready bce_sys matches 1 run fill 117 120 -10 117 122 -10 air
execute if score _bready bce_sys matches 1 run fill 114 121 -12 118 121 -8 air
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
