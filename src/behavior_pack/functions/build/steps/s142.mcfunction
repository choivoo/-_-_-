# zone 4 ground 2
scoreboard players set _bzone bce_sys 4
function build/ready_z4
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 0
execute if score _bready bce_sys matches 1 run fill 413 99 2 413 99 4 cracked_polished_blackstone_bricks replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 434 99 16 434 99 18 cracked_polished_blackstone_bricks replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 376 99 6 378 99 8 deepslate_bricks replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 435 99 -26 437 99 -23 cracked_polished_blackstone_bricks replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 425 99 -5 427 99 -5 blackstone replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 372 99 26 374 99 26 deepslate_bricks replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 380 99 8 382 99 11 cracked_polished_blackstone_bricks replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 424 99 -21 424 99 -19 cracked_polished_blackstone_bricks replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 386 99 -22 386 99 -22 deepslate_bricks replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 377 99 21 377 99 23 cracked_polished_blackstone_bricks replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 414 99 -6 416 99 -3 blackstone replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 390 99 -32 391 99 -30 blackstone replace polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 360 99 -2 372 99 2 polished_blackstone
execute if score _bready bce_sys matches 1 run fill 360 99 -3 372 99 -3 stone_bricks
execute if score _bready bce_sys matches 1 run fill 360 99 3 372 99 3 stone_bricks
execute if score _bready bce_sys matches 1 run fill 360 100 -39 360 100 -39 blackstone
execute if score _bready bce_sys matches 1 run fill 360 101 -39 360 101 -39 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 361 100 -39 364 100 -39 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 365 100 -39 366 100 -39 blackstone
execute if score _bready bce_sys matches 1 run fill 365 101 -39 366 101 -39 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 367 100 -39 368 100 -39 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 369 100 -39 371 100 -39 blackstone
execute if score _bready bce_sys matches 1 run fill 369 101 -39 371 101 -39 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 372 100 -39 373 100 -39 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 378 100 -39 379 100 -39 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 380 100 -39 382 100 -39 blackstone
execute if score _bready bce_sys matches 1 run fill 380 101 -39 382 101 -39 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 383 100 -39 383 100 -39 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 384 100 -39 387 100 -39 blackstone
execute if score _bready bce_sys matches 1 run fill 384 101 -39 387 101 -39 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 388 100 -39 389 100 -39 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 391 100 -39 392 100 -39 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 393 100 -39 395 100 -39 blackstone
execute if score _bready bce_sys matches 1 run fill 393 101 -39 395 101 -39 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 396 100 -39 399 101 -39 blackstone
execute if score _bready bce_sys matches 1 run fill 396 102 -39 399 102 -39 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
