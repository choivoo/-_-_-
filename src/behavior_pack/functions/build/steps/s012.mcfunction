# zone 0 shell 0
scoreboard players set #bzone bce_sys 0
execute unless block 0 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 0 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 0 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 0 79 0 stone run scoreboard players set #bstage bce_sys 1
execute if block 0 79 0 stone run fill -15 100 -19 15 115 19 stone_bricks
execute if block 0 79 0 stone run fill -16 99 -20 16 99 20 polished_andesite
execute if block 0 79 0 stone run fill -16 101 -18 -16 113 -18 stone_bricks
execute if block 0 79 0 stone run setblock -16 114 -18 chiseled_stone_bricks
execute if block 0 79 0 stone run fill 16 101 -18 16 113 -18 stone_bricks
execute if block 0 79 0 stone run setblock 16 114 -18 chiseled_stone_bricks
execute if block 0 79 0 stone run fill -16 101 -12 -16 113 -12 stone_bricks
execute if block 0 79 0 stone run setblock -16 114 -12 chiseled_stone_bricks
execute if block 0 79 0 stone run fill 16 101 -12 16 113 -12 stone_bricks
execute if block 0 79 0 stone run setblock 16 114 -12 chiseled_stone_bricks
execute if block 0 79 0 stone run fill -16 101 -6 -16 113 -6 stone_bricks
execute if block 0 79 0 stone run setblock -16 114 -6 chiseled_stone_bricks
execute if block 0 79 0 stone run fill 16 101 -6 16 113 -6 stone_bricks
execute if block 0 79 0 stone run setblock 16 114 -6 chiseled_stone_bricks
execute if block 0 79 0 stone run fill -16 101 0 -16 113 0 stone_bricks
execute if block 0 79 0 stone run setblock -16 114 0 chiseled_stone_bricks
execute if block 0 79 0 stone run fill -16 101 6 -16 113 6 stone_bricks
execute if block 0 79 0 stone run setblock -16 114 6 chiseled_stone_bricks
execute if block 0 79 0 stone run fill 16 101 6 16 113 6 stone_bricks
execute if block 0 79 0 stone run setblock 16 114 6 chiseled_stone_bricks
execute if block 0 79 0 stone run fill -16 101 12 -16 113 12 stone_bricks
execute if block 0 79 0 stone run setblock -16 114 12 chiseled_stone_bricks
execute if block 0 79 0 stone run fill 16 101 12 16 113 12 stone_bricks
execute if block 0 79 0 stone run setblock 16 114 12 chiseled_stone_bricks
execute if block 0 79 0 stone run fill -16 101 18 -16 113 18 stone_bricks
execute if block 0 79 0 stone run setblock -16 114 18 chiseled_stone_bricks
execute if block 0 79 0 stone run fill 16 101 18 16 113 18 stone_bricks
execute if block 0 79 0 stone run setblock 16 114 18 chiseled_stone_bricks
execute if block 0 79 0 stone run fill -12 101 -20 -12 113 -20 stone_bricks
execute if block 0 79 0 stone run setblock -12 114 -20 chiseled_stone_bricks
execute if block 0 79 0 stone run fill -12 101 20 -12 113 20 stone_bricks
execute if block 0 79 0 stone run setblock -12 114 20 chiseled_stone_bricks
execute if block 0 79 0 stone run fill -6 101 -20 -6 113 -20 stone_bricks
execute if block 0 79 0 stone run setblock -6 114 -20 chiseled_stone_bricks
execute if block 0 79 0 stone run fill -6 101 20 -6 113 20 stone_bricks
execute if block 0 79 0 stone run setblock -6 114 20 chiseled_stone_bricks
execute if block 0 79 0 stone run scoreboard players add #bstep bce_sys 1
