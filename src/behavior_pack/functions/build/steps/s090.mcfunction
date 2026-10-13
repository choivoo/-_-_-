# zone 2 ground 0
scoreboard players set _bzone bce_sys 2
function build/ready_z2
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 0
execute if score _bready bce_sys matches 1 run fill 160 80 -40 199 98 -1 stone
execute if score _bready bce_sys matches 1 run fill 160 80 0 199 98 39 stone
execute if score _bready bce_sys matches 1 run fill 200 80 -40 239 98 -1 stone
execute if score _bready bce_sys matches 1 run fill 200 80 0 239 98 39 stone
execute if score _bready bce_sys matches 1 run fill 160 99 -40 239 99 39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 160 100 -40 239 104 39 air
execute if score _bready bce_sys matches 1 run fill 160 105 -40 239 109 39 air
execute if score _bready bce_sys matches 1 run fill 160 110 -40 239 114 39 air
execute if score _bready bce_sys matches 1 run fill 160 115 -40 239 119 39 air
execute if score _bready bce_sys matches 1 run fill 160 120 -40 239 124 39 air
execute if score _bready bce_sys matches 1 run fill 160 125 -40 239 129 39 air
execute if score _bready bce_sys matches 1 run fill 160 130 -40 239 134 39 air
execute if score _bready bce_sys matches 1 run fill 160 135 -40 239 139 39 air
execute if score _bready bce_sys matches 1 run fill 161 81 -39 199 98 -1 stone
execute if score _bready bce_sys matches 1 run fill 161 81 0 199 98 38 stone
execute if score _bready bce_sys matches 1 run fill 200 81 -39 238 98 -1 stone
execute if score _bready bce_sys matches 1 run fill 200 81 0 238 98 38 stone
execute if score _bready bce_sys matches 1 run fill 160 99 -2 180 99 2 polished_andesite
execute if score _bready bce_sys matches 1 run fill 160 99 -3 180 99 -3 stone_bricks
execute if score _bready bce_sys matches 1 run fill 160 99 3 180 99 3 stone_bricks
execute if score _bready bce_sys matches 1 run fill 220 99 -2 239 99 2 polished_andesite
execute if score _bready bce_sys matches 1 run fill 220 99 -3 239 99 -3 stone_bricks
execute if score _bready bce_sys matches 1 run fill 220 99 3 239 99 3 stone_bricks
execute if score _bready bce_sys matches 1 run fill 160 100 -39 160 100 -39 stone
execute if score _bready bce_sys matches 1 run fill 160 101 -39 160 101 -39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 161 100 -39 164 100 -39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 165 100 -39 166 100 -39 stone
execute if score _bready bce_sys matches 1 run fill 165 101 -39 166 101 -39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 167 100 -39 167 100 -39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 168 100 -39 171 100 -39 stone
execute if score _bready bce_sys matches 1 run fill 168 101 -39 171 101 -39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 172 100 -39 173 100 -39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 176 100 -39 176 100 -39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 177 100 -39 180 100 -39 stone
execute if score _bready bce_sys matches 1 run fill 177 101 -39 180 101 -39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 181 100 -39 181 100 -39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
