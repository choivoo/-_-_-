# zone 1 ground 2
scoreboard players set #bzone bce_sys 1
execute unless block 100 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 100 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 100 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 100 79 0 stone run scoreboard players set #bstage bce_sys 0
execute if block 100 79 0 stone run fill 62 99 15 64 99 15 dirt replace coarse_dirt
execute if block 100 79 0 stone run fill 129 99 6 129 99 6 podzol replace coarse_dirt
execute if block 100 79 0 stone run fill 119 99 25 120 99 26 dirt replace coarse_dirt
execute if block 100 79 0 stone run fill 126 99 2 126 99 2 gravel replace coarse_dirt
execute if block 100 79 0 stone run fill 69 99 -35 71 99 -34 gravel replace coarse_dirt
execute if block 100 79 0 stone run fill 133 99 35 133 99 36 stone replace coarse_dirt
execute if block 100 79 0 stone run fill 124 99 30 126 99 32 stone replace coarse_dirt
execute if block 100 79 0 stone run fill 65 99 0 67 99 2 gravel replace coarse_dirt
execute if block 100 79 0 stone run fill 126 99 -38 127 99 -35 podzol replace coarse_dirt
execute if block 100 79 0 stone run fill 131 99 2 134 99 5 dirt replace coarse_dirt
execute if block 100 79 0 stone run fill 101 99 12 104 99 12 stone replace coarse_dirt
execute if block 100 79 0 stone run fill 80 99 -7 82 99 -4 dirt replace coarse_dirt
execute if block 100 79 0 stone run fill 118 99 -18 120 99 -15 podzol replace coarse_dirt
execute if block 100 79 0 stone run fill 124 99 26 127 99 27 stone replace coarse_dirt
execute if block 100 79 0 stone run fill 129 99 8 130 99 11 dirt replace coarse_dirt
execute if block 100 79 0 stone run fill 89 99 23 90 99 26 dirt replace coarse_dirt
execute if block 100 79 0 stone run fill 60 100 -39 60 100 -39 stone
execute if block 100 79 0 stone run fill 60 101 -39 60 101 -39 coarse_dirt
execute if block 100 79 0 stone run fill 68 100 -39 68 100 -39 coarse_dirt
execute if block 100 79 0 stone run fill 69 100 -39 75 100 -39 stone
execute if block 100 79 0 stone run fill 69 101 -39 75 101 -39 coarse_dirt
execute if block 100 79 0 stone run fill 76 100 -39 77 101 -39 stone
execute if block 100 79 0 stone run fill 76 102 -39 77 102 -39 coarse_dirt
execute if block 100 79 0 stone run fill 78 100 -39 79 102 -39 stone
execute if block 100 79 0 stone run fill 78 103 -39 79 103 -39 coarse_dirt
execute if block 100 79 0 stone run fill 80 100 -39 80 101 -39 stone
execute if block 100 79 0 stone run fill 80 102 -39 80 102 -39 coarse_dirt
execute if block 100 79 0 stone run fill 81 100 -39 82 100 -39 stone
execute if block 100 79 0 stone run fill 81 101 -39 82 101 -39 coarse_dirt
execute if block 100 79 0 stone run fill 83 100 -39 84 100 -39 coarse_dirt
execute if block 100 79 0 stone run fill 91 100 -39 91 100 -39 coarse_dirt
execute if block 100 79 0 stone run fill 92 100 -39 93 100 -39 stone
execute if block 100 79 0 stone run fill 92 101 -39 93 101 -39 coarse_dirt
execute if block 100 79 0 stone run fill 94 100 -39 94 100 -39 coarse_dirt
execute if block 100 79 0 stone run fill 95 100 -39 95 100 -39 stone
execute if block 100 79 0 stone run fill 95 101 -39 95 101 -39 coarse_dirt
execute if block 100 79 0 stone run scoreboard players add #bstep bce_sys 1
