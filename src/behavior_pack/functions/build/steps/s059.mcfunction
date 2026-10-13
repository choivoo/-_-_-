# zone 1 ground 9
scoreboard players set _bzone bce_sys 1
function build/ready_z1
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 0
execute if score _bready bce_sys matches 1 run fill 61 100 37 62 100 37 stone
execute if score _bready bce_sys matches 1 run fill 61 101 37 62 101 37 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 63 100 37 67 100 37 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 73 100 37 79 100 37 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 80 100 37 85 100 37 stone
execute if score _bready bce_sys matches 1 run fill 80 101 37 85 101 37 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 86 100 37 88 101 37 stone
execute if score _bready bce_sys matches 1 run fill 86 102 37 88 102 37 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 89 100 37 93 100 37 stone
execute if score _bready bce_sys matches 1 run fill 89 101 37 93 101 37 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 94 100 37 95 101 37 stone
execute if score _bready bce_sys matches 1 run fill 94 102 37 95 102 37 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 96 100 37 99 100 37 stone
execute if score _bready bce_sys matches 1 run fill 96 101 37 99 101 37 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 100 100 37 104 100 37 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 105 100 37 107 100 37 stone
execute if score _bready bce_sys matches 1 run fill 105 101 37 107 101 37 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 108 100 37 108 100 37 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 109 100 37 117 100 37 stone
execute if score _bready bce_sys matches 1 run fill 109 101 37 117 101 37 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 118 100 37 118 100 37 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 120 100 37 120 100 37 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 128 100 37 133 100 37 stone
execute if score _bready bce_sys matches 1 run fill 128 101 37 133 101 37 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 134 100 37 138 100 37 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 139 100 37 139 100 37 stone
execute if score _bready bce_sys matches 1 run fill 139 101 37 139 101 37 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 60 100 38 66 100 38 stone
execute if score _bready bce_sys matches 1 run fill 60 101 38 66 101 38 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 67 100 38 67 100 38 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 73 100 38 77 100 38 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 79 100 38 79 100 38 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 80 100 38 84 100 38 stone
execute if score _bready bce_sys matches 1 run fill 80 101 38 84 101 38 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 85 100 38 85 101 38 stone
execute if score _bready bce_sys matches 1 run fill 85 102 38 85 102 38 coarse_dirt
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
