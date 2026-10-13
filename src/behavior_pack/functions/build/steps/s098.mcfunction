# zone 2 ground 8
scoreboard players set _bzone bce_sys 2
function build/ready_z2
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 0
execute if score _bready bce_sys matches 1 run fill 181 100 36 182 100 36 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 183 100 36 185 100 36 stone
execute if score _bready bce_sys matches 1 run fill 183 101 36 185 101 36 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 186 100 36 187 101 36 stone
execute if score _bready bce_sys matches 1 run fill 186 102 36 187 102 36 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 188 100 36 188 100 36 stone
execute if score _bready bce_sys matches 1 run fill 188 101 36 188 101 36 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 189 100 36 197 100 36 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 201 100 36 207 100 36 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 208 100 36 209 100 36 stone
execute if score _bready bce_sys matches 1 run fill 208 101 36 209 101 36 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 210 100 36 210 101 36 stone
execute if score _bready bce_sys matches 1 run fill 210 102 36 210 102 36 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 211 100 36 212 100 36 stone
execute if score _bready bce_sys matches 1 run fill 211 101 36 212 101 36 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 213 100 36 223 100 36 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 224 100 36 224 100 36 stone
execute if score _bready bce_sys matches 1 run fill 224 101 36 224 101 36 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 225 100 36 225 101 36 stone
execute if score _bready bce_sys matches 1 run fill 225 102 36 225 102 36 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 226 100 36 228 100 36 stone
execute if score _bready bce_sys matches 1 run fill 226 101 36 228 101 36 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 229 100 36 235 101 36 stone
execute if score _bready bce_sys matches 1 run fill 229 102 36 235 102 36 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 236 100 36 238 100 36 stone
execute if score _bready bce_sys matches 1 run fill 236 101 36 238 101 36 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 239 100 36 239 100 36 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 160 100 37 161 100 37 stone
execute if score _bready bce_sys matches 1 run fill 160 101 37 161 101 37 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 162 100 37 166 100 37 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 167 100 37 167 100 37 stone
execute if score _bready bce_sys matches 1 run fill 167 101 37 167 101 37 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 168 100 37 170 100 37 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 171 100 37 175 100 37 stone
execute if score _bready bce_sys matches 1 run fill 171 101 37 175 101 37 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 176 100 37 180 100 37 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
