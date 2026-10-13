# zone 2 ground 3
scoreboard players set _bzone bce_sys 2
function build/ready_z2
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 0
execute if score _bready bce_sys matches 1 run fill 216 100 -38 217 100 -38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 219 100 -38 219 100 -38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 221 100 -38 225 100 -38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 226 100 -38 227 100 -38 stone
execute if score _bready bce_sys matches 1 run fill 226 101 -38 227 101 -38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 228 100 -38 228 101 -38 stone
execute if score _bready bce_sys matches 1 run fill 228 102 -38 228 102 -38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 229 100 -38 229 100 -38 stone
execute if score _bready bce_sys matches 1 run fill 229 101 -38 229 101 -38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 230 100 -38 231 100 -38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 232 100 -38 233 100 -38 stone
execute if score _bready bce_sys matches 1 run fill 232 101 -38 233 101 -38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 234 100 -38 236 100 -38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 237 100 -38 239 100 -38 stone
execute if score _bready bce_sys matches 1 run fill 237 101 -38 239 101 -38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 160 100 -37 168 100 -37 stone
execute if score _bready bce_sys matches 1 run fill 160 101 -37 168 101 -37 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 169 100 -37 170 101 -37 stone
execute if score _bready bce_sys matches 1 run fill 169 102 -37 170 102 -37 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 171 100 -37 173 100 -37 stone
execute if score _bready bce_sys matches 1 run fill 171 101 -37 173 101 -37 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 174 100 -37 176 100 -37 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 177 100 -37 185 100 -37 stone
execute if score _bready bce_sys matches 1 run fill 177 101 -37 185 101 -37 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 186 100 -37 186 100 -37 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 192 100 -37 193 100 -37 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 194 100 -37 198 100 -37 stone
execute if score _bready bce_sys matches 1 run fill 194 101 -37 198 101 -37 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 199 100 -37 203 100 -37 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 204 100 -37 206 100 -37 stone
execute if score _bready bce_sys matches 1 run fill 204 101 -37 206 101 -37 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 207 100 -37 212 101 -37 stone
execute if score _bready bce_sys matches 1 run fill 207 102 -37 212 102 -37 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 213 100 -37 216 100 -37 stone
execute if score _bready bce_sys matches 1 run fill 213 101 -37 216 101 -37 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 217 100 -37 219 100 -37 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
