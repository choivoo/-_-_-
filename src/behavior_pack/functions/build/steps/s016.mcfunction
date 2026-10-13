# zone 0 interior 2
scoreboard players set #bzone bce_sys 0
execute unless block 0 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 0 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 0 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 0 79 0 stone run scoreboard players set #bstage bce_sys 2
execute if block 0 79 0 stone run setblock 8 100 15 stone_bricks
execute if block 0 79 0 stone run setblock 3 100 12 gravel
execute if block 0 79 0 stone run setblock 8 100 10 stone_bricks
execute if block 0 79 0 stone run setblock 8 100 9 gravel
execute if block 0 79 0 stone run setblock 3 100 12 stone_bricks
execute if block 0 79 0 stone run setblock 5 100 10 mossy_cobblestone
execute if block 0 79 0 stone run setblock 5 100 11 stone_bricks
execute if block 0 79 0 stone run fill -3 113 4 0 115 7 air
execute if block 0 79 0 stone run setblock -1 100 4 stone_bricks
execute if block 0 79 0 stone run setblock 0 100 5 mossy_cobblestone
execute if block 0 79 0 stone run setblock -2 100 7 stone_bricks
execute if block 0 79 0 stone run setblock 0 100 6 cobblestone
execute if block 0 79 0 stone run setblock 1 100 5 mossy_cobblestone
execute if block 0 79 0 stone run setblock -3 100 8 mossy_cobblestone
execute if block 0 79 0 stone run setblock -2 100 7 stone_bricks
execute if block 0 79 0 stone run fill 6 100 -17 10 104 -17 air
execute if block 0 79 0 stone run fill 6 100 -18 10 104 -18 air
execute if block 0 79 0 stone run fill 5 100 -18 5 105 -17 chiseled_stone_bricks
execute if block 0 79 0 stone run fill 11 100 -18 11 105 -17 chiseled_stone_bricks
execute if block 0 79 0 stone run fill 6 105 -18 10 105 -17 chiseled_stone_bricks
execute if block 0 79 0 stone run setblock 8 100 -17 smithing_table
execute if block 0 79 0 stone run setblock 8 99 -17 sea_lantern
execute if block 0 79 0 stone run fill -2 99 -7 2 99 -7 deepslate_tiles
execute if block 0 79 0 stone run fill -4 99 -6 4 99 -6 deepslate_tiles
execute if block 0 79 0 stone run fill -5 99 -5 5 99 -5 deepslate_tiles
execute if block 0 79 0 stone run fill -6 99 -4 6 99 -4 deepslate_tiles
execute if block 0 79 0 stone run fill -6 99 -3 6 99 -3 deepslate_tiles
execute if block 0 79 0 stone run fill -7 99 -2 7 99 -2 deepslate_tiles
execute if block 0 79 0 stone run fill -7 99 -1 7 99 -1 deepslate_tiles
execute if block 0 79 0 stone run fill -7 99 0 7 99 0 deepslate_tiles
execute if block 0 79 0 stone run fill -7 99 1 7 99 1 deepslate_tiles
execute if block 0 79 0 stone run fill -7 99 2 7 99 2 deepslate_tiles
execute if block 0 79 0 stone run fill -6 99 3 6 99 3 deepslate_tiles
execute if block 0 79 0 stone run fill -6 99 4 6 99 4 deepslate_tiles
execute if block 0 79 0 stone run fill -5 99 5 5 99 5 deepslate_tiles
execute if block 0 79 0 stone run fill -4 99 6 4 99 6 deepslate_tiles
execute if block 0 79 0 stone run scoreboard players add #bstep bce_sys 1
