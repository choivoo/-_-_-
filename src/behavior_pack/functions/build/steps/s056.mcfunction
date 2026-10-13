# zone 1 ground 6
scoreboard players set _bzone bce_sys 1
function build/ready_z1
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 0
execute if score _bready bce_sys matches 1 run fill 95 100 -36 96 100 -36 stone
execute if score _bready bce_sys matches 1 run fill 95 101 -36 96 101 -36 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 97 100 -36 97 101 -36 stone
execute if score _bready bce_sys matches 1 run fill 97 102 -36 97 102 -36 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 98 100 -36 98 100 -36 stone
execute if score _bready bce_sys matches 1 run fill 98 101 -36 98 101 -36 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 99 100 -36 99 101 -36 stone
execute if score _bready bce_sys matches 1 run fill 99 102 -36 99 102 -36 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 100 100 -36 100 100 -36 stone
execute if score _bready bce_sys matches 1 run fill 100 101 -36 100 101 -36 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 101 100 -36 108 100 -36 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 109 100 -36 115 100 -36 stone
execute if score _bready bce_sys matches 1 run fill 109 101 -36 115 101 -36 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 116 100 -36 132 100 -36 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 133 100 -36 133 100 -36 stone
execute if score _bready bce_sys matches 1 run fill 133 101 -36 133 101 -36 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 134 100 -36 135 101 -36 stone
execute if score _bready bce_sys matches 1 run fill 134 102 -36 135 102 -36 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 136 100 -36 139 100 -36 stone
execute if score _bready bce_sys matches 1 run fill 136 101 -36 139 101 -36 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 64 100 -35 71 100 -35 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 72 100 -35 76 100 -35 stone
execute if score _bready bce_sys matches 1 run fill 72 101 -35 76 101 -35 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 77 100 -35 79 100 -35 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 81 100 -35 84 100 -35 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 93 100 -35 95 100 -35 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 96 100 -35 99 100 -35 stone
execute if score _bready bce_sys matches 1 run fill 96 101 -35 99 101 -35 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 100 100 -35 104 100 -35 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 106 100 -35 108 100 -35 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 109 100 -35 113 100 -35 stone
execute if score _bready bce_sys matches 1 run fill 109 101 -35 113 101 -35 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 114 100 -35 121 100 -35 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 127 100 -35 132 100 -35 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 133 100 -35 139 100 -35 stone
execute if score _bready bce_sys matches 1 run fill 133 101 -35 139 101 -35 coarse_dirt
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
