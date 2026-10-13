# zone 4 shell 13
scoreboard players set #bzone bce_sys 4
execute unless block 400 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 400 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 400 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 400 79 0 stone run scoreboard players set #bstage bce_sys 1
execute if block 400 79 0 stone run fill 373 138 24 375 138 24 deepslate_tiles
execute if block 400 79 0 stone run fill 377 138 24 379 138 24 deepslate_tiles
execute if block 400 79 0 stone run fill 376 138 24 376 138 24 air
execute if block 400 79 0 stone run fill 373 138 25 379 138 25 deepslate_tiles
execute if block 400 79 0 stone run fill 374 138 26 378 138 26 deepslate_tiles
execute if block 400 79 0 stone run fill 375 138 27 377 138 27 deepslate_tiles
execute if block 400 79 0 stone run fill 376 139 24 376 139 24 deepslate_tiles
execute if block 400 79 0 stone run setblock 376 140 24 end_rod
execute if block 400 79 0 stone run scoreboard players add #bstep bce_sys 1
