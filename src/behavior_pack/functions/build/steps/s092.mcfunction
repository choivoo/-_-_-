# zone 2 ground 2
scoreboard players set _bzone bce_sys 2
function build/ready_z2
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 0
execute if score _bready bce_sys matches 1 run fill 160 102 -38 160 102 -38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 161 100 -38 164 100 -38 stone
execute if score _bready bce_sys matches 1 run fill 161 101 -38 164 101 -38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 165 100 -38 166 101 -38 stone
execute if score _bready bce_sys matches 1 run fill 165 102 -38 166 102 -38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 167 100 -38 168 100 -38 stone
execute if score _bready bce_sys matches 1 run fill 167 101 -38 168 101 -38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 169 100 -38 170 101 -38 stone
execute if score _bready bce_sys matches 1 run fill 169 102 -38 170 102 -38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 171 100 -38 172 100 -38 stone
execute if score _bready bce_sys matches 1 run fill 171 101 -38 172 101 -38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 173 100 -38 176 100 -38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 177 100 -38 182 100 -38 stone
execute if score _bready bce_sys matches 1 run fill 177 101 -38 182 101 -38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 183 100 -38 183 101 -38 stone
execute if score _bready bce_sys matches 1 run fill 183 102 -38 183 102 -38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 184 100 -38 185 100 -38 stone
execute if score _bready bce_sys matches 1 run fill 184 101 -38 185 101 -38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 186 100 -38 186 100 -38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 192 100 -38 193 100 -38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 194 100 -38 197 100 -38 stone
execute if score _bready bce_sys matches 1 run fill 194 101 -38 197 101 -38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 198 100 -38 198 100 -38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 199 100 -38 200 100 -38 stone
execute if score _bready bce_sys matches 1 run fill 199 101 -38 200 101 -38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 201 100 -38 204 100 -38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 205 100 -38 205 100 -38 stone
execute if score _bready bce_sys matches 1 run fill 205 101 -38 205 101 -38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 206 100 -38 206 101 -38 stone
execute if score _bready bce_sys matches 1 run fill 206 102 -38 206 102 -38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 207 100 -38 211 102 -38 stone
execute if score _bready bce_sys matches 1 run fill 207 103 -38 211 103 -38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 212 100 -38 214 101 -38 stone
execute if score _bready bce_sys matches 1 run fill 212 102 -38 214 102 -38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 215 100 -38 215 100 -38 stone
execute if score _bready bce_sys matches 1 run fill 215 101 -38 215 101 -38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
