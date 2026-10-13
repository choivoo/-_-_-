# zone 2 ground 5
scoreboard players set _bzone bce_sys 2
function build/ready_z2
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 0
execute if score _bready bce_sys matches 1 run fill 214 100 -36 237 100 -36 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 238 100 -36 238 100 -36 stone
execute if score _bready bce_sys matches 1 run fill 238 101 -36 238 101 -36 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 239 100 -36 239 100 -36 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 160 100 -35 160 100 -35 stone
execute if score _bready bce_sys matches 1 run fill 160 101 -35 160 101 -35 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 161 100 -35 161 100 -35 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 162 100 -35 173 100 -35 stone
execute if score _bready bce_sys matches 1 run fill 162 101 -35 173 101 -35 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 174 100 -35 176 100 -35 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 177 100 -35 184 100 -35 stone
execute if score _bready bce_sys matches 1 run fill 177 101 -35 184 101 -35 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 185 100 -35 186 100 -35 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 193 100 -35 198 100 -35 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 201 100 -35 207 100 -35 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 208 100 -35 211 100 -35 stone
execute if score _bready bce_sys matches 1 run fill 208 101 -35 211 101 -35 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 212 100 -35 221 100 -35 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 223 100 -35 230 100 -35 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 231 100 -35 232 100 -35 stone
execute if score _bready bce_sys matches 1 run fill 231 101 -35 232 101 -35 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 233 100 -35 239 100 -35 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 160 100 -34 169 100 -34 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 170 100 -34 170 100 -34 stone
execute if score _bready bce_sys matches 1 run fill 170 101 -34 170 101 -34 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 171 100 -34 178 100 -34 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 179 100 -34 181 100 -34 stone
execute if score _bready bce_sys matches 1 run fill 179 101 -34 181 101 -34 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 182 100 -34 186 100 -34 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 196 100 -34 197 100 -34 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 202 100 -34 203 100 -34 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 207 100 -34 212 100 -34 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 215 100 -34 218 100 -34 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 223 100 -34 229 100 -34 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 230 100 -34 230 100 -34 stone
execute if score _bready bce_sys matches 1 run fill 230 101 -34 230 101 -34 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
