# zone 4 shell 13
scoreboard players set _bzone bce_sys 4
function build/ready_z4
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 1
execute if score _bready bce_sys matches 1 run fill 373 138 24 375 138 24 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 377 138 24 379 138 24 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 376 138 24 376 138 24 air
execute if score _bready bce_sys matches 1 run fill 373 138 25 379 138 25 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 374 138 26 378 138 26 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 375 138 27 377 138 27 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 376 139 24 376 139 24 deepslate_tiles
execute if score _bready bce_sys matches 1 run setblock 376 140 24 end_rod
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
