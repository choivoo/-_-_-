# zone 0 detail 6
scoreboard players set #bzone bce_sys 0
execute unless block 0 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 0 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 0 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 0 79 0 stone run scoreboard players set #bstage bce_sys 3
execute if block 0 79 0 stone run fill 18 100 6 18 101 6 stone_bricks
execute if block 0 79 0 stone run fill 18 102 6 18 103 6 chiseled_stone_bricks
execute if block 0 79 0 stone run setblock 18 104 6 lantern
execute if block 0 79 0 stone run fill 17 100 6 19 100 6 polished_andesite
execute if block 0 79 0 stone run fill -9 100 13 -5 100 13 polished_andesite
execute if block 0 79 0 stone run fill -9 101 13 -8 101 13 cracked_stone_bricks
execute if block 0 79 0 stone run fill 25 101 -36 25 109 -36 spruce_log
execute if block 0 79 0 stone run fill 23 106 -36 24 106 -36 spruce_log ["pillar_axis"="x"]
execute if block 0 79 0 stone run fill 23 106 -36 24 106 -36 spruce_log ["pillar_axis"="x"]
execute if block 0 79 0 stone run fill 25 106 -38 25 106 -37 spruce_log ["pillar_axis"="z"]
execute if block 0 79 0 stone run fill 33 101 -36 33 107 -36 spruce_log
execute if block 0 79 0 stone run fill 33 105 -38 33 105 -37 spruce_log ["pillar_axis"="z"]
execute if block 0 79 0 stone run fill 33 104 -35 33 104 -34 spruce_log ["pillar_axis"="z"]
execute if block 0 79 0 stone run fill 31 105 -36 32 105 -36 spruce_log ["pillar_axis"="x"]
execute if block 0 79 0 stone run fill -34 101 -34 -34 107 -34 spruce_log
execute if block 0 79 0 stone run fill -33 105 -34 -32 105 -34 spruce_log ["pillar_axis"="x"]
execute if block 0 79 0 stone run fill -33 105 -34 -32 105 -34 spruce_log ["pillar_axis"="x"]
execute if block 0 79 0 stone run fill -33 105 -34 -32 105 -34 spruce_log ["pillar_axis"="x"]
execute if block 0 79 0 stone run fill -8 100 -31 -7 101 -31 mossy_cobblestone
execute if block 0 79 0 stone run fill -36 104 -39 -35 105 -39 mossy_cobblestone
execute if block 0 79 0 stone run fill 15 100 -31 16 101 -31 mossy_cobblestone
execute if block 0 79 0 stone run fill 0 101 -32 1 102 -32 mossy_cobblestone
execute if block 0 79 0 stone run fill 23 100 -32 24 101 -32 mossy_cobblestone
execute if block 0 79 0 stone run fill 20 101 38 20 106 38 spruce_log
execute if block 0 79 0 stone run fill 18 103 38 19 103 38 spruce_log ["pillar_axis"="x"]
execute if block 0 79 0 stone run fill 18 104 38 19 104 38 spruce_log ["pillar_axis"="x"]
execute if block 0 79 0 stone run fill 20 105 36 20 105 37 spruce_log ["pillar_axis"="z"]
execute if block 0 79 0 stone run fill 37 103 39 37 111 39 spruce_log
execute if block 0 79 0 stone run fill 35 108 39 36 108 39 spruce_log ["pillar_axis"="x"]
execute if block 0 79 0 stone run fill 35 110 39 36 110 39 spruce_log ["pillar_axis"="x"]
execute if block 0 79 0 stone run fill 30 103 39 30 110 39 spruce_log
execute if block 0 79 0 stone run fill 30 109 37 30 109 38 spruce_log ["pillar_axis"="z"]
execute if block 0 79 0 stone run fill 30 109 40 30 109 41 spruce_log ["pillar_axis"="z"]
execute if block 0 79 0 stone run fill 31 107 39 32 107 39 spruce_log ["pillar_axis"="x"]
execute if block 0 79 0 stone run fill 15 102 35 16 103 35 mossy_cobblestone
execute if block 0 79 0 stone run fill -10 100 33 -9 101 33 mossy_cobblestone
execute if block 0 79 0 stone run scoreboard players add #bstep bce_sys 1
