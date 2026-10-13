# zone 3 shell 2
scoreboard players set _bzone bce_sys 3
function build/ready_z3
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 1
execute if score _bready bce_sys matches 1 run setblock 295 107 -28 air
execute if score _bready bce_sys matches 1 run setblock 295 108 -28 air
execute if score _bready bce_sys matches 1 run setblock 295 109 -28 air
execute if score _bready bce_sys matches 1 run fill 294 100 -34 302 122 -26 stone_bricks
execute if score _bready bce_sys matches 1 run fill 295 100 -33 301 121 -27 air
execute if score _bready bce_sys matches 1 run fill 293 120 -35 303 120 -25 deepslate_bricks
execute if score _bready bce_sys matches 1 run fill 295 120 -33 301 120 -27 spruce_planks
execute if score _bready bce_sys matches 1 run setblock 293 121 -35 deepslate_bricks
execute if score _bready bce_sys matches 1 run setblock 293 121 -25 deepslate_bricks
execute if score _bready bce_sys matches 1 run setblock 295 121 -35 deepslate_bricks
execute if score _bready bce_sys matches 1 run setblock 295 121 -25 deepslate_bricks
execute if score _bready bce_sys matches 1 run setblock 297 121 -35 deepslate_bricks
execute if score _bready bce_sys matches 1 run setblock 297 121 -25 deepslate_bricks
execute if score _bready bce_sys matches 1 run setblock 299 121 -35 deepslate_bricks
execute if score _bready bce_sys matches 1 run setblock 299 121 -25 deepslate_bricks
execute if score _bready bce_sys matches 1 run setblock 301 121 -35 deepslate_bricks
execute if score _bready bce_sys matches 1 run setblock 301 121 -25 deepslate_bricks
execute if score _bready bce_sys matches 1 run setblock 303 121 -35 deepslate_bricks
execute if score _bready bce_sys matches 1 run setblock 303 121 -25 deepslate_bricks
execute if score _bready bce_sys matches 1 run fill 297 104 -34 297 106 -34 air
execute if score _bready bce_sys matches 1 run fill 297 112 -26 297 114 -26 air
execute if score _bready bce_sys matches 1 run fill 297 100 -34 299 101 -34 air
execute if score _bready bce_sys matches 1 run fill 298 100 -30 298 119 -30 polished_andesite
execute if score _bready bce_sys matches 1 run setblock 296 100 -31 stone_bricks
execute if score _bready bce_sys matches 1 run fill 296 101 -31 296 103 -31 air
execute if score _bready bce_sys matches 1 run setblock 296 101 -32 stone_bricks
execute if score _bready bce_sys matches 1 run fill 296 102 -32 296 104 -32 air
execute if score _bready bce_sys matches 1 run setblock 297 102 -32 stone_bricks
execute if score _bready bce_sys matches 1 run fill 297 103 -32 297 105 -32 air
execute if score _bready bce_sys matches 1 run setblock 298 103 -32 stone_bricks
execute if score _bready bce_sys matches 1 run fill 298 104 -32 298 106 -32 air
execute if score _bready bce_sys matches 1 run setblock 299 104 -32 stone_bricks
execute if score _bready bce_sys matches 1 run fill 299 105 -32 299 107 -32 air
execute if score _bready bce_sys matches 1 run setblock 300 105 -32 stone_bricks
execute if score _bready bce_sys matches 1 run fill 300 106 -32 300 108 -32 air
execute if score _bready bce_sys matches 1 run setblock 300 106 -31 stone_bricks
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
