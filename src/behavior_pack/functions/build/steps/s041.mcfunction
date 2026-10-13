# zone 0 detail 3
scoreboard players set _bzone bce_sys 0
function build/ready_z0
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 3
execute if score _bready bce_sys matches 1 run fill 12 99 -1 12 99 -1 polished_andesite replace polished_diorite
execute if score _bready bce_sys matches 1 run setblock -9 112 -16 web
execute if score _bready bce_sys matches 1 run setblock -7 112 16 web
execute if score _bready bce_sys matches 1 run setblock -2 112 16 web
execute if score _bready bce_sys matches 1 run setblock -12 112 -16 web
execute if score _bready bce_sys matches 1 run setblock 10 112 16 web
execute if score _bready bce_sys matches 1 run setblock -9 112 16 web
execute if score _bready bce_sys matches 1 run setblock 5 112 16 web
execute if score _bready bce_sys matches 1 run setblock -12 112 -16 web
execute if score _bready bce_sys matches 1 run setblock 1 112 16 web
execute if score _bready bce_sys matches 1 run setblock 9 112 16 web
execute if score _bready bce_sys matches 1 run fill 19 100 -13 37 100 -13 stone_bricks
execute if score _bready bce_sys matches 1 run fill 19 100 13 37 100 13 stone_bricks
execute if score _bready bce_sys matches 1 run fill 37 100 -13 37 100 -4 stone_bricks
execute if score _bready bce_sys matches 1 run fill 37 100 4 37 100 13 stone_bricks
execute if score _bready bce_sys matches 1 run fill 19 101 -13 19 103 -13 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 19 104 -13 lantern
execute if score _bready bce_sys matches 1 run fill 19 101 13 19 103 13 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 19 104 13 lantern
execute if score _bready bce_sys matches 1 run fill 37 101 -13 37 103 -13 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 37 104 -13 lantern
execute if score _bready bce_sys matches 1 run fill 37 101 13 37 103 13 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 37 104 13 lantern
execute if score _bready bce_sys matches 1 run fill 37 101 -4 37 103 -4 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 37 104 -4 lantern
execute if score _bready bce_sys matches 1 run fill 37 101 4 37 103 4 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 37 104 4 lantern
execute if score _bready bce_sys matches 1 run setblock 28 100 -8 hay_block
execute if score _bready bce_sys matches 1 run setblock 28 101 -8 hay_block
execute if score _bready bce_sys matches 1 run setblock 28 100 8 hay_block
execute if score _bready bce_sys matches 1 run setblock 28 101 8 hay_block
execute if score _bready bce_sys matches 1 run setblock 30 100 -12 fletching_table
execute if score _bready bce_sys matches 1 run setblock 30 100 12 fletching_table
execute if score _bready bce_sys matches 1 run fill 21 100 -11 23 100 -9 polished_andesite
execute if score _bready bce_sys matches 1 run setblock 22 100 -10 gilded_blackstone
execute if score _bready bce_sys matches 1 run setblock 22 101 -10 smithing_table
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
