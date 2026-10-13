# observatory zone 5 light 1
scoreboard players set _bzone bce_sys 5
function build/ready_z5
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 4
execute if score _bready bce_sys matches 1 run setblock -182 221 -16 end_rod
execute if score _bready bce_sys matches 1 run setblock -205 196 27 end_rod
execute if score _bready bce_sys matches 1 run setblock -206 202 14 end_rod
execute if score _bready bce_sys matches 1 run setblock -199 209 -29 amethyst_block
execute if score _bready bce_sys matches 1 run setblock -219 221 0 end_rod
execute if score _bready bce_sys matches 1 run setblock -218 211 17 end_rod
execute if score _bready bce_sys matches 1 run setblock -184 197 -8 end_rod
execute if score _bready bce_sys matches 1 run setblock -181 216 21 sea_lantern
execute if score _bready bce_sys matches 1 run setblock -193 213 26 sea_lantern
execute if score _bready bce_sys matches 1 run setblock -227 212 -4 sea_lantern
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
