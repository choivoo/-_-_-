# moving bridge: one column per 5 ticks after the puzzle is solved (#bridge=99 means idle)
execute if score #bridge bce_sys matches 0 run fill 208 86 -1 208 86 1 stone_bricks
execute if score #bridge bce_sys matches 1 run fill 209 86 -1 209 86 1 stone_bricks
execute if score #bridge bce_sys matches 2 run fill 210 86 -1 210 86 1 stone_bricks
execute if score #bridge bce_sys matches 3 run fill 211 86 -1 211 86 1 stone_bricks
execute if score #bridge bce_sys matches 4 run fill 212 86 -1 212 86 1 stone_bricks
execute if score #bridge bce_sys matches 5 run fill 213 86 -1 213 86 1 stone_bricks
execute if score #bridge bce_sys matches 6 run fill 214 86 -1 214 86 1 stone_bricks
execute if score #bridge bce_sys matches 7 run fill 215 86 -1 215 86 1 stone_bricks
execute if score #bridge bce_sys matches 0..7 run scoreboard players add #bridge bce_sys 1
