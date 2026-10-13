# zone 2 detail 1
scoreboard players set _bzone bce_sys 2
function build/ready_z2
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 3
execute if score _bready bce_sys matches 1 run fill 176 99 30 177 99 31 stone replace mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 200 99 12 202 99 13 stone replace mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 181 99 36 181 99 37 gravel replace mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 236 99 21 237 99 23 stone replace mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 225 99 -37 225 99 -36 gravel replace mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 231 99 2 232 99 3 stone replace mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 227 99 -4 228 99 -2 stone replace mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 211 99 0 211 99 2 cracked_stone_bricks replace mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 188 99 29 188 99 29 cracked_stone_bricks replace mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 183 99 3 183 99 4 stone replace mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 229 99 -35 231 99 -35 cracked_stone_bricks replace mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 208 99 -30 209 99 -30 mossy_stone_bricks replace mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 225 99 29 226 99 30 cracked_stone_bricks replace mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 219 99 -20 219 99 -20 mossy_stone_bricks replace mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 183 99 24 183 99 26 cracked_stone_bricks replace mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 167 99 -6 167 99 -4 mossy_stone_bricks replace mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 163 99 1 163 99 3 stone replace mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 230 99 31 231 99 33 stone replace mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 229 99 -32 229 99 -32 cracked_stone_bricks replace mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 200 99 -33 200 99 -33 mossy_stone_bricks replace mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 234 99 -31 235 99 -29 cracked_stone_bricks replace mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 191 99 35 191 99 36 mossy_stone_bricks replace mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 167 99 20 169 99 21 stone replace mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 193 99 -6 195 99 -6 cracked_stone_bricks replace mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 164 99 6 166 99 8 gravel replace mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 169 99 -37 169 99 -35 gravel replace mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 214 99 19 216 99 21 mossy_stone_bricks replace mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 233 99 5 233 99 7 gravel replace mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 197 99 12 198 99 14 gravel replace mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 185 99 -21 185 99 -21 mossy_stone_bricks replace mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 227 99 -24 227 99 -22 cracked_stone_bricks replace mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 175 99 -11 177 99 -9 mossy_stone_bricks replace mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 214 99 -32 215 99 -30 gravel replace mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 226 99 32 226 99 34 mossy_stone_bricks replace mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 186 87 -5 186 94 -5 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 186 87 -5 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
