# zone 1 interior 3
scoreboard players set _bzone bce_sys 1
function build/ready_z1
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 2
execute if score _bready bce_sys matches 1 run fill 114 100 -12 118 121 -8 air
execute if score _bready bce_sys matches 1 run fill 116 100 -7 116 101 -7 air
execute if score _bready bce_sys matches 1 run fill 116 100 -7 116 101 -7 air
execute if score _bready bce_sys matches 1 run fill 116 100 -10 116 120 -10 spruce_log
execute if score _bready bce_sys matches 1 run setblock 115 100 -11 spruce_planks
execute if score _bready bce_sys matches 1 run fill 115 101 -11 115 103 -11 air
execute if score _bready bce_sys matches 1 run setblock 116 101 -11 spruce_planks
execute if score _bready bce_sys matches 1 run fill 116 102 -11 116 104 -11 air
execute if score _bready bce_sys matches 1 run setblock 117 102 -11 spruce_planks
execute if score _bready bce_sys matches 1 run fill 117 103 -11 117 105 -11 air
execute if score _bready bce_sys matches 1 run setblock 117 103 -10 spruce_planks
execute if score _bready bce_sys matches 1 run fill 117 104 -10 117 106 -10 air
execute if score _bready bce_sys matches 1 run setblock 117 104 -9 spruce_planks
execute if score _bready bce_sys matches 1 run fill 117 105 -9 117 107 -9 air
execute if score _bready bce_sys matches 1 run setblock 116 105 -9 spruce_planks
execute if score _bready bce_sys matches 1 run fill 116 106 -9 116 108 -9 air
execute if score _bready bce_sys matches 1 run setblock 115 106 -9 spruce_planks
execute if score _bready bce_sys matches 1 run fill 115 107 -9 115 109 -9 air
execute if score _bready bce_sys matches 1 run setblock 115 107 -10 spruce_planks
execute if score _bready bce_sys matches 1 run fill 115 108 -10 115 110 -10 air
execute if score _bready bce_sys matches 1 run setblock 115 108 -11 spruce_planks
execute if score _bready bce_sys matches 1 run fill 115 109 -11 115 111 -11 air
execute if score _bready bce_sys matches 1 run setblock 116 109 -11 spruce_planks
execute if score _bready bce_sys matches 1 run fill 116 110 -11 116 112 -11 air
execute if score _bready bce_sys matches 1 run setblock 117 110 -11 spruce_planks
execute if score _bready bce_sys matches 1 run fill 117 111 -11 117 113 -11 air
execute if score _bready bce_sys matches 1 run setblock 117 111 -10 spruce_planks
execute if score _bready bce_sys matches 1 run fill 117 112 -10 117 114 -10 air
execute if score _bready bce_sys matches 1 run setblock 117 112 -9 spruce_planks
execute if score _bready bce_sys matches 1 run fill 117 113 -9 117 115 -9 air
execute if score _bready bce_sys matches 1 run setblock 116 113 -9 spruce_planks
execute if score _bready bce_sys matches 1 run fill 116 114 -9 116 116 -9 air
execute if score _bready bce_sys matches 1 run setblock 115 114 -9 spruce_planks
execute if score _bready bce_sys matches 1 run fill 115 115 -9 115 117 -9 air
execute if score _bready bce_sys matches 1 run setblock 115 115 -10 spruce_planks
execute if score _bready bce_sys matches 1 run fill 115 116 -10 115 118 -10 air
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
