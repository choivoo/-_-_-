# zone 0 detail 6
scoreboard players set _bzone bce_sys 0
function build/ready_z0
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 3
execute if score _bready bce_sys matches 1 run setblock 2 115 19 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 4 115 19 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 6 115 19 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 8 115 19 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 10 115 19 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 12 115 19 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 14 115 19 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 18 100 -6 18 101 -6 stone_bricks
execute if score _bready bce_sys matches 1 run fill 18 102 -6 18 103 -6 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 18 104 -6 lantern
execute if score _bready bce_sys matches 1 run fill 17 100 -6 19 100 -6 polished_andesite
execute if score _bready bce_sys matches 1 run fill 18 100 6 18 101 6 stone_bricks
execute if score _bready bce_sys matches 1 run fill 18 102 6 18 103 6 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 18 104 6 lantern
execute if score _bready bce_sys matches 1 run fill 17 100 6 19 100 6 polished_andesite
execute if score _bready bce_sys matches 1 run fill -9 100 13 -5 100 13 polished_andesite
execute if score _bready bce_sys matches 1 run fill -9 101 13 -8 101 13 cracked_stone_bricks
execute if score _bready bce_sys matches 1 run fill 25 101 -36 25 109 -36 spruce_log
execute if score _bready bce_sys matches 1 run fill 23 106 -36 24 106 -36 spruce_log ["pillar_axis"="x"]
execute if score _bready bce_sys matches 1 run fill 23 106 -36 24 106 -36 spruce_log ["pillar_axis"="x"]
execute if score _bready bce_sys matches 1 run fill 25 106 -38 25 106 -37 spruce_log ["pillar_axis"="z"]
execute if score _bready bce_sys matches 1 run fill 33 101 -36 33 107 -36 spruce_log
execute if score _bready bce_sys matches 1 run fill 33 105 -38 33 105 -37 spruce_log ["pillar_axis"="z"]
execute if score _bready bce_sys matches 1 run fill 33 104 -35 33 104 -34 spruce_log ["pillar_axis"="z"]
execute if score _bready bce_sys matches 1 run fill 31 105 -36 32 105 -36 spruce_log ["pillar_axis"="x"]
execute if score _bready bce_sys matches 1 run fill -34 101 -34 -34 107 -34 spruce_log
execute if score _bready bce_sys matches 1 run fill -33 105 -34 -32 105 -34 spruce_log ["pillar_axis"="x"]
execute if score _bready bce_sys matches 1 run fill -33 105 -34 -32 105 -34 spruce_log ["pillar_axis"="x"]
execute if score _bready bce_sys matches 1 run fill -33 105 -34 -32 105 -34 spruce_log ["pillar_axis"="x"]
execute if score _bready bce_sys matches 1 run fill -8 100 -31 -7 101 -31 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill -36 104 -39 -35 105 -39 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 15 100 -31 16 101 -31 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 0 101 -32 1 102 -32 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 23 100 -32 24 101 -32 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 20 101 38 20 106 38 spruce_log
execute if score _bready bce_sys matches 1 run fill 18 103 38 19 103 38 spruce_log ["pillar_axis"="x"]
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
