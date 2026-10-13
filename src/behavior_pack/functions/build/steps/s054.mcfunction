# zone 1 ground 4
scoreboard players set _bzone bce_sys 1
function build/ready_z1
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 0
execute if score _bready bce_sys matches 1 run fill 72 100 -38 74 100 -38 stone
execute if score _bready bce_sys matches 1 run fill 72 101 -38 74 101 -38 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 75 100 -38 76 101 -38 stone
execute if score _bready bce_sys matches 1 run fill 75 102 -38 76 102 -38 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 77 100 -38 79 102 -38 stone
execute if score _bready bce_sys matches 1 run fill 77 103 -38 79 103 -38 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 80 100 -38 80 101 -38 stone
execute if score _bready bce_sys matches 1 run fill 80 102 -38 80 102 -38 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 81 100 -38 81 100 -38 stone
execute if score _bready bce_sys matches 1 run fill 81 101 -38 81 101 -38 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 82 100 -38 87 100 -38 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 91 100 -38 91 100 -38 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 92 100 -38 95 100 -38 stone
execute if score _bready bce_sys matches 1 run fill 92 101 -38 95 101 -38 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 96 100 -38 96 101 -38 stone
execute if score _bready bce_sys matches 1 run fill 96 102 -38 96 102 -38 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 97 100 -38 99 102 -38 stone
execute if score _bready bce_sys matches 1 run fill 97 103 -38 99 103 -38 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 100 100 -38 100 101 -38 stone
execute if score _bready bce_sys matches 1 run fill 100 102 -38 100 102 -38 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 101 100 -38 106 100 -38 stone
execute if score _bready bce_sys matches 1 run fill 101 101 -38 106 101 -38 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 107 100 -38 108 101 -38 stone
execute if score _bready bce_sys matches 1 run fill 107 102 -38 108 102 -38 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 109 100 -38 114 100 -38 stone
execute if score _bready bce_sys matches 1 run fill 109 101 -38 114 101 -38 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 115 100 -38 116 101 -38 stone
execute if score _bready bce_sys matches 1 run fill 115 102 -38 116 102 -38 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 117 100 -38 118 100 -38 stone
execute if score _bready bce_sys matches 1 run fill 117 101 -38 118 101 -38 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 119 100 -38 121 100 -38 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 122 100 -38 122 100 -38 stone
execute if score _bready bce_sys matches 1 run fill 122 101 -38 122 101 -38 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 123 100 -38 124 101 -38 stone
execute if score _bready bce_sys matches 1 run fill 123 102 -38 124 102 -38 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 125 100 -38 126 100 -38 stone
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
