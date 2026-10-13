# zone 0 detail 1
scoreboard players set _bzone bce_sys 0
function build/ready_z0
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 3
execute if score _bready bce_sys matches 1 run fill -34 99 31 -33 99 32 cracked_stone_bricks replace stone_bricks
execute if score _bready bce_sys matches 1 run fill -19 99 10 -18 99 10 cracked_stone_bricks replace stone_bricks
execute if score _bready bce_sys matches 1 run fill 5 99 -25 6 99 -24 gravel replace stone_bricks
execute if score _bready bce_sys matches 1 run fill 3 99 24 4 99 26 cracked_stone_bricks replace stone_bricks
execute if score _bready bce_sys matches 1 run fill -15 99 -20 -14 99 -18 gravel replace stone_bricks
execute if score _bready bce_sys matches 1 run fill -2 99 -23 -1 99 -23 gravel replace stone_bricks
execute if score _bready bce_sys matches 1 run fill 13 99 -17 14 99 -17 stone replace stone_bricks
execute if score _bready bce_sys matches 1 run fill -5 99 30 -5 99 31 mossy_stone_bricks replace stone_bricks
execute if score _bready bce_sys matches 1 run fill -16 99 -20 -14 99 -19 gravel replace stone_bricks
execute if score _bready bce_sys matches 1 run fill 26 99 31 28 99 31 cracked_stone_bricks replace stone_bricks
execute if score _bready bce_sys matches 1 run fill -22 99 16 -21 99 16 stone replace stone_bricks
execute if score _bready bce_sys matches 1 run fill -29 99 -27 -28 99 -25 cracked_stone_bricks replace stone_bricks
execute if score _bready bce_sys matches 1 run fill 20 99 9 21 99 11 gravel replace stone_bricks
execute if score _bready bce_sys matches 1 run fill 21 99 -38 23 99 -36 gravel replace stone_bricks
execute if score _bready bce_sys matches 1 run fill -2 99 19 -1 99 19 cracked_stone_bricks replace stone_bricks
execute if score _bready bce_sys matches 1 run fill -30 99 36 -28 99 36 mossy_stone_bricks replace stone_bricks
execute if score _bready bce_sys matches 1 run fill -5 99 -22 -5 99 -22 cracked_stone_bricks replace stone_bricks
execute if score _bready bce_sys matches 1 run fill 20 99 26 20 99 27 stone replace stone_bricks
execute if score _bready bce_sys matches 1 run fill 1 99 -8 1 99 -6 gravel replace stone_bricks
execute if score _bready bce_sys matches 1 run fill 17 99 8 17 99 8 mossy_stone_bricks replace stone_bricks
execute if score _bready bce_sys matches 1 run fill -12 99 -13 -11 99 -12 gravel replace stone_bricks
execute if score _bready bce_sys matches 1 run fill -33 99 2 -31 99 3 cracked_stone_bricks replace stone_bricks
execute if score _bready bce_sys matches 1 run fill -14 99 6 -14 99 8 cracked_stone_bricks replace stone_bricks
execute if score _bready bce_sys matches 1 run fill 17 99 26 17 99 27 cracked_stone_bricks replace stone_bricks
execute if score _bready bce_sys matches 1 run fill -6 100 -14 -6 102 -14 stone_bricks
execute if score _bready bce_sys matches 1 run setblock -6 103 -14 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock -6 104 -14 soul_lantern
execute if score _bready bce_sys matches 1 run fill -6 100 14 -6 102 14 stone_bricks
execute if score _bready bce_sys matches 1 run setblock -6 103 14 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock -6 104 14 soul_lantern
execute if score _bready bce_sys matches 1 run fill 10 100 14 10 102 14 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 10 103 14 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 10 104 14 soul_lantern
execute if score _bready bce_sys matches 1 run fill 12 99 3 12 99 3 polished_andesite replace polished_diorite
execute if score _bready bce_sys matches 1 run fill 7 99 4 8 99 5 polished_andesite replace polished_diorite
execute if score _bready bce_sys matches 1 run fill 4 99 -10 6 99 -8 mossy_stone_bricks replace polished_diorite
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
