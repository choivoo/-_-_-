# zone 2 ground 11
scoreboard players set _bzone bce_sys 2
function build/ready_z2
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 0
execute if score _bready bce_sys matches 1 run fill 228 102 38 229 102 38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 230 100 38 234 102 38 stone
execute if score _bready bce_sys matches 1 run fill 230 103 38 234 103 38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 235 100 38 235 101 38 stone
execute if score _bready bce_sys matches 1 run fill 235 102 38 235 102 38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 236 100 38 239 100 38 stone
execute if score _bready bce_sys matches 1 run fill 236 101 38 239 101 38 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 160 100 39 160 101 39 stone
execute if score _bready bce_sys matches 1 run fill 160 102 39 160 102 39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 161 100 39 161 100 39 stone
execute if score _bready bce_sys matches 1 run fill 161 101 39 161 101 39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 162 100 39 162 101 39 stone
execute if score _bready bce_sys matches 1 run fill 162 102 39 162 102 39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 163 100 39 163 100 39 stone
execute if score _bready bce_sys matches 1 run fill 163 101 39 163 101 39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 164 100 39 164 100 39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 167 100 39 170 100 39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 171 100 39 171 100 39 stone
execute if score _bready bce_sys matches 1 run fill 171 101 39 171 101 39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 172 100 39 173 101 39 stone
execute if score _bready bce_sys matches 1 run fill 172 102 39 173 102 39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 174 100 39 180 100 39 stone
execute if score _bready bce_sys matches 1 run fill 174 101 39 180 101 39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 181 100 39 183 101 39 stone
execute if score _bready bce_sys matches 1 run fill 181 102 39 183 102 39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 184 100 39 184 102 39 stone
execute if score _bready bce_sys matches 1 run fill 184 103 39 184 103 39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 185 100 39 186 103 39 stone
execute if score _bready bce_sys matches 1 run fill 185 104 39 186 104 39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 187 100 39 188 102 39 stone
execute if score _bready bce_sys matches 1 run fill 187 103 39 188 103 39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 189 100 39 191 101 39 stone
execute if score _bready bce_sys matches 1 run fill 189 102 39 191 102 39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 192 100 39 194 100 39 stone
execute if score _bready bce_sys matches 1 run fill 192 101 39 194 101 39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 195 100 39 196 100 39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
