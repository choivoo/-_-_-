# zone 3 detail 5
scoreboard players set _bzone bce_sys 3
function build/ready_z3
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 3
execute if score _bready bce_sys matches 1 run fill 280 100 29 288 100 29 cobblestone
execute if score _bready bce_sys matches 1 run fill 280 100 30 288 100 30 cobblestone
execute if score _bready bce_sys matches 1 run fill 280 100 31 288 100 31 cobblestone
execute if score _bready bce_sys matches 1 run fill 280 100 32 288 100 32 cobblestone
execute if score _bready bce_sys matches 1 run fill 280 100 33 288 100 33 cobblestone
execute if score _bready bce_sys matches 1 run fill 281 100 34 287 100 34 cobblestone
execute if score _bready bce_sys matches 1 run fill 282 100 35 286 100 35 cobblestone
execute if score _bready bce_sys matches 1 run fill 283 101 28 285 101 28 cobblestone
execute if score _bready bce_sys matches 1 run fill 282 101 29 286 101 29 cobblestone
execute if score _bready bce_sys matches 1 run fill 281 101 30 287 101 30 cobblestone
execute if score _bready bce_sys matches 1 run fill 281 101 31 287 101 31 cobblestone
execute if score _bready bce_sys matches 1 run fill 281 101 32 287 101 32 cobblestone
execute if score _bready bce_sys matches 1 run fill 282 101 33 286 101 33 cobblestone
execute if score _bready bce_sys matches 1 run fill 283 101 34 285 101 34 cobblestone
execute if score _bready bce_sys matches 1 run fill 283 102 29 285 102 29 cobblestone
execute if score _bready bce_sys matches 1 run fill 282 102 30 286 102 30 cobblestone
execute if score _bready bce_sys matches 1 run fill 282 102 31 286 102 31 cobblestone
execute if score _bready bce_sys matches 1 run fill 282 102 32 286 102 32 cobblestone
execute if score _bready bce_sys matches 1 run fill 283 102 33 285 102 33 cobblestone
execute if score _bready bce_sys matches 1 run fill 283 103 30 285 103 30 cobblestone
execute if score _bready bce_sys matches 1 run fill 283 103 31 285 103 31 cobblestone
execute if score _bready bce_sys matches 1 run fill 283 103 32 285 103 32 cobblestone
execute if score _bready bce_sys matches 1 run fill 269 100 -23 271 100 -23 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 268 100 -22 272 100 -22 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 267 100 -21 273 100 -21 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 267 100 -20 273 100 -20 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 267 100 -19 273 100 -19 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 268 100 -18 272 100 -18 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 269 100 -17 271 100 -17 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 269 101 -22 271 101 -22 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 268 101 -21 272 101 -21 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 268 101 -20 272 101 -20 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 268 101 -19 272 101 -19 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 269 101 -18 271 101 -18 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 269 102 -21 271 102 -21 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 269 102 -20 271 102 -20 mossy_cobblestone
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
