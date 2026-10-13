# zone 2 ground 9
scoreboard players set _bzone bce_sys 2
function build/ready_z2
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 0
execute if score _bready bce_sys matches 1 run fill 181 100 37 184 100 37 stone
execute if score _bready bce_sys matches 1 run fill 181 101 37 184 101 37 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 185 100 37 187 101 37 stone
execute if score _bready bce_sys matches 1 run fill 185 102 37 187 102 37 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 188 100 37 196 100 37 stone
execute if score _bready bce_sys matches 1 run fill 188 101 37 196 101 37 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 197 100 37 197 100 37 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 202 100 37 205 100 37 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 206 100 37 208 100 37 stone
execute if score _bready bce_sys matches 1 run fill 206 101 37 208 101 37 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 209 100 37 211 101 37 stone
execute if score _bready bce_sys matches 1 run fill 209 102 37 211 102 37 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 212 100 37 214 100 37 stone
execute if score _bready bce_sys matches 1 run fill 212 101 37 214 101 37 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 215 100 37 217 100 37 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 218 100 37 220 100 37 stone
execute if score _bready bce_sys matches 1 run fill 218 101 37 220 101 37 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 221 100 37 221 100 37 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 222 100 37 223 100 37 stone
execute if score _bready bce_sys matches 1 run fill 222 101 37 223 101 37 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 224 100 37 224 101 37 stone
execute if score _bready bce_sys matches 1 run fill 224 102 37 224 102 37 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 225 100 37 227 100 37 stone
execute if score _bready bce_sys matches 1 run fill 225 101 37 227 101 37 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 228 100 37 229 101 37 stone
execute if score _bready bce_sys matches 1 run fill 228 102 37 229 102 37 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 230 100 37 233 102 37 stone
execute if score _bready bce_sys matches 1 run fill 230 103 37 233 103 37 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 234 100 37 234 101 37 stone
execute if score _bready bce_sys matches 1 run fill 234 102 37 234 102 37 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 235 100 37 239 100 37 stone
execute if score _bready bce_sys matches 1 run fill 235 101 37 239 101 37 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 160 100 38 160 101 38 stone
execute if score _bready bce_sys matches 1 run fill 160 102 38 160 102 38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 161 100 38 162 100 38 stone
execute if score _bready bce_sys matches 1 run fill 161 101 38 162 101 38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
