# zone 1 ground 3
scoreboard players set _bzone bce_sys 1
function build/ready_z1
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 0
execute if score _bready bce_sys matches 1 run fill 96 100 -39 96 101 -39 stone
execute if score _bready bce_sys matches 1 run fill 96 102 -39 96 102 -39 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 97 100 -39 98 102 -39 stone
execute if score _bready bce_sys matches 1 run fill 97 103 -39 98 103 -39 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 99 100 -39 100 101 -39 stone
execute if score _bready bce_sys matches 1 run fill 99 102 -39 100 102 -39 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 101 100 -39 101 100 -39 stone
execute if score _bready bce_sys matches 1 run fill 101 101 -39 101 101 -39 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 102 100 -39 102 100 -39 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 103 100 -39 104 100 -39 stone
execute if score _bready bce_sys matches 1 run fill 103 101 -39 104 101 -39 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 105 100 -39 105 100 -39 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 106 100 -39 110 100 -39 stone
execute if score _bready bce_sys matches 1 run fill 106 101 -39 110 101 -39 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 111 100 -39 114 100 -39 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 115 100 -39 117 100 -39 stone
execute if score _bready bce_sys matches 1 run fill 115 101 -39 117 101 -39 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 118 100 -39 119 100 -39 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 120 100 -39 121 100 -39 stone
execute if score _bready bce_sys matches 1 run fill 120 101 -39 121 101 -39 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 122 100 -39 125 101 -39 stone
execute if score _bready bce_sys matches 1 run fill 122 102 -39 125 102 -39 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 126 100 -39 126 100 -39 stone
execute if score _bready bce_sys matches 1 run fill 126 101 -39 126 101 -39 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 130 100 -39 131 100 -39 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 132 100 -39 133 100 -39 stone
execute if score _bready bce_sys matches 1 run fill 132 101 -39 133 101 -39 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 134 100 -39 135 101 -39 stone
execute if score _bready bce_sys matches 1 run fill 134 102 -39 135 102 -39 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 136 100 -39 137 100 -39 stone
execute if score _bready bce_sys matches 1 run fill 136 101 -39 137 101 -39 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 138 100 -39 139 100 -39 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 67 100 -38 68 100 -38 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 69 100 -38 70 100 -38 stone
execute if score _bready bce_sys matches 1 run fill 69 101 -38 70 101 -38 coarse_dirt
execute if score _bready bce_sys matches 1 run fill 71 100 -38 71 100 -38 coarse_dirt
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
