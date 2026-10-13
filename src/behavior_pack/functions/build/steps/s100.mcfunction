# zone 2 ground 10
scoreboard players set _bzone bce_sys 2
function build/ready_z2
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 0
execute if score _bready bce_sys matches 1 run fill 163 100 38 170 100 38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 171 100 38 171 100 38 stone
execute if score _bready bce_sys matches 1 run fill 171 101 38 171 101 38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 172 100 38 174 101 38 stone
execute if score _bready bce_sys matches 1 run fill 172 102 38 174 102 38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 175 100 38 179 100 38 stone
execute if score _bready bce_sys matches 1 run fill 175 101 38 179 101 38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 180 100 38 180 100 38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 181 100 38 181 100 38 stone
execute if score _bready bce_sys matches 1 run fill 181 101 38 181 101 38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 182 100 38 183 101 38 stone
execute if score _bready bce_sys matches 1 run fill 182 102 38 183 102 38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 184 100 38 188 102 38 stone
execute if score _bready bce_sys matches 1 run fill 184 103 38 188 103 38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 189 100 38 191 101 38 stone
execute if score _bready bce_sys matches 1 run fill 189 102 38 191 102 38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 192 100 38 195 100 38 stone
execute if score _bready bce_sys matches 1 run fill 192 101 38 195 101 38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 196 100 38 197 100 38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 202 100 38 205 100 38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 206 100 38 206 100 38 stone
execute if score _bready bce_sys matches 1 run fill 206 101 38 206 101 38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 207 100 38 208 101 38 stone
execute if score _bready bce_sys matches 1 run fill 207 102 38 208 102 38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 209 100 38 211 102 38 stone
execute if score _bready bce_sys matches 1 run fill 209 103 38 211 103 38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 212 100 38 213 101 38 stone
execute if score _bready bce_sys matches 1 run fill 212 102 38 213 102 38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 214 100 38 218 100 38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 219 100 38 222 100 38 stone
execute if score _bready bce_sys matches 1 run fill 219 101 38 222 101 38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 223 100 38 226 101 38 stone
execute if score _bready bce_sys matches 1 run fill 223 102 38 226 102 38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 227 100 38 227 100 38 stone
execute if score _bready bce_sys matches 1 run fill 227 101 38 227 101 38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 228 100 38 229 101 38 stone
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
