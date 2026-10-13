# observatory zone 5 ground 1
scoreboard players set _bzone bce_sys 5
function build/ready_z5
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 0
execute if score _bready bce_sys matches 1 run fill -193 192 -14 -181 192 -14 white_wool
execute if score _bready bce_sys matches 1 run fill -193 192 -13 -181 192 -13 white_wool
execute if score _bready bce_sys matches 1 run fill -194 192 -12 -180 192 -12 white_wool
execute if score _bready bce_sys matches 1 run fill -194 192 -11 -180 192 -11 white_wool
execute if score _bready bce_sys matches 1 run fill -194 192 -10 -180 192 -10 white_wool
execute if score _bready bce_sys matches 1 run fill -194 192 -9 -180 192 -9 white_wool
execute if score _bready bce_sys matches 1 run fill -194 192 -8 -180 192 -8 white_wool
execute if score _bready bce_sys matches 1 run fill -193 192 -7 -181 192 -7 white_wool
execute if score _bready bce_sys matches 1 run fill -193 192 -6 -181 192 -6 white_wool
execute if score _bready bce_sys matches 1 run fill -192 192 -5 -182 192 -5 white_wool
execute if score _bready bce_sys matches 1 run fill -191 192 -4 -183 192 -4 white_wool
execute if score _bready bce_sys matches 1 run fill -189 192 -3 -185 192 -3 white_wool
execute if score _bready bce_sys matches 1 run fill -189 193 -16 -185 193 -16 white_wool
execute if score _bready bce_sys matches 1 run fill -191 193 -15 -183 193 -15 white_wool
execute if score _bready bce_sys matches 1 run fill -192 193 -14 -182 193 -14 white_wool
execute if score _bready bce_sys matches 1 run fill -192 193 -13 -182 193 -13 white_wool
execute if score _bready bce_sys matches 1 run fill -193 193 -12 -181 193 -12 white_wool
execute if score _bready bce_sys matches 1 run fill -193 193 -11 -181 193 -11 white_wool
execute if score _bready bce_sys matches 1 run fill -193 193 -10 -181 193 -10 white_wool
execute if score _bready bce_sys matches 1 run fill -193 193 -9 -181 193 -9 white_wool
execute if score _bready bce_sys matches 1 run fill -193 193 -8 -181 193 -8 white_wool
execute if score _bready bce_sys matches 1 run fill -192 193 -7 -182 193 -7 white_wool
execute if score _bready bce_sys matches 1 run fill -192 193 -6 -182 193 -6 white_wool
execute if score _bready bce_sys matches 1 run fill -191 193 -5 -183 193 -5 white_wool
execute if score _bready bce_sys matches 1 run fill -189 193 -4 -185 193 -4 white_wool
execute if score _bready bce_sys matches 1 run fill -189 194 -15 -185 194 -15 white_wool
execute if score _bready bce_sys matches 1 run fill -190 194 -14 -184 194 -14 white_wool
execute if score _bready bce_sys matches 1 run fill -191 194 -13 -183 194 -13 white_wool
execute if score _bready bce_sys matches 1 run fill -192 194 -12 -182 194 -12 white_wool
execute if score _bready bce_sys matches 1 run fill -192 194 -11 -182 194 -11 white_wool
execute if score _bready bce_sys matches 1 run fill -192 194 -10 -182 194 -10 white_wool
execute if score _bready bce_sys matches 1 run fill -192 194 -9 -182 194 -9 white_wool
execute if score _bready bce_sys matches 1 run fill -192 194 -8 -182 194 -8 white_wool
execute if score _bready bce_sys matches 1 run fill -191 194 -7 -183 194 -7 white_wool
execute if score _bready bce_sys matches 1 run fill -190 194 -6 -184 194 -6 white_wool
execute if score _bready bce_sys matches 1 run fill -189 194 -5 -185 194 -5 white_wool
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
