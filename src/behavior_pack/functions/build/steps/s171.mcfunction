# zone 4 interior 3
scoreboard players set _bzone bce_sys 4
function build/ready_z4
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 2
execute if score _bready bce_sys matches 1 run fill 377 111 -22 377 113 -22 air
execute if score _bready bce_sys matches 1 run setblock 376 111 -22 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 376 112 -22 376 114 -22 air
execute if score _bready bce_sys matches 1 run setblock 375 112 -22 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 375 113 -22 375 115 -22 air
execute if score _bready bce_sys matches 1 run setblock 374 113 -22 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 374 114 -22 374 116 -22 air
execute if score _bready bce_sys matches 1 run setblock 374 114 -23 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 374 115 -23 374 117 -23 air
execute if score _bready bce_sys matches 1 run setblock 374 115 -24 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 374 116 -24 374 118 -24 air
execute if score _bready bce_sys matches 1 run setblock 374 116 -25 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 374 117 -25 374 119 -25 air
execute if score _bready bce_sys matches 1 run setblock 374 117 -26 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 374 118 -26 374 120 -26 air
execute if score _bready bce_sys matches 1 run setblock 375 118 -26 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 375 119 -26 375 121 -26 air
execute if score _bready bce_sys matches 1 run setblock 376 119 -26 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 376 120 -26 376 122 -26 air
execute if score _bready bce_sys matches 1 run setblock 377 120 -26 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 377 121 -26 377 123 -26 air
execute if score _bready bce_sys matches 1 run setblock 378 121 -26 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 378 122 -26 378 124 -26 air
execute if score _bready bce_sys matches 1 run setblock 378 122 -25 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 378 123 -25 378 125 -25 air
execute if score _bready bce_sys matches 1 run setblock 378 123 -24 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 378 124 -24 378 126 -24 air
execute if score _bready bce_sys matches 1 run setblock 378 124 -23 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 378 125 -23 378 127 -23 air
execute if score _bready bce_sys matches 1 run setblock 378 125 -22 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 378 126 -22 378 128 -22 air
execute if score _bready bce_sys matches 1 run setblock 377 126 -22 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 377 127 -22 377 129 -22 air
execute if score _bready bce_sys matches 1 run setblock 376 127 -22 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill 376 128 -22 376 130 -22 air
execute if score _bready bce_sys matches 1 run setblock 375 128 -22 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
