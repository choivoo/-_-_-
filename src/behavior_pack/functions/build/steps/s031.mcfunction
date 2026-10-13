# zone 1 ground 1
scoreboard players set #bzone bce_sys 1
execute unless block 100 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 100 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 100 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 100 79 0 stone run scoreboard players set #bstage bce_sys 0
execute if block 100 79 0 stone run fill 81 99 -36 82 99 -34 stone replace coarse_dirt
execute if block 100 79 0 stone run fill 83 99 14 85 99 16 stone replace coarse_dirt
execute if block 100 79 0 stone run fill 135 99 -18 136 99 -17 podzol replace coarse_dirt
execute if block 100 79 0 stone run fill 88 99 15 90 99 15 stone replace coarse_dirt
execute if block 100 79 0 stone run fill 77 99 -28 78 99 -26 stone replace coarse_dirt
execute if block 100 79 0 stone run fill 101 99 16 104 99 16 dirt replace coarse_dirt
execute if block 100 79 0 stone run fill 79 99 6 81 99 7 stone replace coarse_dirt
execute if block 100 79 0 stone run fill 91 99 11 91 99 12 dirt replace coarse_dirt
execute if block 100 79 0 stone run fill 114 99 -38 114 99 -35 gravel replace coarse_dirt
execute if block 100 79 0 stone run fill 78 99 29 78 99 29 podzol replace coarse_dirt
execute if block 100 79 0 stone run fill 72 99 31 72 99 31 dirt replace coarse_dirt
execute if block 100 79 0 stone run fill 121 99 0 124 99 3 podzol replace coarse_dirt
execute if block 100 79 0 stone run fill 71 99 -8 71 99 -7 stone replace coarse_dirt
execute if block 100 79 0 stone run fill 117 99 28 120 99 28 podzol replace coarse_dirt
execute if block 100 79 0 stone run fill 72 99 -32 72 99 -29 gravel replace coarse_dirt
execute if block 100 79 0 stone run fill 115 99 3 115 99 6 podzol replace coarse_dirt
execute if block 100 79 0 stone run fill 99 99 0 99 99 3 gravel replace coarse_dirt
execute if block 100 79 0 stone run fill 124 99 22 124 99 22 podzol replace coarse_dirt
execute if block 100 79 0 stone run fill 75 99 5 76 99 7 dirt replace coarse_dirt
execute if block 100 79 0 stone run fill 135 99 -10 137 99 -10 gravel replace coarse_dirt
execute if block 100 79 0 stone run fill 69 99 26 70 99 28 gravel replace coarse_dirt
execute if block 100 79 0 stone run fill 93 99 5 95 99 8 dirt replace coarse_dirt
execute if block 100 79 0 stone run fill 116 99 3 117 99 5 podzol replace coarse_dirt
execute if block 100 79 0 stone run fill 113 99 37 115 99 37 podzol replace coarse_dirt
execute if block 100 79 0 stone run fill 78 99 -17 79 99 -16 gravel replace coarse_dirt
execute if block 100 79 0 stone run fill 87 99 -38 87 99 -37 stone replace coarse_dirt
execute if block 100 79 0 stone run fill 99 99 31 101 99 34 stone replace coarse_dirt
execute if block 100 79 0 stone run fill 91 99 23 94 99 24 dirt replace coarse_dirt
execute if block 100 79 0 stone run fill 81 99 -15 81 99 -13 dirt replace coarse_dirt
execute if block 100 79 0 stone run fill 83 99 -5 84 99 -3 gravel replace coarse_dirt
execute if block 100 79 0 stone run fill 109 99 2 111 99 5 podzol replace coarse_dirt
execute if block 100 79 0 stone run fill 126 99 -17 127 99 -16 dirt replace coarse_dirt
execute if block 100 79 0 stone run fill 85 99 -3 87 99 -2 podzol replace coarse_dirt
execute if block 100 79 0 stone run fill 122 99 12 124 99 15 stone replace coarse_dirt
execute if block 100 79 0 stone run fill 81 99 -15 83 99 -13 dirt replace coarse_dirt
execute if block 100 79 0 stone run fill 108 99 -9 110 99 -7 podzol replace coarse_dirt
execute if block 100 79 0 stone run scoreboard players add #bstep bce_sys 1
