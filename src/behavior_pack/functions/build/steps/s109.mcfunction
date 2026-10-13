# zone 2 detail 2
scoreboard players set _bzone bce_sys 2
function build/ready_z2
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 3
execute if score _bready bce_sys matches 1 run setblock 186 94 -5 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 186 87 5 186 94 5 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 186 87 5 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 186 94 5 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 184 90 -5 sea_lantern
execute if score _bready bce_sys matches 1 run setblock 184 89 -5 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 184 90 0 black_concrete
execute if score _bready bce_sys matches 1 run setblock 184 89 0 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 184 90 5 sea_lantern
execute if score _bready bce_sys matches 1 run setblock 184 89 5 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 188 87 -5 lever ["lever_direction"="up_north_south","open_bit"=false]
execute if score _bready bce_sys matches 1 run setblock 188 86 -5 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 188 87 0 lever ["lever_direction"="up_north_south","open_bit"=false]
execute if score _bready bce_sys matches 1 run setblock 188 86 0 stone_bricks
execute if score _bready bce_sys matches 1 run setblock 188 87 5 lever ["lever_direction"="up_north_south","open_bit"=false]
execute if score _bready bce_sys matches 1 run setblock 188 86 5 stone_bricks
execute if score _bready bce_sys matches 1 run fill 209 87 -3 216 87 -3 air
execute if score _bready bce_sys matches 1 run fill 209 87 3 216 87 3 air
execute if score _bready bce_sys matches 1 run fill 212 87 -5 212 93 -5 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 212 93 -5 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 212 87 0 212 93 0 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 212 93 0 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run fill 212 87 5 212 93 5 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 212 93 5 chiseled_stone_bricks
execute if score _bready bce_sys matches 1 run setblock 193 86 0 magma
execute if score _bready bce_sys matches 1 run setblock 196 86 0 magma
execute if score _bready bce_sys matches 1 run setblock 199 86 0 magma
execute if score _bready bce_sys matches 1 run setblock 202 86 0 magma
execute if score _bready bce_sys matches 1 run fill 240 99 -2 259 99 2 polished_andesite
execute if score _bready bce_sys matches 1 run fill 240 99 -3 259 99 -3 stone_bricks
execute if score _bready bce_sys matches 1 run fill 240 99 3 259 99 3 stone_bricks
execute if score _bready bce_sys matches 1 run fill 240 100 -3 259 100 -3 iron_bars
execute if score _bready bce_sys matches 1 run fill 240 100 3 259 100 3 iron_bars
execute if score _bready bce_sys matches 1 run fill 242 88 -3 242 98 -3 stone_bricks
execute if score _bready bce_sys matches 1 run fill 242 88 3 242 98 3 stone_bricks
execute if score _bready bce_sys matches 1 run fill 242 101 -3 242 102 -3 stone_bricks
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
