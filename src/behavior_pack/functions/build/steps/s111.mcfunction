# zone 2 detail 4
scoreboard players set _bzone bce_sys 2
function build/ready_z2
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 3
execute if score _bready bce_sys matches 1 run fill 202 87 -3 202 91 -3 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 202 92 -2 202 92 -2 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 202 93 -1 202 93 -1 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 202 93 0 202 93 0 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 202 93 1 202 93 1 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 202 92 2 202 92 2 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 202 87 3 202 91 3 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 190 87 -6 190 92 -6 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 190 93 -5 190 94 -5 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 190 94 -4 190 95 -4 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 190 95 -3 190 95 -3 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 190 96 -2 190 96 -2 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 190 96 -1 190 96 -1 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 190 96 0 190 96 0 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 190 96 1 190 96 1 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 190 96 2 190 96 2 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 190 95 3 190 95 3 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 190 94 4 190 95 4 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 190 93 5 190 94 5 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 190 87 6 190 92 6 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 217 87 -12 217 95 -12 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 218 87 -12 218 97 -12 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 219 96 -12 219 98 -12 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 220 97 -12 220 98 -12 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 221 98 -12 221 99 -12 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 222 98 -12 222 99 -12 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 223 98 -12 223 99 -12 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 224 98 -12 224 99 -12 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 225 98 -12 225 99 -12 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 226 97 -12 226 98 -12 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 227 96 -12 227 98 -12 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 228 87 -12 228 97 -12 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 229 87 -12 229 95 -12 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 220 87 -13 226 95 -13 obsidian
execute if score _bready bce_sys matches 1 run fill 223 87 -13 223 96 -13 crying_obsidian
execute if score _bready bce_sys matches 1 run setblock 218 89 -12 sea_lantern
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
