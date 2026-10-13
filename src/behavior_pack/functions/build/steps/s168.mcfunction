# zone 4 interior 0
scoreboard players set _bzone bce_sys 4
function build/ready_z4
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 2
execute if score _bready bce_sys matches 1 run fill 378 100 -4 379 112 4 air
execute if score _bready bce_sys matches 1 run fill 379 100 -13 398 122 13 air
execute if score _bready bce_sys matches 1 run fill 379 99 -13 398 99 13 polished_blackstone
execute if score _bready bce_sys matches 1 run fill 379 99 -2 398 99 2 gilded_blackstone
execute if score _bready bce_sys matches 1 run fill 382 100 -9 382 121 -9 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run setblock 382 100 -9 chiseled_polished_blackstone
execute if score _bready bce_sys matches 1 run setblock 382 121 -9 chiseled_polished_blackstone
execute if score _bready bce_sys matches 1 run fill 381 121 -10 383 121 -8 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 382 100 9 382 121 9 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run setblock 382 100 9 chiseled_polished_blackstone
execute if score _bready bce_sys matches 1 run setblock 382 121 9 chiseled_polished_blackstone
execute if score _bready bce_sys matches 1 run fill 381 121 8 383 121 10 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 387 100 -9 387 121 -9 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run setblock 387 100 -9 chiseled_polished_blackstone
execute if score _bready bce_sys matches 1 run setblock 387 121 -9 chiseled_polished_blackstone
execute if score _bready bce_sys matches 1 run fill 386 121 -10 388 121 -8 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 387 100 9 387 121 9 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run setblock 387 100 9 chiseled_polished_blackstone
execute if score _bready bce_sys matches 1 run setblock 387 121 9 chiseled_polished_blackstone
execute if score _bready bce_sys matches 1 run fill 386 121 8 388 121 10 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 392 100 -9 392 121 -9 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run setblock 392 100 -9 chiseled_polished_blackstone
execute if score _bready bce_sys matches 1 run setblock 392 121 -9 chiseled_polished_blackstone
execute if score _bready bce_sys matches 1 run fill 391 121 -10 393 121 -8 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 392 100 9 392 121 9 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run setblock 392 100 9 chiseled_polished_blackstone
execute if score _bready bce_sys matches 1 run setblock 392 121 9 chiseled_polished_blackstone
execute if score _bready bce_sys matches 1 run fill 391 121 8 393 121 10 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 379 112 10 398 112 13 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 381 100 11 381 100 12 polished_blackstone_brick_stairs ["weirdo_direction"=0,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 381 101 11 381 103 12 air
execute if score _bready bce_sys matches 1 run fill 382 101 11 382 101 12 polished_blackstone_brick_stairs ["weirdo_direction"=0,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 382 102 11 382 104 12 air
execute if score _bready bce_sys matches 1 run fill 383 102 11 383 102 12 polished_blackstone_brick_stairs ["weirdo_direction"=0,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 383 103 11 383 105 12 air
execute if score _bready bce_sys matches 1 run fill 384 103 11 384 103 12 polished_blackstone_brick_stairs ["weirdo_direction"=0,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
