# zone 4 detail 2
scoreboard players set _bzone bce_sys 4
function build/ready_z4
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 3
execute if score _bready bce_sys matches 1 run fill 373 112 4 373 114 4 chiseled_polished_blackstone
execute if score _bready bce_sys matches 1 run fill 373 100 5 373 113 5 chiseled_polished_blackstone
execute if score _bready bce_sys matches 1 run fill 373 100 6 373 111 6 chiseled_polished_blackstone
execute if score _bready bce_sys matches 1 run setblock 380 114 -12 amethyst_block
execute if score _bready bce_sys matches 1 run setblock 380 115 -12 purple_concrete
execute if score _bready bce_sys matches 1 run setblock 380 114 12 amethyst_block
execute if score _bready bce_sys matches 1 run setblock 380 115 12 purple_concrete
execute if score _bready bce_sys matches 1 run setblock 385 114 -12 amethyst_block
execute if score _bready bce_sys matches 1 run setblock 385 115 -12 purple_concrete
execute if score _bready bce_sys matches 1 run setblock 385 114 12 amethyst_block
execute if score _bready bce_sys matches 1 run setblock 385 115 12 purple_concrete
execute if score _bready bce_sys matches 1 run setblock 390 114 -12 amethyst_block
execute if score _bready bce_sys matches 1 run setblock 390 115 -12 purple_concrete
execute if score _bready bce_sys matches 1 run setblock 390 114 12 amethyst_block
execute if score _bready bce_sys matches 1 run setblock 390 115 12 purple_concrete
execute if score _bready bce_sys matches 1 run setblock 395 114 -12 amethyst_block
execute if score _bready bce_sys matches 1 run setblock 395 115 -12 purple_concrete
execute if score _bready bce_sys matches 1 run setblock 395 114 12 amethyst_block
execute if score _bready bce_sys matches 1 run setblock 395 115 12 purple_concrete
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
