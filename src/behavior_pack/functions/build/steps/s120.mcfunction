# zone 3 ground 0
scoreboard players set _bzone bce_sys 3
function build/ready_z3
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 0
execute if score _bready bce_sys matches 1 run fill 260 80 -40 299 98 -1 stone
execute if score _bready bce_sys matches 1 run fill 260 80 0 299 98 39 stone
execute if score _bready bce_sys matches 1 run fill 300 80 -40 339 98 -1 stone
execute if score _bready bce_sys matches 1 run fill 300 80 0 339 98 39 stone
execute if score _bready bce_sys matches 1 run fill 260 99 -40 339 99 39 stone_bricks
execute if score _bready bce_sys matches 1 run fill 260 100 -40 339 104 39 air
execute if score _bready bce_sys matches 1 run fill 260 105 -40 339 109 39 air
execute if score _bready bce_sys matches 1 run fill 260 110 -40 339 114 39 air
execute if score _bready bce_sys matches 1 run fill 260 115 -40 339 119 39 air
execute if score _bready bce_sys matches 1 run fill 260 120 -40 339 124 39 air
execute if score _bready bce_sys matches 1 run fill 260 125 -40 339 129 39 air
execute if score _bready bce_sys matches 1 run fill 260 130 -40 339 134 39 air
execute if score _bready bce_sys matches 1 run fill 260 135 -40 339 139 39 air
execute if score _bready bce_sys matches 1 run fill 260 99 -2 298 99 2 gravel
execute if score _bready bce_sys matches 1 run fill 260 99 -3 298 99 -3 stone_bricks
execute if score _bready bce_sys matches 1 run fill 260 99 3 298 99 3 stone_bricks
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
