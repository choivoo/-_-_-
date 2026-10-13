# zone 3 interior 0
scoreboard players set #bzone bce_sys 3
execute unless block 300 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 300 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 300 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 300 79 0 stone run scoreboard players set #bstage bce_sys 2
execute if block 300 79 0 stone run fill 321 99 -20 337 99 20 polished_andesite
execute if block 300 79 0 stone run fill 323 99 -18 335 99 18 stone_bricks
execute if block 300 79 0 stone run fill 321 100 -21 337 105 -21 stone_bricks
execute if block 300 79 0 stone run fill 321 100 21 337 105 21 stone_bricks
execute if block 300 79 0 stone run fill 324 100 -14 324 108 -14 stone_bricks
execute if block 300 79 0 stone run setblock 324 100 -14 chiseled_stone_bricks
execute if block 300 79 0 stone run setblock 324 108 -14 chiseled_stone_bricks
execute if block 300 79 0 stone run fill 324 100 14 324 108 14 stone_bricks
execute if block 300 79 0 stone run setblock 324 100 14 chiseled_stone_bricks
execute if block 300 79 0 stone run setblock 324 108 14 chiseled_stone_bricks
execute if block 300 79 0 stone run fill 328 100 -14 328 108 -14 stone_bricks
execute if block 300 79 0 stone run setblock 328 100 -14 chiseled_stone_bricks
execute if block 300 79 0 stone run setblock 328 108 -14 chiseled_stone_bricks
execute if block 300 79 0 stone run fill 328 100 14 328 108 14 stone_bricks
execute if block 300 79 0 stone run setblock 328 100 14 chiseled_stone_bricks
execute if block 300 79 0 stone run setblock 328 108 14 chiseled_stone_bricks
execute if block 300 79 0 stone run fill 332 100 -14 332 108 -14 stone_bricks
execute if block 300 79 0 stone run setblock 332 100 -14 chiseled_stone_bricks
execute if block 300 79 0 stone run setblock 332 108 -14 chiseled_stone_bricks
execute if block 300 79 0 stone run fill 332 100 14 332 108 14 stone_bricks
execute if block 300 79 0 stone run setblock 332 100 14 chiseled_stone_bricks
execute if block 300 79 0 stone run setblock 332 108 14 chiseled_stone_bricks
execute if block 300 79 0 stone run fill 336 100 -14 336 108 -14 stone_bricks
execute if block 300 79 0 stone run setblock 336 100 -14 chiseled_stone_bricks
execute if block 300 79 0 stone run setblock 336 108 -14 chiseled_stone_bricks
execute if block 300 79 0 stone run fill 336 100 14 336 108 14 stone_bricks
execute if block 300 79 0 stone run setblock 336 100 14 chiseled_stone_bricks
execute if block 300 79 0 stone run setblock 336 108 14 chiseled_stone_bricks
execute if block 300 79 0 stone run fill 336 100 -6 339 110 6 stone_bricks
execute if block 300 79 0 stone run fill 336 100 -3 339 106 3 air
execute if block 300 79 0 stone run fill 337 100 -3 338 106 3 iron_bars
execute if block 300 79 0 stone run fill 336 107 -4 339 107 4 chiseled_stone_bricks
execute if block 300 79 0 stone run scoreboard players add #bstep bce_sys 1
