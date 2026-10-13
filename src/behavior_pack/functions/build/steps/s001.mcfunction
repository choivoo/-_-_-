# observatory zone 5 ground 0
scoreboard players set _bzone bce_sys 5
function build/ready_z5
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 0
execute if score _bready bce_sys matches 1 run fill -216 194 2 -212 194 2 white_wool
execute if score _bready bce_sys matches 1 run fill -218 194 3 -210 194 3 white_wool
execute if score _bready bce_sys matches 1 run fill -219 194 4 -209 194 4 white_wool
execute if score _bready bce_sys matches 1 run fill -219 194 5 -209 194 5 white_wool
execute if score _bready bce_sys matches 1 run fill -220 194 6 -208 194 6 white_wool
execute if score _bready bce_sys matches 1 run fill -220 194 7 -208 194 7 white_wool
execute if score _bready bce_sys matches 1 run fill -220 194 8 -208 194 8 white_wool
execute if score _bready bce_sys matches 1 run fill -220 194 9 -208 194 9 white_wool
execute if score _bready bce_sys matches 1 run fill -220 194 10 -208 194 10 white_wool
execute if score _bready bce_sys matches 1 run fill -219 194 11 -209 194 11 white_wool
execute if score _bready bce_sys matches 1 run fill -219 194 12 -209 194 12 white_wool
execute if score _bready bce_sys matches 1 run fill -218 194 13 -210 194 13 white_wool
execute if score _bready bce_sys matches 1 run fill -216 194 14 -212 194 14 white_wool
execute if score _bready bce_sys matches 1 run fill -216 195 3 -212 195 3 white_wool
execute if score _bready bce_sys matches 1 run fill -217 195 4 -211 195 4 white_wool
execute if score _bready bce_sys matches 1 run fill -218 195 5 -210 195 5 white_wool
execute if score _bready bce_sys matches 1 run fill -219 195 6 -209 195 6 white_wool
execute if score _bready bce_sys matches 1 run fill -219 195 7 -209 195 7 white_wool
execute if score _bready bce_sys matches 1 run fill -219 195 8 -209 195 8 white_wool
execute if score _bready bce_sys matches 1 run fill -219 195 9 -209 195 9 white_wool
execute if score _bready bce_sys matches 1 run fill -219 195 10 -209 195 10 white_wool
execute if score _bready bce_sys matches 1 run fill -218 195 11 -210 195 11 white_wool
execute if score _bready bce_sys matches 1 run fill -217 195 12 -211 195 12 white_wool
execute if score _bready bce_sys matches 1 run fill -216 195 13 -212 195 13 white_wool
execute if score _bready bce_sys matches 1 run fill -216 196 4 -212 196 4 white_wool
execute if score _bready bce_sys matches 1 run fill -217 196 5 -211 196 5 white_wool
execute if score _bready bce_sys matches 1 run fill -218 196 6 -210 196 6 white_wool
execute if score _bready bce_sys matches 1 run fill -218 196 7 -210 196 7 white_wool
execute if score _bready bce_sys matches 1 run fill -218 196 8 -210 196 8 white_wool
execute if score _bready bce_sys matches 1 run fill -218 196 9 -210 196 9 white_wool
execute if score _bready bce_sys matches 1 run fill -218 196 10 -210 196 10 white_wool
execute if score _bready bce_sys matches 1 run fill -217 196 11 -211 196 11 white_wool
execute if score _bready bce_sys matches 1 run fill -216 196 12 -212 196 12 white_wool
execute if score _bready bce_sys matches 1 run fill -189 192 -17 -185 192 -17 white_wool
execute if score _bready bce_sys matches 1 run fill -191 192 -16 -183 192 -16 white_wool
execute if score _bready bce_sys matches 1 run fill -192 192 -15 -182 192 -15 white_wool
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
