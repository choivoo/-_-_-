# zone 1 ground 7
scoreboard players set _bzone bce_sys 1
function build/ready_z1
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 0
execute if score _bready bce_sys matches 1 run fill 66 100 -34 72 100 -34 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 73 100 -34 74 100 -34 stone
execute if score _bready bce_sys matches 1 run fill 73 101 -34 74 101 -34 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 75 100 -34 76 100 -34 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 94 100 -34 101 100 -34 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 107 100 -34 116 100 -34 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 129 100 -34 136 100 -34 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 137 100 -34 138 100 -34 stone
execute if score _bready bce_sys matches 1 run fill 137 101 -34 138 101 -34 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 139 100 -34 139 100 -34 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 63 100 -33 76 100 -33 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 92 100 -33 96 100 -33 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 100 100 -33 100 100 -33 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 102 100 -33 115 100 -33 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 130 100 -33 139 100 -33 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 68 100 -32 74 100 -32 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 102 100 -32 105 100 -32 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 108 100 -32 109 100 -32 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 131 100 -32 133 100 -32 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 135 100 -32 135 100 -32 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 138 100 -32 139 100 -32 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 94 100 32 104 100 32 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 128 100 32 128 100 32 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 138 100 32 139 100 32 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 60 100 33 61 100 33 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 73 100 33 75 100 33 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 77 100 33 78 100 33 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 85 100 33 90 100 33 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 93 100 33 105 100 33 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 127 100 33 129 100 33 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 131 100 33 131 100 33 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 137 100 33 139 100 33 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 60 100 34 62 100 34 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 73 100 34 74 100 34 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 83 100 34 94 100 34 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 95 100 34 98 100 34 stone
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
