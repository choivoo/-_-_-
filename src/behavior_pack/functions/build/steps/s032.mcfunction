# zone 0 shell 0
scoreboard players set _bzone bce_sys 0
function build/ready_z0
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 1
execute if score _bready bce_sys matches 1 run fill -15 100 -19 15 115 19 stone_bricks
execute if score _bready bce_sys matches 1 run fill -16 99 -20 16 99 20 polished_andesite
execute if score _bready bce_sys matches 1 run fill -16 101 -18 -16 113 -18 stone_bricks
execute if score _bready bce_sys matches 1 run setblock -16 114 -18 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 16 101 -18 16 113 -18 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 16 114 -18 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill -16 101 -12 -16 113 -12 stone_bricks
execute if score _bready bce_sys matches 1 run setblock -16 114 -12 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 16 101 -12 16 113 -12 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 16 114 -12 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill -16 101 -6 -16 113 -6 stone_bricks
execute if score _bready bce_sys matches 1 run setblock -16 114 -6 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 16 101 -6 16 113 -6 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 16 114 -6 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill -16 101 0 -16 113 0 stone_bricks
execute if score _bready bce_sys matches 1 run setblock -16 114 0 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill -16 101 6 -16 113 6 stone_bricks
execute if score _bready bce_sys matches 1 run setblock -16 114 6 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 16 101 6 16 113 6 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 16 114 6 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill -16 101 12 -16 113 12 stone_bricks
execute if score _bready bce_sys matches 1 run setblock -16 114 12 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 16 101 12 16 113 12 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 16 114 12 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill -16 101 18 -16 113 18 stone_bricks
execute if score _bready bce_sys matches 1 run setblock -16 114 18 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 16 101 18 16 113 18 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 16 114 18 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill -12 101 -20 -12 113 -20 stone_bricks
execute if score _bready bce_sys matches 1 run setblock -12 114 -20 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill -12 101 20 -12 113 20 stone_bricks
execute if score _bready bce_sys matches 1 run setblock -12 114 20 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill -6 101 -20 -6 113 -20 stone_bricks
execute if score _bready bce_sys matches 1 run setblock -6 114 -20 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill -6 101 20 -6 113 20 stone_bricks
execute if score _bready bce_sys matches 1 run setblock -6 114 20 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
