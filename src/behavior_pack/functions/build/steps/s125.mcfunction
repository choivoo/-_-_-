# zone 3 shell 4
scoreboard players set _bzone bce_sys 3
function build/ready_z3
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 1
execute if score _bready bce_sys matches 1 run setblock 299 121 25 deepslate_bricks
execute if score _bready bce_sys matches 1 run setblock 299 121 35 deepslate_bricks
execute if score _bready bce_sys matches 1 run setblock 301 121 25 deepslate_bricks
execute if score _bready bce_sys matches 1 run setblock 301 121 35 deepslate_bricks
execute if score _bready bce_sys matches 1 run setblock 303 121 25 deepslate_bricks
execute if score _bready bce_sys matches 1 run setblock 303 121 35 deepslate_bricks
execute if score _bready bce_sys matches 1 run fill 297 104 26 297 106 26 air
execute if score _bready bce_sys matches 1 run fill 297 112 34 297 114 34 air
execute if score _bready bce_sys matches 1 run fill 297 100 26 299 101 26 air
execute if score _bready bce_sys matches 1 run fill 298 100 30 298 119 30 polished_andesite
execute if score _bready bce_sys matches 1 run setblock 296 100 29 stone_bricks
execute if score _bready bce_sys matches 1 run fill 296 101 29 296 103 29 air
execute if score _bready bce_sys matches 1 run setblock 296 101 28 stone_bricks
execute if score _bready bce_sys matches 1 run fill 296 102 28 296 104 28 air
execute if score _bready bce_sys matches 1 run setblock 297 102 28 stone_bricks
execute if score _bready bce_sys matches 1 run fill 297 103 28 297 105 28 air
execute if score _bready bce_sys matches 1 run setblock 298 103 28 stone_bricks
execute if score _bready bce_sys matches 1 run fill 298 104 28 298 106 28 air
execute if score _bready bce_sys matches 1 run setblock 299 104 28 stone_bricks
execute if score _bready bce_sys matches 1 run fill 299 105 28 299 107 28 air
execute if score _bready bce_sys matches 1 run setblock 300 105 28 stone_bricks
execute if score _bready bce_sys matches 1 run fill 300 106 28 300 108 28 air
execute if score _bready bce_sys matches 1 run setblock 300 106 29 stone_bricks
execute if score _bready bce_sys matches 1 run fill 300 107 29 300 109 29 air
execute if score _bready bce_sys matches 1 run setblock 300 107 30 stone_bricks
execute if score _bready bce_sys matches 1 run fill 300 108 30 300 110 30 air
execute if score _bready bce_sys matches 1 run setblock 300 108 31 stone_bricks
execute if score _bready bce_sys matches 1 run fill 300 109 31 300 111 31 air
execute if score _bready bce_sys matches 1 run setblock 300 109 32 stone_bricks
execute if score _bready bce_sys matches 1 run fill 300 110 32 300 112 32 air
execute if score _bready bce_sys matches 1 run setblock 299 110 32 stone_bricks
execute if score _bready bce_sys matches 1 run fill 299 111 32 299 113 32 air
execute if score _bready bce_sys matches 1 run setblock 298 111 32 stone_bricks
execute if score _bready bce_sys matches 1 run fill 298 112 32 298 114 32 air
execute if score _bready bce_sys matches 1 run setblock 297 112 32 stone_bricks
execute if score _bready bce_sys matches 1 run fill 297 113 32 297 115 32 air
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
