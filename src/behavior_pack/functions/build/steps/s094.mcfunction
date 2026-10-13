# zone 2 ground 4
scoreboard players set _bzone bce_sys 2
function build/ready_z2
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 0
execute if score _bready bce_sys matches 1 run fill 221 100 -37 225 100 -37 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 226 100 -37 229 100 -37 stone
execute if score _bready bce_sys matches 1 run fill 226 101 -37 229 101 -37 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 230 100 -37 231 100 -37 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 232 100 -37 233 100 -37 stone
execute if score _bready bce_sys matches 1 run fill 232 101 -37 233 101 -37 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 234 100 -37 234 100 -37 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 235 100 -37 239 100 -37 stone
execute if score _bready bce_sys matches 1 run fill 235 101 -37 239 101 -37 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 160 100 -36 160 101 -36 stone
execute if score _bready bce_sys matches 1 run fill 160 102 -36 160 102 -36 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 161 100 -36 164 100 -36 stone
execute if score _bready bce_sys matches 1 run fill 161 101 -36 164 101 -36 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 165 100 -36 166 101 -36 stone
execute if score _bready bce_sys matches 1 run fill 165 102 -36 166 102 -36 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 167 100 -36 168 100 -36 stone
execute if score _bready bce_sys matches 1 run fill 167 101 -36 168 101 -36 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 169 100 -36 171 101 -36 stone
execute if score _bready bce_sys matches 1 run fill 169 102 -36 171 102 -36 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 172 100 -36 173 100 -36 stone
execute if score _bready bce_sys matches 1 run fill 172 101 -36 173 101 -36 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 174 100 -36 177 100 -36 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 178 100 -36 182 100 -36 stone
execute if score _bready bce_sys matches 1 run fill 178 101 -36 182 101 -36 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 183 100 -36 183 100 -36 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 184 100 -36 184 100 -36 stone
execute if score _bready bce_sys matches 1 run fill 184 101 -36 184 101 -36 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 185 100 -36 186 100 -36 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 192 100 -36 199 100 -36 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 201 100 -36 204 100 -36 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 205 100 -36 208 100 -36 stone
execute if score _bready bce_sys matches 1 run fill 205 101 -36 208 101 -36 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 209 100 -36 210 101 -36 stone
execute if score _bready bce_sys matches 1 run fill 209 102 -36 210 102 -36 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 211 100 -36 213 100 -36 stone
execute if score _bready bce_sys matches 1 run fill 211 101 -36 213 101 -36 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
