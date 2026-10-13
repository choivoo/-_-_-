# zone 2 shell 1
scoreboard players set _bzone bce_sys 2
function build/ready_z2
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 1
execute if score _bready bce_sys matches 1 run fill 230 100 26 230 103 26 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 230 100 26 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 197 100 -40 203 122 39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 197 103 -40 197 103 39 cracked_stone_bricks replace mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 197 106 -40 197 106 39 cracked_stone_bricks replace mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 197 109 -40 197 109 39 cracked_stone_bricks replace mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 197 112 -40 197 112 39 cracked_stone_bricks replace mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 197 115 -40 197 115 39 cracked_stone_bricks replace mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 197 118 -40 197 118 39 cracked_stone_bricks replace mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 196 100 -40 196 105 39 mossy_cobblestone
execute if score _bready bce_sys matches 1 run fill 204 100 -40 204 104 39 mossy_cobblestone
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
