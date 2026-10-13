# zone 1 ground 5
scoreboard players set #bzone bce_sys 1
execute unless block 100 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 100 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 100 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 100 79 0 stone run scoreboard players set #bstage bce_sys 0
execute if block 100 79 0 stone run fill 125 101 -38 126 101 -38 coarse_dirt
execute if block 100 79 0 stone run fill 127 100 -38 127 100 -38 coarse_dirt
execute if block 100 79 0 stone run fill 131 100 -38 131 100 -38 coarse_dirt
execute if block 100 79 0 stone run fill 132 100 -38 133 100 -38 stone
execute if block 100 79 0 stone run fill 132 101 -38 133 101 -38 coarse_dirt
execute if block 100 79 0 stone run fill 134 100 -38 137 101 -38 stone
execute if block 100 79 0 stone run fill 134 102 -38 137 102 -38 coarse_dirt
execute if block 100 79 0 stone run fill 138 100 -38 139 100 -38 stone
execute if block 100 79 0 stone run fill 138 101 -38 139 101 -38 coarse_dirt
execute if block 100 79 0 stone run fill 66 100 -37 66 100 -37 coarse_dirt
execute if block 100 79 0 stone run fill 67 100 -37 69 100 -37 stone
execute if block 100 79 0 stone run fill 67 101 -37 69 101 -37 coarse_dirt
execute if block 100 79 0 stone run fill 70 100 -37 70 100 -37 coarse_dirt
execute if block 100 79 0 stone run fill 71 100 -37 80 100 -37 stone
execute if block 100 79 0 stone run fill 71 101 -37 80 101 -37 coarse_dirt
execute if block 100 79 0 stone run fill 81 100 -37 81 100 -37 coarse_dirt
execute if block 100 79 0 stone run fill 84 100 -37 85 100 -37 coarse_dirt
execute if block 100 79 0 stone run fill 90 100 -37 93 100 -37 coarse_dirt
execute if block 100 79 0 stone run fill 94 100 -37 96 100 -37 stone
execute if block 100 79 0 stone run fill 94 101 -37 96 101 -37 coarse_dirt
execute if block 100 79 0 stone run fill 97 100 -37 99 101 -37 stone
execute if block 100 79 0 stone run fill 97 102 -37 99 102 -37 coarse_dirt
execute if block 100 79 0 stone run fill 100 100 -37 119 100 -37 stone
execute if block 100 79 0 stone run fill 100 101 -37 119 101 -37 coarse_dirt
execute if block 100 79 0 stone run fill 120 100 -37 121 100 -37 coarse_dirt
execute if block 100 79 0 stone run fill 122 100 -37 126 100 -37 stone
execute if block 100 79 0 stone run fill 122 101 -37 126 101 -37 coarse_dirt
execute if block 100 79 0 stone run fill 127 100 -37 127 100 -37 coarse_dirt
execute if block 100 79 0 stone run fill 131 100 -37 131 100 -37 coarse_dirt
execute if block 100 79 0 stone run fill 132 100 -37 139 100 -37 stone
execute if block 100 79 0 stone run fill 132 101 -37 139 101 -37 coarse_dirt
execute if block 100 79 0 stone run fill 65 100 -36 71 100 -36 coarse_dirt
execute if block 100 79 0 stone run fill 72 100 -36 77 100 -36 stone
execute if block 100 79 0 stone run fill 72 101 -36 77 101 -36 coarse_dirt
execute if block 100 79 0 stone run fill 78 100 -36 82 100 -36 coarse_dirt
execute if block 100 79 0 stone run fill 92 100 -36 94 100 -36 coarse_dirt
execute if block 100 79 0 stone run scoreboard players add #bstep bce_sys 1
