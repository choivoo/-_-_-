# zone 3 detail 6
scoreboard players set _bzone bce_sys 3
function build/ready_z3
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 3
execute if score _bready bce_sys matches 1 run fill 269 102 -19 271 102 -19 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 271 100 21 273 100 21 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 270 100 22 274 100 22 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 269 100 23 275 100 23 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 269 100 24 275 100 24 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 269 100 25 275 100 25 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 270 100 26 274 100 26 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 271 100 27 273 100 27 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 271 101 22 273 101 22 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 270 101 23 274 101 23 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 270 101 24 274 101 24 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 270 101 25 274 101 25 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 271 101 26 273 101 26 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 271 102 23 273 102 23 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 271 102 24 273 102 24 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 271 102 25 273 102 25 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 327 100 -33 329 100 -33 cobblestone
execute if score _bready bce_sys matches 1 run fill 326 100 -32 330 100 -32 cobblestone
execute if score _bready bce_sys matches 1 run fill 325 100 -31 331 100 -31 cobblestone
execute if score _bready bce_sys matches 1 run fill 325 100 -30 331 100 -30 cobblestone
execute if score _bready bce_sys matches 1 run fill 325 100 -29 331 100 -29 cobblestone
execute if score _bready bce_sys matches 1 run fill 326 100 -28 330 100 -28 cobblestone
execute if score _bready bce_sys matches 1 run fill 327 100 -27 329 100 -27 cobblestone
execute if score _bready bce_sys matches 1 run fill 327 101 -32 329 101 -32 cobblestone
execute if score _bready bce_sys matches 1 run fill 326 101 -31 330 101 -31 cobblestone
execute if score _bready bce_sys matches 1 run fill 326 101 -30 330 101 -30 cobblestone
execute if score _bready bce_sys matches 1 run fill 326 101 -29 330 101 -29 cobblestone
execute if score _bready bce_sys matches 1 run fill 327 101 -28 329 101 -28 cobblestone
execute if score _bready bce_sys matches 1 run fill 327 102 -31 329 102 -31 cobblestone
execute if score _bready bce_sys matches 1 run fill 327 102 -30 329 102 -30 cobblestone
execute if score _bready bce_sys matches 1 run fill 327 102 -29 329 102 -29 cobblestone
execute if score _bready bce_sys matches 1 run fill 329 100 27 331 100 27 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 328 100 28 332 100 28 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 327 100 29 333 100 29 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 327 100 30 333 100 30 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 327 100 31 333 100 31 mossy_cobblestone
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
