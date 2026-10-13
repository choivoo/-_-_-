# zone 2 ground 6
scoreboard players set _bzone bce_sys 2
function build/ready_z2
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 0
execute if score _bready bce_sys matches 1 run fill 231 100 -34 239 100 -34 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 160 100 -33 187 100 -33 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 196 100 -33 204 100 -33 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 207 100 -33 211 100 -33 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 216 100 -33 217 100 -33 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 223 100 -33 237 100 -33 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 160 100 -32 160 100 -32 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 165 100 -32 171 100 -32 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 177 100 -32 183 100 -32 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 185 100 -32 187 100 -32 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 196 100 -32 198 100 -32 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 224 100 -32 235 100 -32 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 160 100 32 160 100 32 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 184 100 32 187 100 32 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 207 100 32 213 100 32 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 225 100 32 235 100 32 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 160 100 33 164 100 33 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 166 100 33 167 100 33 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 172 100 33 173 100 33 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 183 100 33 196 100 33 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 203 100 33 214 100 33 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 224 100 33 230 100 33 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 231 100 33 233 100 33 stone
execute if score _bready bce_sys matches 1 run fill 231 101 33 233 101 33 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 234 100 33 239 100 33 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 160 100 34 160 100 34 stone
execute if score _bready bce_sys matches 1 run fill 160 101 34 160 101 34 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 161 100 34 169 100 34 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 171 100 34 174 100 34 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 183 100 34 184 100 34 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 185 100 34 186 100 34 stone
execute if score _bready bce_sys matches 1 run fill 185 101 34 186 101 34 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 187 100 34 193 100 34 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 195 100 34 196 100 34 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 203 100 34 209 100 34 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 210 100 34 210 100 34 stone
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
