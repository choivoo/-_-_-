# zone 3 detail 1
scoreboard players set _bzone bce_sys 3
function build/ready_z3
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 3
execute if score _bready bce_sys matches 1 run fill 335 99 -16 336 99 -15 cracked_stone_bricks replace stone_bricks
execute if score _bready bce_sys matches 1 run fill 270 99 31 271 99 33 stone replace stone_bricks
execute if score _bready bce_sys matches 1 run fill 320 99 7 322 99 7 stone replace stone_bricks
execute if score _bready bce_sys matches 1 run fill 267 99 -20 268 99 -19 gravel replace stone_bricks
execute if score _bready bce_sys matches 1 run fill 281 99 -37 281 99 -37 gravel replace stone_bricks
execute if score _bready bce_sys matches 1 run fill 325 99 -17 325 99 -16 mossy_stone_bricks replace stone_bricks
execute if score _bready bce_sys matches 1 run fill 266 99 -12 266 99 -11 mossy_stone_bricks replace stone_bricks
execute if score _bready bce_sys matches 1 run fill 293 99 26 294 99 27 stone replace stone_bricks
execute if score _bready bce_sys matches 1 run fill 318 99 -15 318 99 -13 mossy_stone_bricks replace stone_bricks
execute if score _bready bce_sys matches 1 run fill 313 99 -19 313 99 -17 gravel replace stone_bricks
execute if score _bready bce_sys matches 1 run fill 285 99 7 287 99 8 cracked_stone_bricks replace stone_bricks
execute if score _bready bce_sys matches 1 run fill 279 99 29 280 99 31 gravel replace stone_bricks
execute if score _bready bce_sys matches 1 run fill 317 99 24 319 99 25 mossy_stone_bricks replace stone_bricks
execute if score _bready bce_sys matches 1 run fill 299 99 -23 300 99 -23 stone replace stone_bricks
execute if score _bready bce_sys matches 1 run fill 278 99 -17 280 99 -15 cracked_stone_bricks replace stone_bricks
execute if score _bready bce_sys matches 1 run fill 294 99 35 295 99 35 mossy_stone_bricks replace stone_bricks
execute if score _bready bce_sys matches 1 run fill 320 99 14 322 99 14 cracked_stone_bricks replace stone_bricks
execute if score _bready bce_sys matches 1 run fill 325 99 -5 326 99 -3 mossy_stone_bricks replace stone_bricks
execute if score _bready bce_sys matches 1 run fill 273 99 -28 274 99 -27 cracked_stone_bricks replace stone_bricks
execute if score _bready bce_sys matches 1 run fill 309 99 -6 309 99 -6 gravel replace stone_bricks
execute if score _bready bce_sys matches 1 run fill 275 99 -25 276 99 -24 cracked_stone_bricks replace stone_bricks
execute if score _bready bce_sys matches 1 run fill 314 99 -29 314 99 -28 gravel replace stone_bricks
execute if score _bready bce_sys matches 1 run fill 278 99 35 278 99 35 stone replace stone_bricks
execute if score _bready bce_sys matches 1 run fill 263 99 20 265 99 20 gravel replace stone_bricks
execute if score _bready bce_sys matches 1 run fill 305 99 -39 320 99 38 air
execute if score _bready bce_sys matches 1 run fill 305 90 -39 320 90 38 stone
execute if score _bready bce_sys matches 1 run fill 305 91 -39 320 98 38 air
execute if score _bready bce_sys matches 1 run fill 305 99 -1 320 99 1 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 306 99 0 cracked_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 310 99 0 cracked_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 314 99 0 cracked_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 318 99 0 cracked_stone_bricks
execute if score _bready bce_sys matches 1 run fill 306 90 37 306 90 38 stone_brick_stairs ["weirdo_direction"=0,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 307 91 37 307 91 38 stone_brick_stairs ["weirdo_direction"=0,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 308 92 37 308 92 38 stone_brick_stairs ["weirdo_direction"=0,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 309 93 37 309 93 38 stone_brick_stairs ["weirdo_direction"=0,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
