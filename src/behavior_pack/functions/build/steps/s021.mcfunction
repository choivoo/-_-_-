# zone 0 ground 0
scoreboard players set _bzone bce_sys 0
function build/ready_z0
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 0
execute if score _bready bce_sys matches 1 run fill -40 80 -40 -1 98 -1 stone
execute if score _bready bce_sys matches 1 run fill -40 80 0 -1 98 39 stone
execute if score _bready bce_sys matches 1 run fill 0 80 -40 39 98 -1 stone
execute if score _bready bce_sys matches 1 run fill 0 80 0 39 98 39 stone
execute if score _bready bce_sys matches 1 run fill -40 99 -40 39 99 39 stone_bricks
execute if score _bready bce_sys matches 1 run fill -40 100 -40 39 104 39 air
execute if score _bready bce_sys matches 1 run fill -40 105 -40 39 109 39 air
execute if score _bready bce_sys matches 1 run fill -40 110 -40 39 114 39 air
execute if score _bready bce_sys matches 1 run fill -40 115 -40 39 119 39 air
execute if score _bready bce_sys matches 1 run fill -40 120 -40 39 124 39 air
execute if score _bready bce_sys matches 1 run fill -40 125 -40 39 129 39 air
execute if score _bready bce_sys matches 1 run fill -40 130 -40 39 134 39 air
execute if score _bready bce_sys matches 1 run fill -40 135 -40 39 139 39 air
execute if score _bready bce_sys matches 1 run fill 15 99 -15 38 99 15 polished_andesite
execute if score _bready bce_sys matches 1 run fill 17 99 -13 36 99 13 stone_bricks
execute if score _bready bce_sys matches 1 run fill 19 99 -2 38 99 2 deepslate_tiles
execute if score _bready bce_sys matches 1 run fill 39 99 -2 40 99 2 polished_andesite
execute if score _bready bce_sys matches 1 run fill 39 99 -3 40 99 -3 stone_bricks
execute if score _bready bce_sys matches 1 run fill 39 99 3 40 99 3 stone_bricks
execute if score _bready bce_sys matches 1 run fill -40 100 -39 -40 100 -39 stone
execute if score _bready bce_sys matches 1 run fill -40 101 -39 -40 101 -39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -39 100 -39 -37 101 -39 stone
execute if score _bready bce_sys matches 1 run fill -39 102 -39 -37 102 -39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -36 100 -39 -35 102 -39 stone
execute if score _bready bce_sys matches 1 run fill -36 103 -39 -35 103 -39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -34 100 -39 -34 101 -39 stone
execute if score _bready bce_sys matches 1 run fill -34 102 -39 -34 102 -39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -33 100 -39 -33 100 -39 stone
execute if score _bready bce_sys matches 1 run fill -33 101 -39 -33 101 -39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -32 100 -39 -31 101 -39 stone
execute if score _bready bce_sys matches 1 run fill -32 102 -39 -31 102 -39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -30 100 -39 -29 100 -39 stone
execute if score _bready bce_sys matches 1 run fill -30 101 -39 -29 101 -39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -28 100 -39 -27 100 -39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -24 100 -39 -24 100 -39 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill -23 100 -39 -16 100 -39 stone
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
