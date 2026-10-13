# zone 3 detail 0
scoreboard players set #bzone bce_sys 3
execute unless block 300 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 300 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 300 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 300 79 0 stone run scoreboard players set #bstage bce_sys 3
execute if block 300 79 0 stone run fill 314 99 15 315 99 17 cracked_stone_bricks replace stone_bricks
execute if block 300 79 0 stone run fill 326 99 20 327 99 21 mossy_stone_bricks replace stone_bricks
execute if block 300 79 0 stone run fill 308 99 6 309 99 6 stone replace stone_bricks
execute if block 300 79 0 stone run fill 272 99 -23 273 99 -21 stone replace stone_bricks
execute if block 300 79 0 stone run fill 285 99 -29 285 99 -28 stone replace stone_bricks
execute if block 300 79 0 stone run fill 318 99 3 320 99 5 mossy_stone_bricks replace stone_bricks
execute if block 300 79 0 stone run fill 305 99 -29 306 99 -28 stone replace stone_bricks
execute if block 300 79 0 stone run fill 279 99 -9 280 99 -8 stone replace stone_bricks
execute if block 300 79 0 stone run fill 308 99 -3 310 99 -1 gravel replace stone_bricks
execute if block 300 79 0 stone run fill 298 99 15 298 99 15 cracked_stone_bricks replace stone_bricks
execute if block 300 79 0 stone run fill 334 99 36 335 99 37 gravel replace stone_bricks
execute if block 300 79 0 stone run fill 278 99 15 279 99 16 cracked_stone_bricks replace stone_bricks
execute if block 300 79 0 stone run fill 331 99 -5 333 99 -5 gravel replace stone_bricks
execute if block 300 79 0 stone run fill 281 99 2 282 99 2 mossy_stone_bricks replace stone_bricks
execute if block 300 79 0 stone run fill 327 99 33 328 99 34 mossy_stone_bricks replace stone_bricks
execute if block 300 79 0 stone run fill 271 99 -14 271 99 -13 mossy_stone_bricks replace stone_bricks
execute if block 300 79 0 stone run fill 297 99 36 299 99 36 mossy_stone_bricks replace stone_bricks
execute if block 300 79 0 stone run fill 278 99 -16 280 99 -14 mossy_stone_bricks replace stone_bricks
execute if block 300 79 0 stone run fill 267 99 -9 267 99 -8 stone replace stone_bricks
execute if block 300 79 0 stone run fill 283 99 25 285 99 26 stone replace stone_bricks
execute if block 300 79 0 stone run fill 291 99 28 291 99 28 cracked_stone_bricks replace stone_bricks
execute if block 300 79 0 stone run fill 303 99 -12 305 99 -10 gravel replace stone_bricks
execute if block 300 79 0 stone run fill 281 99 -8 283 99 -6 stone replace stone_bricks
execute if block 300 79 0 stone run fill 304 99 -13 304 99 -11 stone replace stone_bricks
execute if block 300 79 0 stone run fill 303 99 -32 303 99 -32 stone replace stone_bricks
execute if block 300 79 0 stone run fill 268 99 1 270 99 1 stone replace stone_bricks
execute if block 300 79 0 stone run fill 312 99 -19 312 99 -19 gravel replace stone_bricks
execute if block 300 79 0 stone run fill 263 99 15 264 99 17 stone replace stone_bricks
execute if block 300 79 0 stone run fill 319 99 -21 319 99 -21 stone replace stone_bricks
execute if block 300 79 0 stone run fill 276 99 37 276 99 37 stone replace stone_bricks
execute if block 300 79 0 stone run fill 332 99 -5 334 99 -4 gravel replace stone_bricks
execute if block 300 79 0 stone run fill 295 99 -18 295 99 -16 gravel replace stone_bricks
execute if block 300 79 0 stone run fill 262 99 -36 263 99 -34 cracked_stone_bricks replace stone_bricks
execute if block 300 79 0 stone run fill 266 99 4 268 99 4 mossy_stone_bricks replace stone_bricks
execute if block 300 79 0 stone run fill 295 99 3 295 99 3 stone replace stone_bricks
execute if block 300 79 0 stone run fill 336 99 22 336 99 22 stone replace stone_bricks
execute if block 300 79 0 stone run scoreboard players add #bstep bce_sys 1
