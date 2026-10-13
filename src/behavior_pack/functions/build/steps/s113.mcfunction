# zone 2 detail 6
scoreboard players set _bzone bce_sys 2
function build/ready_z2
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 3
execute if score _bready bce_sys matches 1 run fill 171 101 34 171 108 34 spruce_log
execute if score _bready bce_sys matches 1 run fill 169 105 34 170 105 34 spruce_log ["pillar_axis"="x"]
execute if score _bready bce_sys matches 1 run fill 171 105 35 171 105 36 spruce_log ["pillar_axis"="z"]
execute if score _bready bce_sys matches 1 run fill 195 101 39 195 107 39 spruce_log
execute if score _bready bce_sys matches 1 run fill 195 106 40 195 106 41 spruce_log ["pillar_axis"="z"]
execute if score _bready bce_sys matches 1 run fill 195 105 37 195 105 38 spruce_log ["pillar_axis"="z"]
execute if score _bready bce_sys matches 1 run fill 195 106 40 195 106 41 spruce_log ["pillar_axis"="z"]
execute if score _bready bce_sys matches 1 run fill 203 101 33 203 106 33 spruce_log
execute if score _bready bce_sys matches 1 run fill 203 103 34 203 103 35 spruce_log ["pillar_axis"="z"]
execute if score _bready bce_sys matches 1 run fill 203 104 34 203 104 35 spruce_log ["pillar_axis"="z"]
execute if score _bready bce_sys matches 1 run fill 218 100 33 219 101 33 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 169 101 37 170 102 37 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 229 100 30 230 101 30 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 206 101 36 207 102 36 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 197 100 33 198 101 33 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 220 98 29 224 99 29 water
execute if score _bready bce_sys matches 1 run fill 219 98 30 225 99 30 water
execute if score _bready bce_sys matches 1 run fill 218 98 31 226 99 31 water
execute if score _bready bce_sys matches 1 run fill 217 98 32 227 99 32 water
execute if score _bready bce_sys matches 1 run fill 217 98 33 227 99 33 water
execute if score _bready bce_sys matches 1 run fill 217 98 34 227 99 34 water
execute if score _bready bce_sys matches 1 run fill 217 98 35 227 99 35 water
execute if score _bready bce_sys matches 1 run fill 217 98 36 227 99 36 water
execute if score _bready bce_sys matches 1 run fill 218 98 37 226 99 37 water
execute if score _bready bce_sys matches 1 run fill 219 98 38 225 99 38 water
execute if score _bready bce_sys matches 1 run fill 220 98 39 224 99 39 water
execute if score _bready bce_sys matches 1 run fill 220 99 28 224 99 28 gravel
execute if score _bready bce_sys matches 1 run fill 218 99 29 219 99 29 gravel
execute if score _bready bce_sys matches 1 run fill 225 99 29 226 99 29 gravel
execute if score _bready bce_sys matches 1 run fill 217 99 30 218 99 30 gravel
execute if score _bready bce_sys matches 1 run fill 226 99 30 227 99 30 gravel
execute if score _bready bce_sys matches 1 run fill 217 99 31 217 99 31 gravel
execute if score _bready bce_sys matches 1 run fill 227 99 31 227 99 31 gravel
execute if score _bready bce_sys matches 1 run fill 216 99 32 216 99 32 gravel
execute if score _bready bce_sys matches 1 run fill 228 99 32 228 99 32 gravel
execute if score _bready bce_sys matches 1 run fill 216 99 33 216 99 33 gravel
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
