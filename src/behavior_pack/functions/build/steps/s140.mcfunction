# zone 4 ground 0
scoreboard players set _bzone bce_sys 4
function build/ready_z4
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 0
execute if score _bready bce_sys matches 1 run fill 360 80 -40 399 98 -1 stone
execute if score _bready bce_sys matches 1 run fill 360 80 0 399 98 39 stone
execute if score _bready bce_sys matches 1 run fill 400 80 -40 439 98 -1 stone
execute if score _bready bce_sys matches 1 run fill 400 80 0 439 98 39 stone
execute if score _bready bce_sys matches 1 run fill 360 99 -40 439 99 39 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 360 100 -40 439 104 39 air
execute if score _bready bce_sys matches 1 run fill 360 105 -40 439 109 39 air
execute if score _bready bce_sys matches 1 run fill 360 110 -40 439 114 39 air
execute if score _bready bce_sys matches 1 run fill 360 115 -40 439 119 39 air
execute if score _bready bce_sys matches 1 run fill 360 120 -40 439 124 39 air
execute if score _bready bce_sys matches 1 run fill 360 125 -40 439 129 39 air
execute if score _bready bce_sys matches 1 run fill 360 130 -40 439 134 39 air
execute if score _bready bce_sys matches 1 run fill 360 135 -40 439 139 39 air
execute if score _bready bce_sys matches 1 run fill 361 99 -4 373 99 4 polished_blackstone
execute if score _bready bce_sys matches 1 run fill 391 99 8 394 99 11 cracked_polished_blackstone_bricks replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 426 99 13 426 99 15 blackstone replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 428 99 -6 428 99 -6 blackstone replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 413 99 36 413 99 37 deepslate_bricks replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 400 99 6 403 99 7 deepslate_bricks replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 370 99 -34 371 99 -32 cracked_polished_blackstone_bricks replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 390 99 -19 390 99 -16 cracked_polished_blackstone_bricks replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 374 99 6 375 99 8 deepslate_bricks replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 425 99 25 428 99 25 blackstone replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 393 99 5 394 99 8 deepslate_bricks replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 377 99 -1 377 99 1 blackstone replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 373 99 27 376 99 30 deepslate_bricks replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 430 99 -6 432 99 -5 blackstone replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 379 99 -17 382 99 -14 cracked_polished_blackstone_bricks replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 397 99 -38 399 99 -36 deepslate_bricks replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 426 99 -14 427 99 -11 blackstone replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 368 99 -2 368 99 -2 blackstone replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 371 99 -13 372 99 -12 cracked_polished_blackstone_bricks replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 403 99 -9 405 99 -8 blackstone replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 392 99 13 393 99 14 blackstone replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 397 99 13 400 99 13 blackstone replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 429 99 37 431 99 37 cracked_polished_blackstone_bricks replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
