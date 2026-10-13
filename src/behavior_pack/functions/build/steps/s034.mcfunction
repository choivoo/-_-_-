# zone 0 interior 0
scoreboard players set _bzone bce_sys 0
function build/ready_z0
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 2
execute if score _bready bce_sys matches 1 run fill -13 100 -17 13 112 17 air
execute if score _bready bce_sys matches 1 run fill -13 99 -17 13 99 17 polished_diorite
execute if score _bready bce_sys matches 1 run fill -13 99 -2 13 99 2 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill -13 99 -3 13 99 -3 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill -13 99 3 13 99 3 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 13 100 -2 15 106 2 air
execute if score _bready bce_sys matches 1 run fill 13 107 -1 15 107 1 air
execute if score _bready bce_sys matches 1 run fill 13 100 -3 15 108 -3 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 13 100 3 15 108 3 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 13 108 -2 15 108 2 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill -9 104 -19 -9 109 -19 air
execute if score _bready bce_sys matches 1 run fill -9 104 19 -9 109 19 air
execute if score _bready bce_sys matches 1 run fill -3 104 -19 -3 109 -19 air
execute if score _bready bce_sys matches 1 run fill -3 104 19 -3 109 19 air
execute if score _bready bce_sys matches 1 run fill 3 104 -19 3 109 -19 air
execute if score _bready bce_sys matches 1 run fill 3 104 19 3 109 19 air
execute if score _bready bce_sys matches 1 run fill 9 104 -19 9 109 -19 air
execute if score _bready bce_sys matches 1 run fill 9 104 19 9 109 19 air
execute if score _bready bce_sys matches 1 run fill -10 100 -9 -10 112 -9 polished_andesite
execute if score _bready bce_sys matches 1 run setblock -10 100 -9 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock -10 112 -9 chiseled_deepslate
execute if score _bready bce_sys matches 1 run fill -10 100 9 -10 112 9 polished_andesite
execute if score _bready bce_sys matches 1 run setblock -10 100 9 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock -10 112 9 chiseled_deepslate
execute if score _bready bce_sys matches 1 run fill -5 100 -9 -5 112 -9 polished_andesite
execute if score _bready bce_sys matches 1 run setblock -5 100 -9 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock -5 112 -9 chiseled_deepslate
execute if score _bready bce_sys matches 1 run fill -5 100 9 -5 112 9 polished_andesite
execute if score _bready bce_sys matches 1 run setblock -5 100 9 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock -5 112 9 chiseled_deepslate
execute if score _bready bce_sys matches 1 run fill 0 100 -9 0 112 -9 polished_andesite
execute if score _bready bce_sys matches 1 run setblock 0 100 -9 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 0 112 -9 chiseled_deepslate
execute if score _bready bce_sys matches 1 run fill 0 100 9 0 112 9 polished_andesite
execute if score _bready bce_sys matches 1 run setblock 0 100 9 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 0 112 9 chiseled_deepslate
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
