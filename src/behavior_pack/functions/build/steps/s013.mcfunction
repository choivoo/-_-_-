# zone 0 shell 1
scoreboard players set #bzone bce_sys 0
execute unless block 0 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 0 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 0 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 0 79 0 stone run scoreboard players set #bstage bce_sys 1
execute if block 0 79 0 stone run fill 0 101 -20 0 113 -20 stone_bricks
execute if block 0 79 0 stone run setblock 0 114 -20 chiseled_stone_bricks
execute if block 0 79 0 stone run fill 0 101 20 0 113 20 stone_bricks
execute if block 0 79 0 stone run setblock 0 114 20 chiseled_stone_bricks
execute if block 0 79 0 stone run fill 6 101 -20 6 113 -20 stone_bricks
execute if block 0 79 0 stone run setblock 6 114 -20 chiseled_stone_bricks
execute if block 0 79 0 stone run fill 6 101 20 6 113 20 stone_bricks
execute if block 0 79 0 stone run setblock 6 114 20 chiseled_stone_bricks
execute if block 0 79 0 stone run fill 12 101 -20 12 113 -20 stone_bricks
execute if block 0 79 0 stone run setblock 12 114 -20 chiseled_stone_bricks
execute if block 0 79 0 stone run fill 12 101 20 12 113 20 stone_bricks
execute if block 0 79 0 stone run setblock 12 114 20 chiseled_stone_bricks
execute if block 0 79 0 stone run fill -15 115 -19 15 115 19 deepslate_bricks
execute if block 0 79 0 stone run scoreboard players add #bstep bce_sys 1
