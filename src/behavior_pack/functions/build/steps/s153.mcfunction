# zone 4 interior 5
scoreboard players set #bzone bce_sys 4
execute unless block 400 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 400 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 400 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 400 79 0 stone run scoreboard players set #bstage bce_sys 2
execute if block 400 79 0 stone run setblock 374 115 24 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 374 116 24 374 118 24 air
execute if block 400 79 0 stone run setblock 374 116 23 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 374 117 23 374 119 23 air
execute if block 400 79 0 stone run setblock 374 117 22 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 374 118 22 374 120 22 air
execute if block 400 79 0 stone run setblock 375 118 22 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 375 119 22 375 121 22 air
execute if block 400 79 0 stone run setblock 376 119 22 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 376 120 22 376 122 22 air
execute if block 400 79 0 stone run setblock 377 120 22 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 377 121 22 377 123 22 air
execute if block 400 79 0 stone run setblock 378 121 22 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 378 122 22 378 124 22 air
execute if block 400 79 0 stone run setblock 378 122 23 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 378 123 23 378 125 23 air
execute if block 400 79 0 stone run setblock 378 123 24 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 378 124 24 378 126 24 air
execute if block 400 79 0 stone run setblock 378 124 25 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 378 125 25 378 127 25 air
execute if block 400 79 0 stone run setblock 378 125 26 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 378 126 26 378 128 26 air
execute if block 400 79 0 stone run setblock 377 126 26 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 377 127 26 377 129 26 air
execute if block 400 79 0 stone run setblock 376 127 26 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 376 128 26 376 130 26 air
execute if block 400 79 0 stone run setblock 375 128 26 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 375 129 26 375 131 26 air
execute if block 400 79 0 stone run setblock 374 129 26 polished_blackstone_bricks
execute if block 400 79 0 stone run fill 374 130 26 374 132 26 air
execute if block 400 79 0 stone run scoreboard players add #bstep bce_sys 1
