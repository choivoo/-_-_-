# zone 1 detail 1
scoreboard players set _bzone bce_sys 1
function build/ready_z1
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 3
execute if score _bready bce_sys matches 1 run setblock 121 100 23 furnace
execute if score _bready bce_sys matches 1 run fill 140 99 -2 159 99 2 polished_andesite
execute if score _bready bce_sys matches 1 run fill 140 99 -3 159 99 -3 stone_bricks
execute if score _bready bce_sys matches 1 run fill 140 99 3 159 99 3 stone_bricks
execute if score _bready bce_sys matches 1 run fill 140 100 -3 159 100 -3 iron_bars
execute if score _bready bce_sys matches 1 run fill 140 100 3 159 100 3 iron_bars
execute if score _bready bce_sys matches 1 run fill 142 88 -3 142 98 -3 stone_bricks
execute if score _bready bce_sys matches 1 run fill 142 88 3 142 98 3 stone_bricks
execute if score _bready bce_sys matches 1 run fill 142 101 -3 142 102 -3 stone_bricks
execute if score _bready bce_sys matches 1 run fill 142 101 3 142 102 3 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 142 103 -3 lantern
execute if score _bready bce_sys matches 1 run setblock 142 103 3 lantern
execute if score _bready bce_sys matches 1 run fill 148 88 -3 148 98 -3 stone_bricks
execute if score _bready bce_sys matches 1 run fill 148 88 3 148 98 3 stone_bricks
execute if score _bready bce_sys matches 1 run fill 148 101 -3 148 102 -3 stone_bricks
execute if score _bready bce_sys matches 1 run fill 148 101 3 148 102 3 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 148 103 -3 lantern
execute if score _bready bce_sys matches 1 run setblock 148 103 3 lantern
execute if score _bready bce_sys matches 1 run fill 154 88 -3 154 98 -3 stone_bricks
execute if score _bready bce_sys matches 1 run fill 154 88 3 154 98 3 stone_bricks
execute if score _bready bce_sys matches 1 run fill 154 101 -3 154 102 -3 stone_bricks
execute if score _bready bce_sys matches 1 run fill 154 101 3 154 102 3 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 154 103 -3 lantern
execute if score _bready bce_sys matches 1 run setblock 154 103 3 lantern
execute if score _bready bce_sys matches 1 run fill 114 120 -12 118 120 -8 spruce_planks
execute if score _bready bce_sys matches 1 run setblock 114 116 -13 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 114 117 -13 white_concrete
execute if score _bready bce_sys matches 1 run setblock 114 118 -13 white_concrete
execute if score _bready bce_sys matches 1 run setblock 114 119 -13 white_concrete
execute if score _bready bce_sys matches 1 run setblock 114 120 -13 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 115 116 -13 white_concrete
execute if score _bready bce_sys matches 1 run setblock 115 117 -13 white_concrete
execute if score _bready bce_sys matches 1 run setblock 115 118 -13 white_concrete
execute if score _bready bce_sys matches 1 run setblock 115 119 -13 white_concrete
execute if score _bready bce_sys matches 1 run setblock 115 120 -13 white_concrete
execute if score _bready bce_sys matches 1 run setblock 116 116 -13 white_concrete
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
