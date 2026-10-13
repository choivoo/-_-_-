# zone 0 interior 1
scoreboard players set _bzone bce_sys 0
function build/ready_z0
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 2
execute if score _bready bce_sys matches 1 run fill 5 100 -9 5 112 -9 polished_andesite
execute if score _bready bce_sys matches 1 run setblock 5 100 -9 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 5 112 -9 chiseled_deepslate
execute if score _bready bce_sys matches 1 run fill 5 100 9 5 112 9 polished_andesite
execute if score _bready bce_sys matches 1 run setblock 5 100 9 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 5 112 9 chiseled_deepslate
execute if score _bready bce_sys matches 1 run fill 10 100 -9 10 112 -9 polished_andesite
execute if score _bready bce_sys matches 1 run setblock 10 100 -9 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 10 112 -9 chiseled_deepslate
execute if score _bready bce_sys matches 1 run fill 10 100 9 10 112 9 polished_andesite
execute if score _bready bce_sys matches 1 run setblock 10 100 9 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 10 112 9 chiseled_deepslate
execute if score _bready bce_sys matches 1 run fill -13 100 -5 -10 100 5 stone_bricks
execute if score _bready bce_sys matches 1 run fill -13 101 -3 -11 101 3 stone_bricks
execute if score _bready bce_sys matches 1 run fill -13 102 -1 -12 102 1 gilded_blackstone
execute if score _bready bce_sys matches 1 run setblock -9 100 0 stone_brick_stairs ["weirdo_direction"=1,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run setblock -9 100 -1 stone_brick_stairs ["weirdo_direction"=1,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run setblock -9 100 1 stone_brick_stairs ["weirdo_direction"=1,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill -4 100 -17 -4 100 17 stone_bricks
execute if score _bready bce_sys matches 1 run fill -10 113 -4 -6 115 4 air
execute if score _bready bce_sys matches 1 run setblock -5 100 0 cobblestone
execute if score _bready bce_sys matches 1 run setblock -8 100 2 stone_bricks
execute if score _bready bce_sys matches 1 run setblock -6 100 -3 mossy_cobblestone
execute if score _bready bce_sys matches 1 run setblock -11 100 -5 gravel
execute if score _bready bce_sys matches 1 run setblock -9 100 2 cobblestone
execute if score _bready bce_sys matches 1 run setblock -9 100 2 cobblestone
execute if score _bready bce_sys matches 1 run setblock -5 100 -3 gravel
execute if score _bready bce_sys matches 1 run fill 2 113 -14 7 115 -9 air
execute if score _bready bce_sys matches 1 run setblock 7 100 -12 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 3 100 -14 mossy_cobblestone
execute if score _bready bce_sys matches 1 run setblock 6 100 -14 mossy_cobblestone
execute if score _bready bce_sys matches 1 run setblock 6 100 -12 cobblestone
execute if score _bready bce_sys matches 1 run setblock 7 100 -8 gravel
execute if score _bready bce_sys matches 1 run setblock 6 100 -15 gravel
execute if score _bready bce_sys matches 1 run setblock 3 100 -15 stone_bricks
execute if score _bready bce_sys matches 1 run fill 4 113 8 9 115 14 air
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
