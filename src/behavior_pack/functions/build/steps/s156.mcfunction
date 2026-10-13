# zone 4 detail 2
scoreboard players set #bzone bce_sys 4
execute unless block 400 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 400 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 400 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 400 79 0 stone run scoreboard players set #bstage bce_sys 3
execute if block 400 79 0 stone run fill 373 112 4 373 114 4 chiseled_polished_blackstone
execute if block 400 79 0 stone run fill 373 100 5 373 113 5 chiseled_polished_blackstone
execute if block 400 79 0 stone run fill 373 100 6 373 111 6 chiseled_polished_blackstone
execute if block 400 79 0 stone run setblock 380 114 -12 amethyst_block
execute if block 400 79 0 stone run setblock 380 115 -12 purple_concrete
execute if block 400 79 0 stone run setblock 380 114 12 amethyst_block
execute if block 400 79 0 stone run setblock 380 115 12 purple_concrete
execute if block 400 79 0 stone run setblock 385 114 -12 amethyst_block
execute if block 400 79 0 stone run setblock 385 115 -12 purple_concrete
execute if block 400 79 0 stone run setblock 385 114 12 amethyst_block
execute if block 400 79 0 stone run setblock 385 115 12 purple_concrete
execute if block 400 79 0 stone run setblock 390 114 -12 amethyst_block
execute if block 400 79 0 stone run setblock 390 115 -12 purple_concrete
execute if block 400 79 0 stone run setblock 390 114 12 amethyst_block
execute if block 400 79 0 stone run setblock 390 115 12 purple_concrete
execute if block 400 79 0 stone run setblock 395 114 -12 amethyst_block
execute if block 400 79 0 stone run setblock 395 115 -12 purple_concrete
execute if block 400 79 0 stone run setblock 395 114 12 amethyst_block
execute if block 400 79 0 stone run setblock 395 115 12 purple_concrete
execute if block 400 79 0 stone run scoreboard players add #bstep bce_sys 1
