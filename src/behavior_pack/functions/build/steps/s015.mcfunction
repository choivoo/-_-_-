# observatory zone 5 light 0
scoreboard players set _bzone bce_sys 5
function build/ready_z5
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 4
execute if score _bready bce_sys matches 1 run setblock -194 201 -17 end_rod
execute if score _bready bce_sys matches 1 run setblock -193 209 -13 end_rod
execute if score _bready bce_sys matches 1 run setblock -185 210 18 sea_lantern
execute if score _bready bce_sys matches 1 run setblock -191 209 -10 end_rod
execute if score _bready bce_sys matches 1 run setblock -195 220 -15 amethyst_block
execute if score _bready bce_sys matches 1 run setblock -192 196 16 end_rod
execute if score _bready bce_sys matches 1 run setblock -216 200 -3 sea_lantern
execute if score _bready bce_sys matches 1 run setblock -185 211 7 amethyst_block
execute if score _bready bce_sys matches 1 run setblock -218 197 -12 end_rod
execute if score _bready bce_sys matches 1 run setblock -201 197 -27 amethyst_block
execute if score _bready bce_sys matches 1 run setblock -186 219 -25 sea_lantern
execute if score _bready bce_sys matches 1 run setblock -203 211 23 sea_lantern
execute if score _bready bce_sys matches 1 run setblock -213 220 17 amethyst_block
execute if score _bready bce_sys matches 1 run setblock -199 210 -29 end_rod
execute if score _bready bce_sys matches 1 run setblock -195 217 20 end_rod
execute if score _bready bce_sys matches 1 run setblock -197 195 -19 sea_lantern
execute if score _bready bce_sys matches 1 run setblock -213 205 0 amethyst_block
execute if score _bready bce_sys matches 1 run setblock -178 222 20 amethyst_block
execute if score _bready bce_sys matches 1 run setblock -180 216 7 sea_lantern
execute if score _bready bce_sys matches 1 run setblock -186 194 17 amethyst_block
execute if score _bready bce_sys matches 1 run setblock -175 218 -14 amethyst_block
execute if score _bready bce_sys matches 1 run setblock -212 209 -6 end_rod
execute if score _bready bce_sys matches 1 run setblock -198 194 -25 sea_lantern
execute if score _bready bce_sys matches 1 run setblock -198 208 24 sea_lantern
execute if score _bready bce_sys matches 1 run setblock -180 197 -22 end_rod
execute if score _bready bce_sys matches 1 run setblock -198 220 16 sea_lantern
execute if score _bready bce_sys matches 1 run setblock -191 195 13 end_rod
execute if score _bready bce_sys matches 1 run setblock -212 212 -22 amethyst_block
execute if score _bready bce_sys matches 1 run setblock -217 220 1 sea_lantern
execute if score _bready bce_sys matches 1 run setblock -219 211 3 end_rod
execute if score _bready bce_sys matches 1 run setblock -206 194 27 amethyst_block
execute if score _bready bce_sys matches 1 run setblock -187 198 5 sea_lantern
execute if score _bready bce_sys matches 1 run setblock -176 210 14 end_rod
execute if score _bready bce_sys matches 1 run setblock -211 199 -23 sea_lantern
execute if score _bready bce_sys matches 1 run setblock -181 208 -5 amethyst_block
execute if score _bready bce_sys matches 1 run setblock -226 206 -5 end_rod
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
