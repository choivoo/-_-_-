# zone 2 ground 1
scoreboard players set _bzone bce_sys 2
function build/ready_z2
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 0
execute if score _bready bce_sys matches 1 run fill 182 100 -39 184 100 -39 stone
execute if score _bready bce_sys matches 1 run fill 182 101 -39 184 101 -39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 185 100 -39 186 100 -39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 192 100 -39 192 100 -39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 193 100 -39 197 100 -39 stone
execute if score _bready bce_sys matches 1 run fill 193 101 -39 197 101 -39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 198 100 -39 198 100 -39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 199 100 -39 200 100 -39 stone
execute if score _bready bce_sys matches 1 run fill 199 101 -39 200 101 -39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 201 100 -39 203 100 -39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 204 100 -39 205 100 -39 stone
execute if score _bready bce_sys matches 1 run fill 204 101 -39 205 101 -39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 206 100 -39 206 101 -39 stone
execute if score _bready bce_sys matches 1 run fill 206 102 -39 206 102 -39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 207 100 -39 208 102 -39 stone
execute if score _bready bce_sys matches 1 run fill 207 103 -39 208 103 -39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 209 100 -39 212 101 -39 stone
execute if score _bready bce_sys matches 1 run fill 209 102 -39 212 102 -39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 213 100 -39 215 100 -39 stone
execute if score _bready bce_sys matches 1 run fill 213 101 -39 215 101 -39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 222 100 -39 225 100 -39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 226 100 -39 227 100 -39 stone
execute if score _bready bce_sys matches 1 run fill 226 101 -39 227 101 -39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 228 100 -39 228 101 -39 stone
execute if score _bready bce_sys matches 1 run fill 228 102 -39 228 102 -39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 229 100 -39 229 100 -39 stone
execute if score _bready bce_sys matches 1 run fill 229 101 -39 229 101 -39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 230 100 -39 231 100 -39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 232 100 -39 233 100 -39 stone
execute if score _bready bce_sys matches 1 run fill 232 101 -39 233 101 -39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 234 100 -39 236 100 -39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 237 100 -39 238 100 -39 stone
execute if score _bready bce_sys matches 1 run fill 237 101 -39 238 101 -39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 239 100 -39 239 101 -39 stone
execute if score _bready bce_sys matches 1 run fill 239 102 -39 239 102 -39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 160 100 -38 160 101 -38 stone
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
