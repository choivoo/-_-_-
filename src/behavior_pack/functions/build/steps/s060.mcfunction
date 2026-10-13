# zone 1 ground 10
scoreboard players set _bzone bce_sys 1
function build/ready_z1
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 0
execute if score _bready bce_sys matches 1 run fill 86 100 38 88 102 38 stone
execute if score _bready bce_sys matches 1 run fill 86 103 38 88 103 38 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 89 100 38 95 101 38 stone
execute if score _bready bce_sys matches 1 run fill 89 102 38 95 102 38 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 96 100 38 96 100 38 stone
execute if score _bready bce_sys matches 1 run fill 96 101 38 96 101 38 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 97 100 38 100 100 38 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 101 100 38 110 100 38 stone
execute if score _bready bce_sys matches 1 run fill 101 101 38 110 101 38 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 111 100 38 114 101 38 stone
execute if score _bready bce_sys matches 1 run fill 111 102 38 114 102 38 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 115 100 38 115 100 38 stone
execute if score _bready bce_sys matches 1 run fill 115 101 38 115 101 38 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 116 100 38 118 100 38 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 127 100 38 127 100 38 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 128 100 38 133 100 38 stone
execute if score _bready bce_sys matches 1 run fill 128 101 38 133 101 38 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 134 100 38 139 100 38 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 60 100 39 64 100 39 stone
execute if score _bready bce_sys matches 1 run fill 60 101 39 64 101 39 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 65 100 39 67 100 39 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 72 100 39 75 100 39 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 79 100 39 79 100 39 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 80 100 39 84 100 39 stone
execute if score _bready bce_sys matches 1 run fill 80 101 39 84 101 39 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 85 100 39 85 101 39 stone
execute if score _bready bce_sys matches 1 run fill 85 102 39 85 102 39 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 86 100 39 88 102 39 stone
execute if score _bready bce_sys matches 1 run fill 86 103 39 88 103 39 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 89 100 39 89 101 39 stone
execute if score _bready bce_sys matches 1 run fill 89 102 39 89 102 39 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 90 100 39 93 100 39 stone
execute if score _bready bce_sys matches 1 run fill 90 101 39 93 101 39 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 94 100 39 94 101 39 stone
execute if score _bready bce_sys matches 1 run fill 94 102 39 94 102 39 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 95 100 39 95 100 39 stone
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
