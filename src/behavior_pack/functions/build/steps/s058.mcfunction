# zone 1 ground 8
scoreboard players set _bzone bce_sys 1
function build/ready_z1
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 0
execute if score _bready bce_sys matches 1 run fill 95 101 34 98 101 34 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 99 100 34 105 100 34 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 113 100 34 114 100 34 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 127 100 34 130 100 34 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 137 100 34 139 100 34 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 60 100 35 63 100 35 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 73 100 35 77 100 35 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 79 100 35 84 100 35 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 85 100 35 89 100 35 stone
execute if score _bready bce_sys matches 1 run fill 85 101 35 89 101 35 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 90 100 35 91 100 35 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 92 100 35 99 100 35 stone
execute if score _bready bce_sys matches 1 run fill 92 101 35 99 101 35 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 100 100 35 106 100 35 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 110 100 35 117 100 35 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 127 100 35 137 100 35 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 138 100 35 139 100 35 stone
execute if score _bready bce_sys matches 1 run fill 138 101 35 139 101 35 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 60 100 36 63 100 36 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 73 100 36 84 100 36 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 85 100 36 86 100 36 stone
execute if score _bready bce_sys matches 1 run fill 85 101 36 86 101 36 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 87 100 36 87 101 36 stone
execute if score _bready bce_sys matches 1 run fill 87 102 36 87 102 36 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 88 100 36 93 100 36 stone
execute if score _bready bce_sys matches 1 run fill 88 101 36 93 101 36 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 94 100 36 98 101 36 stone
execute if score _bready bce_sys matches 1 run fill 94 102 36 98 102 36 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 99 100 36 99 100 36 stone
execute if score _bready bce_sys matches 1 run fill 99 101 36 99 101 36 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 100 100 36 112 100 36 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 113 100 36 113 100 36 stone
execute if score _bready bce_sys matches 1 run fill 113 101 36 113 101 36 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 114 100 36 117 100 36 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 127 100 36 139 100 36 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 60 100 37 60 100 37 coarse_dirt
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
