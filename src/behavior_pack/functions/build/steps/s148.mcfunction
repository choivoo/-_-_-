# zone 4 interior 0
scoreboard players set #bzone bce_sys 4
execute unless block 400 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 400 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 400 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 400 79 0 stone run scoreboard players set #bstage bce_sys 2
execute if block 400 79 0 stone run fill 378 100 -4 379 112 4 air
execute if block 400 79 0 stone run fill 379 100 -13 398 122 13 air
execute if block 400 79 0 stone run fill 379 99 -13 398 99 13 polished_blackstone
execute if block 400 79 0 stone run fill 379 99 -2 398 99 2 gilded_blackstone
execute if block 400 79 0 stone run fill 382 100 -9 382 121 -9 polished_blackstone_bricks
execute if block 400 79 0 stone run setblock 382 100 -9 chiseled_polished_blackstone
execute if block 400 79 0 stone run setblock 382 121 -9 chiseled_polished_blackstone
execute if block 400 79 0 stone run fill 381 121 -10 383 121 -8 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 382 100 9 382 121 9 polished_blackstone_bricks
execute if block 400 79 0 stone run setblock 382 100 9 chiseled_polished_blackstone
execute if block 400 79 0 stone run setblock 382 121 9 chiseled_polished_blackstone
execute if block 400 79 0 stone run fill 381 121 8 383 121 10 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 387 100 -9 387 121 -9 polished_blackstone_bricks
execute if block 400 79 0 stone run setblock 387 100 -9 chiseled_polished_blackstone
execute if block 400 79 0 stone run setblock 387 121 -9 chiseled_polished_blackstone
execute if block 400 79 0 stone run fill 386 121 -10 388 121 -8 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 387 100 9 387 121 9 polished_blackstone_bricks
execute if block 400 79 0 stone run setblock 387 100 9 chiseled_polished_blackstone
execute if block 400 79 0 stone run setblock 387 121 9 chiseled_polished_blackstone
execute if block 400 79 0 stone run fill 386 121 8 388 121 10 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 392 100 -9 392 121 -9 polished_blackstone_bricks
execute if block 400 79 0 stone run setblock 392 100 -9 chiseled_polished_blackstone
execute if block 400 79 0 stone run setblock 392 121 -9 chiseled_polished_blackstone
execute if block 400 79 0 stone run fill 391 121 -10 393 121 -8 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 392 100 9 392 121 9 polished_blackstone_bricks
execute if block 400 79 0 stone run setblock 392 100 9 chiseled_polished_blackstone
execute if block 400 79 0 stone run setblock 392 121 9 chiseled_polished_blackstone
execute if block 400 79 0 stone run fill 391 121 8 393 121 10 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 379 112 10 398 112 13 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 381 100 11 381 100 12 polished_blackstone_brick_stairs ["weirdo_direction"=0,"upside_down_bit"=false]
execute if block 400 79 0 stone run fill 381 101 11 381 103 12 air
execute if block 400 79 0 stone run fill 382 101 11 382 101 12 polished_blackstone_brick_stairs ["weirdo_direction"=0,"upside_down_bit"=false]
execute if block 400 79 0 stone run fill 382 102 11 382 104 12 air
execute if block 400 79 0 stone run fill 383 102 11 383 102 12 polished_blackstone_brick_stairs ["weirdo_direction"=0,"upside_down_bit"=false]
execute if block 400 79 0 stone run fill 383 103 11 383 105 12 air
execute if block 400 79 0 stone run fill 384 103 11 384 103 12 polished_blackstone_brick_stairs ["weirdo_direction"=0,"upside_down_bit"=false]
execute if block 400 79 0 stone run scoreboard players add #bstep bce_sys 1
