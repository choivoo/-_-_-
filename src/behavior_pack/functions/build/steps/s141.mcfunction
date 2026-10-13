# zone 4 ground 1
scoreboard players set _bzone bce_sys 4
function build/ready_z4
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 0
execute if score _bready bce_sys matches 1 run fill 379 99 -28 379 99 -25 cracked_polished_blackstone_bricks replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 416 99 10 416 99 12 blackstone replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 427 99 5 429 99 5 blackstone replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 431 99 31 432 99 33 blackstone replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 419 99 11 421 99 14 deepslate_bricks replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 402 99 -14 402 99 -12 cracked_polished_blackstone_bricks replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 393 99 0 395 99 0 deepslate_bricks replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 430 99 -36 431 99 -33 blackstone replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 384 99 -15 385 99 -13 cracked_polished_blackstone_bricks replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 405 99 -6 406 99 -5 blackstone replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 389 99 22 392 99 25 deepslate_bricks replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 406 99 -20 408 99 -17 blackstone replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 402 99 -23 403 99 -21 cracked_polished_blackstone_bricks replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 425 99 16 427 99 19 cracked_polished_blackstone_bricks replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 401 99 2 402 99 3 cracked_polished_blackstone_bricks replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 380 99 -29 382 99 -27 blackstone replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 398 99 21 398 99 23 deepslate_bricks replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 409 99 14 410 99 15 cracked_polished_blackstone_bricks replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 374 99 36 377 99 36 cracked_polished_blackstone_bricks replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 418 99 6 420 99 7 deepslate_bricks replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 417 99 37 418 99 37 deepslate_bricks replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 429 99 8 429 99 11 blackstone replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 365 99 -30 368 99 -30 deepslate_bricks replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 428 99 2 428 99 3 cracked_polished_blackstone_bricks replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 402 99 0 404 99 2 deepslate_bricks replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 397 99 -30 397 99 -28 deepslate_bricks replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 432 99 -1 433 99 0 deepslate_bricks replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 417 99 -21 419 99 -20 deepslate_bricks replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 399 99 -26 399 99 -23 deepslate_bricks replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 388 99 7 391 99 8 cracked_polished_blackstone_bricks replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 377 99 -16 379 99 -14 cracked_polished_blackstone_bricks replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 415 99 21 416 99 24 blackstone replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 391 99 16 391 99 18 deepslate_bricks replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 365 99 -30 368 99 -30 cracked_polished_blackstone_bricks replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 384 99 24 387 99 27 deepslate_bricks replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 414 99 -1 414 99 1 deepslate_bricks replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
