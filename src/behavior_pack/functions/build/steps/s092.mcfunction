# zone 2 detail 5
scoreboard players set #bzone bce_sys 2
execute unless block 200 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 200 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 200 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 200 79 0 stone run scoreboard players set #bstage bce_sys 3
execute if block 200 79 0 stone run setblock 228 89 -12 sea_lantern
execute if block 200 79 0 stone run setblock 218 91 -12 sea_lantern
execute if block 200 79 0 stone run setblock 228 91 -12 sea_lantern
execute if block 200 79 0 stone run setblock 218 93 -12 sea_lantern
execute if block 200 79 0 stone run setblock 228 93 -12 sea_lantern
execute if block 200 79 0 stone run fill 219 87 11 225 87 11 mossy_stone_bricks ["pillar_axis"="x"]
execute if block 200 79 0 stone run setblock 220 88 11 cracked_stone_bricks
execute if block 200 79 0 stone run setblock 221 88 11 cracked_stone_bricks
execute if block 200 79 0 stone run setblock 222 89 11 cracked_stone_bricks
execute if block 200 79 0 stone run setblock 223 89 11 cracked_stone_bricks
execute if block 200 79 0 stone run setblock 224 90 11 cracked_stone_bricks
execute if block 200 79 0 stone run fill 226 87 9 228 87 10 mossy_cobblestone
execute if block 200 79 0 stone run fill 195 101 -35 195 106 -35 spruce_log
execute if block 200 79 0 stone run fill 193 104 -35 194 104 -35 spruce_log ["pillar_axis"="x"]
execute if block 200 79 0 stone run fill 196 104 -35 197 104 -35 spruce_log ["pillar_axis"="x"]
execute if block 200 79 0 stone run fill 195 103 -37 195 103 -36 spruce_log ["pillar_axis"="z"]
execute if block 200 79 0 stone run fill 201 101 -38 201 107 -38 spruce_log
execute if block 200 79 0 stone run fill 201 104 -37 201 104 -36 spruce_log ["pillar_axis"="z"]
execute if block 200 79 0 stone run fill 199 106 -38 200 106 -38 spruce_log ["pillar_axis"="x"]
execute if block 200 79 0 stone run fill 201 104 -37 201 104 -36 spruce_log ["pillar_axis"="z"]
execute if block 200 79 0 stone run fill 209 102 -35 209 110 -35 spruce_log
execute if block 200 79 0 stone run fill 209 109 -34 209 109 -33 spruce_log ["pillar_axis"="z"]
execute if block 200 79 0 stone run fill 210 109 -35 211 109 -35 spruce_log ["pillar_axis"="x"]
execute if block 200 79 0 stone run fill 210 107 -35 211 107 -35 spruce_log ["pillar_axis"="x"]
execute if block 200 79 0 stone run fill 221 101 -36 221 107 -36 spruce_log
execute if block 200 79 0 stone run fill 221 104 -38 221 104 -37 spruce_log ["pillar_axis"="z"]
execute if block 200 79 0 stone run fill 222 105 -36 223 105 -36 spruce_log ["pillar_axis"="x"]
execute if block 200 79 0 stone run fill 187 100 -31 188 101 -31 mossy_cobblestone
execute if block 200 79 0 stone run fill 222 100 -30 223 101 -30 mossy_cobblestone
execute if block 200 79 0 stone run fill 169 102 -35 170 103 -35 mossy_cobblestone
execute if block 200 79 0 stone run fill 177 101 -34 178 102 -34 mossy_cobblestone
execute if block 200 79 0 stone run fill 229 102 -39 230 103 -39 mossy_cobblestone
execute if block 200 79 0 stone run fill 233 103 35 233 111 35 spruce_log
execute if block 200 79 0 stone run fill 231 110 35 232 110 35 spruce_log ["pillar_axis"="x"]
execute if block 200 79 0 stone run fill 234 110 35 235 110 35 spruce_log ["pillar_axis"="x"]
execute if block 200 79 0 stone run fill 231 108 35 232 108 35 spruce_log ["pillar_axis"="x"]
execute if block 200 79 0 stone run scoreboard players add #bstep bce_sys 1
