# zone 3 shell 5
scoreboard players set _bzone bce_sys 3
function build/ready_z3
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 1
execute if score _bready bce_sys matches 1 run setblock 296 113 32 stone_bricks
execute if score _bready bce_sys matches 1 run fill 296 114 32 296 116 32 air
execute if score _bready bce_sys matches 1 run setblock 296 114 31 stone_bricks
execute if score _bready bce_sys matches 1 run fill 296 115 31 296 117 31 air
execute if score _bready bce_sys matches 1 run setblock 296 115 30 stone_bricks
execute if score _bready bce_sys matches 1 run fill 296 116 30 296 118 30 air
execute if score _bready bce_sys matches 1 run setblock 296 116 29 stone_bricks
execute if score _bready bce_sys matches 1 run fill 296 117 29 296 119 29 air
execute if score _bready bce_sys matches 1 run setblock 296 117 28 stone_bricks
execute if score _bready bce_sys matches 1 run fill 296 118 28 296 120 28 air
execute if score _bready bce_sys matches 1 run setblock 297 118 28 stone_bricks
execute if score _bready bce_sys matches 1 run fill 297 119 28 297 121 28 air
execute if score _bready bce_sys matches 1 run setblock 298 119 30 lantern
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
