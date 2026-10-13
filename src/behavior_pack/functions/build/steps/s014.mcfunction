# zone 0 interior 0
scoreboard players set #bzone bce_sys 0
execute unless block 0 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 0 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 0 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 0 79 0 stone run scoreboard players set #bstage bce_sys 2
execute if block 0 79 0 stone run fill -13 100 -17 13 112 17 air
execute if block 0 79 0 stone run fill -13 99 -17 13 99 17 polished_diorite
execute if block 0 79 0 stone run fill -13 99 -2 13 99 2 deepslate_tiles
execute if block 0 79 0 stone run fill -13 99 -3 13 99 -3 chiseled_stone_bricks
execute if block 0 79 0 stone run fill -13 99 3 13 99 3 chiseled_stone_bricks
execute if block 0 79 0 stone run fill 13 100 -2 15 106 2 air
execute if block 0 79 0 stone run fill 13 107 -1 15 107 1 air
execute if block 0 79 0 stone run fill 13 100 -3 15 108 -3 chiseled_stone_bricks
execute if block 0 79 0 stone run fill 13 100 3 15 108 3 chiseled_stone_bricks
execute if block 0 79 0 stone run fill 13 108 -2 15 108 2 chiseled_stone_bricks
execute if block 0 79 0 stone run fill -9 104 -19 -9 109 -19 air
execute if block 0 79 0 stone run fill -9 104 19 -9 109 19 air
execute if block 0 79 0 stone run fill -3 104 -19 -3 109 -19 air
execute if block 0 79 0 stone run fill -3 104 19 -3 109 19 air
execute if block 0 79 0 stone run fill 3 104 -19 3 109 -19 air
execute if block 0 79 0 stone run fill 3 104 19 3 109 19 air
execute if block 0 79 0 stone run fill 9 104 -19 9 109 -19 air
execute if block 0 79 0 stone run fill 9 104 19 9 109 19 air
execute if block 0 79 0 stone run fill -10 100 -9 -10 112 -9 polished_andesite
execute if block 0 79 0 stone run setblock -10 100 -9 chiseled_stone_bricks
execute if block 0 79 0 stone run setblock -10 112 -9 chiseled_deepslate
execute if block 0 79 0 stone run fill -10 100 9 -10 112 9 polished_andesite
execute if block 0 79 0 stone run setblock -10 100 9 chiseled_stone_bricks
execute if block 0 79 0 stone run setblock -10 112 9 chiseled_deepslate
execute if block 0 79 0 stone run fill -5 100 -9 -5 112 -9 polished_andesite
execute if block 0 79 0 stone run setblock -5 100 -9 chiseled_stone_bricks
execute if block 0 79 0 stone run setblock -5 112 -9 chiseled_deepslate
execute if block 0 79 0 stone run fill -5 100 9 -5 112 9 polished_andesite
execute if block 0 79 0 stone run setblock -5 100 9 chiseled_stone_bricks
execute if block 0 79 0 stone run setblock -5 112 9 chiseled_deepslate
execute if block 0 79 0 stone run fill 0 100 -9 0 112 -9 polished_andesite
execute if block 0 79 0 stone run setblock 0 100 -9 chiseled_stone_bricks
execute if block 0 79 0 stone run setblock 0 112 -9 chiseled_deepslate
execute if block 0 79 0 stone run fill 0 100 9 0 112 9 polished_andesite
execute if block 0 79 0 stone run setblock 0 100 9 chiseled_stone_bricks
execute if block 0 79 0 stone run setblock 0 112 9 chiseled_deepslate
execute if block 0 79 0 stone run scoreboard players add #bstep bce_sys 1
