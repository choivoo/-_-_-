# zone 2 detail 3
scoreboard players set _bzone bce_sys 2
function build/ready_z2
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 3
execute if score _bready bce_sys matches 1 run fill 242 101 3 242 102 3 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 242 103 -3 lantern
execute if score _bready bce_sys matches 1 run setblock 242 103 3 lantern
execute if score _bready bce_sys matches 1 run fill 248 88 -3 248 98 -3 stone_bricks
execute if score _bready bce_sys matches 1 run fill 248 88 3 248 98 3 stone_bricks
execute if score _bready bce_sys matches 1 run fill 248 101 -3 248 102 -3 stone_bricks
execute if score _bready bce_sys matches 1 run fill 248 101 3 248 102 3 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 248 103 -3 lantern
execute if score _bready bce_sys matches 1 run setblock 248 103 3 lantern
execute if score _bready bce_sys matches 1 run fill 254 88 -3 254 98 -3 stone_bricks
execute if score _bready bce_sys matches 1 run fill 254 88 3 254 98 3 stone_bricks
execute if score _bready bce_sys matches 1 run fill 254 101 -3 254 102 -3 stone_bricks
execute if score _bready bce_sys matches 1 run fill 254 101 3 254 102 3 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 254 103 -3 lantern
execute if score _bready bce_sys matches 1 run setblock 254 103 3 lantern
execute if score _bready bce_sys matches 1 run fill 194 87 -3 194 91 -3 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 194 92 -2 194 92 -2 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 194 93 -1 194 93 -1 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 194 93 0 194 93 0 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 194 93 1 194 93 1 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 194 92 2 194 92 2 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 194 87 3 194 91 3 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 197 87 -3 197 91 -3 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 197 92 -2 197 92 -2 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 197 93 -1 197 93 -1 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 197 93 0 197 93 0 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 197 93 1 197 93 1 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 197 92 2 197 92 2 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 197 87 3 197 91 3 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 200 87 -3 200 91 -3 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 200 92 -2 200 92 -2 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 200 93 -1 200 93 -1 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 200 93 0 200 93 0 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 200 93 1 200 93 1 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 200 92 2 200 92 2 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 200 87 3 200 91 3 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
