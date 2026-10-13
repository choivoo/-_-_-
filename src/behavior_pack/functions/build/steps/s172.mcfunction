# zone 4 interior 4
scoreboard players set _bzone bce_sys 4
function build/ready_z4
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 2
execute if score _bready bce_sys matches 1 run fill 375 129 -22 375 131 -22 air
execute if score _bready bce_sys matches 1 run setblock 374 129 -22 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 374 130 -22 374 132 -22 air
execute if score _bready bce_sys matches 1 run fill 380 100 24 380 101 24 air
execute if score _bready bce_sys matches 1 run fill 379 100 24 379 101 24 air
execute if score _bready bce_sys matches 1 run fill 376 100 24 376 130 24 chiseled_polished_blackstone
execute if score _bready bce_sys matches 1 run setblock 374 100 23 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 374 101 23 374 103 23 air
execute if score _bready bce_sys matches 1 run setblock 374 101 22 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 374 102 22 374 104 22 air
execute if score _bready bce_sys matches 1 run setblock 375 102 22 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 375 103 22 375 105 22 air
execute if score _bready bce_sys matches 1 run setblock 376 103 22 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 376 104 22 376 106 22 air
execute if score _bready bce_sys matches 1 run setblock 377 104 22 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 377 105 22 377 107 22 air
execute if score _bready bce_sys matches 1 run setblock 378 105 22 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 378 106 22 378 108 22 air
execute if score _bready bce_sys matches 1 run setblock 378 106 23 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 378 107 23 378 109 23 air
execute if score _bready bce_sys matches 1 run setblock 378 107 24 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 378 108 24 378 110 24 air
execute if score _bready bce_sys matches 1 run setblock 378 108 25 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 378 109 25 378 111 25 air
execute if score _bready bce_sys matches 1 run setblock 378 109 26 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 378 110 26 378 112 26 air
execute if score _bready bce_sys matches 1 run setblock 377 110 26 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 377 111 26 377 113 26 air
execute if score _bready bce_sys matches 1 run setblock 376 111 26 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 376 112 26 376 114 26 air
execute if score _bready bce_sys matches 1 run setblock 375 112 26 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 375 113 26 375 115 26 air
execute if score _bready bce_sys matches 1 run setblock 374 113 26 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 374 114 26 374 116 26 air
execute if score _bready bce_sys matches 1 run setblock 374 114 25 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 374 115 25 374 117 25 air
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
