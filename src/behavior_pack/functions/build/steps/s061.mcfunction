# zone 1 ground 11
scoreboard players set _bzone bce_sys 1
function build/ready_z1
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 0
execute if score _bready bce_sys matches 1 run fill 95 101 39 95 101 39 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 96 100 39 99 100 39 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 100 100 39 101 100 39 stone
execute if score _bready bce_sys matches 1 run fill 100 101 39 101 101 39 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 102 100 39 102 101 39 stone
execute if score _bready bce_sys matches 1 run fill 102 102 39 102 102 39 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 103 100 39 105 100 39 stone
execute if score _bready bce_sys matches 1 run fill 103 101 39 105 101 39 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 106 100 39 107 100 39 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 108 100 39 110 100 39 stone
execute if score _bready bce_sys matches 1 run fill 108 101 39 110 101 39 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 111 100 39 114 101 39 stone
execute if score _bready bce_sys matches 1 run fill 111 102 39 114 102 39 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 115 100 39 115 100 39 stone
execute if score _bready bce_sys matches 1 run fill 115 101 39 115 101 39 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 116 100 39 117 100 39 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 125 100 39 126 100 39 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 127 100 39 127 100 39 stone
execute if score _bready bce_sys matches 1 run fill 127 101 39 127 101 39 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 128 100 39 128 101 39 stone
execute if score _bready bce_sys matches 1 run fill 128 102 39 128 102 39 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 129 100 39 132 100 39 stone
execute if score _bready bce_sys matches 1 run fill 129 101 39 132 101 39 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 133 100 39 133 101 39 stone
execute if score _bready bce_sys matches 1 run fill 133 102 39 133 102 39 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 134 100 39 136 100 39 stone
execute if score _bready bce_sys matches 1 run fill 134 101 39 136 101 39 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 137 100 39 139 100 39 coarse_dirt
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
