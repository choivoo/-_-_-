# zone 2 interior 0
scoreboard players set _bzone bce_sys 2
function build/ready_z2
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 2
execute if score _bready bce_sys matches 1 run fill 170 100 -1 170 102 1 air
execute if score _bready bce_sys matches 1 run fill 170 99 -1 170 99 1 stone_brick_stairs ["weirdo_direction"=1,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 171 99 -1 171 101 1 air
execute if score _bready bce_sys matches 1 run fill 171 98 -1 171 98 1 stone_brick_stairs ["weirdo_direction"=1,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 172 98 -1 172 100 1 air
execute if score _bready bce_sys matches 1 run fill 172 97 -1 172 97 1 stone_brick_stairs ["weirdo_direction"=1,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 173 97 -1 173 99 1 air
execute if score _bready bce_sys matches 1 run fill 173 96 -1 173 96 1 stone_brick_stairs ["weirdo_direction"=1,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 174 96 -1 174 98 1 air
execute if score _bready bce_sys matches 1 run fill 174 95 -1 174 95 1 stone_brick_stairs ["weirdo_direction"=1,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 175 95 -1 175 97 1 air
execute if score _bready bce_sys matches 1 run fill 175 94 -1 175 94 1 stone_brick_stairs ["weirdo_direction"=1,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 176 94 -1 176 96 1 air
execute if score _bready bce_sys matches 1 run fill 176 93 -1 176 93 1 stone_brick_stairs ["weirdo_direction"=1,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 177 93 -1 177 95 1 air
execute if score _bready bce_sys matches 1 run fill 177 92 -1 177 92 1 stone_brick_stairs ["weirdo_direction"=1,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 178 92 -1 178 94 1 air
execute if score _bready bce_sys matches 1 run fill 178 91 -1 178 91 1 stone_brick_stairs ["weirdo_direction"=1,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 179 91 -1 179 93 1 air
execute if score _bready bce_sys matches 1 run fill 179 90 -1 179 90 1 stone_brick_stairs ["weirdo_direction"=1,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 180 90 -1 180 92 1 air
execute if score _bready bce_sys matches 1 run fill 180 89 -1 180 89 1 stone_brick_stairs ["weirdo_direction"=1,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 181 89 -1 181 91 1 air
execute if score _bready bce_sys matches 1 run fill 181 88 -1 181 88 1 stone_brick_stairs ["weirdo_direction"=1,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 182 88 -1 182 90 1 air
execute if score _bready bce_sys matches 1 run fill 182 87 -1 182 87 1 stone_brick_stairs ["weirdo_direction"=1,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 183 87 -1 183 89 1 air
execute if score _bready bce_sys matches 1 run fill 183 86 -1 183 86 1 stone_brick_stairs ["weirdo_direction"=1,"upside_down_bit"=false]
execute if score _bready bce_sys matches 1 run fill 184 87 -6 192 94 6 air
execute if score _bready bce_sys matches 1 run fill 184 86 -6 192 86 6 stone_bricks
execute if score _bready bce_sys matches 1 run fill 192 87 -2 203 93 2 air
execute if score _bready bce_sys matches 1 run fill 192 86 -2 203 86 2 mossy_stone_bricks
execute if score _bready bce_sys matches 1 run fill 192 87 -2 203 88 2 water
execute if score _bready bce_sys matches 1 run fill 204 87 -2 205 93 2 iron_bars
execute if score _bready bce_sys matches 1 run fill 206 87 -6 230 95 6 air
execute if score _bready bce_sys matches 1 run fill 206 86 -6 208 86 6 stone_bricks
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
