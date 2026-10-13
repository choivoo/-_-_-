# observatory zone 5 ground 2
scoreboard players set _bzone bce_sys 5
function build/ready_z5
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 0
execute if score _bready bce_sys matches 1 run fill -198 190 11 -194 190 11 white_wool
execute if score _bready bce_sys matches 1 run fill -199 190 12 -193 190 12 white_wool
execute if score _bready bce_sys matches 1 run fill -200 190 13 -192 190 13 white_wool
execute if score _bready bce_sys matches 1 run fill -201 190 14 -191 190 14 white_wool
execute if score _bready bce_sys matches 1 run fill -201 190 15 -191 190 15 white_wool
execute if score _bready bce_sys matches 1 run fill -201 190 16 -191 190 16 white_wool
execute if score _bready bce_sys matches 1 run fill -201 190 17 -191 190 17 white_wool
execute if score _bready bce_sys matches 1 run fill -201 190 18 -191 190 18 white_wool
execute if score _bready bce_sys matches 1 run fill -200 190 19 -192 190 19 white_wool
execute if score _bready bce_sys matches 1 run fill -199 190 20 -193 190 20 white_wool
execute if score _bready bce_sys matches 1 run fill -198 190 21 -194 190 21 white_wool
execute if score _bready bce_sys matches 1 run fill -198 191 12 -194 191 12 white_wool
execute if score _bready bce_sys matches 1 run fill -199 191 13 -193 191 13 white_wool
execute if score _bready bce_sys matches 1 run fill -200 191 14 -192 191 14 white_wool
execute if score _bready bce_sys matches 1 run fill -200 191 15 -192 191 15 white_wool
execute if score _bready bce_sys matches 1 run fill -200 191 16 -192 191 16 white_wool
execute if score _bready bce_sys matches 1 run fill -200 191 17 -192 191 17 white_wool
execute if score _bready bce_sys matches 1 run fill -200 191 18 -192 191 18 white_wool
execute if score _bready bce_sys matches 1 run fill -199 191 19 -193 191 19 white_wool
execute if score _bready bce_sys matches 1 run fill -198 191 20 -194 191 20 white_wool
execute if score _bready bce_sys matches 1 run fill -197 192 13 -195 192 13 white_wool
execute if score _bready bce_sys matches 1 run fill -198 192 14 -194 192 14 white_wool
execute if score _bready bce_sys matches 1 run fill -199 192 15 -193 192 15 white_wool
execute if score _bready bce_sys matches 1 run fill -199 192 16 -193 192 16 white_wool
execute if score _bready bce_sys matches 1 run fill -199 192 17 -193 192 17 white_wool
execute if score _bready bce_sys matches 1 run fill -198 192 18 -194 192 18 white_wool
execute if score _bready bce_sys matches 1 run fill -197 192 19 -195 192 19 white_wool
execute if score _bready bce_sys matches 1 run fill -211 191 -21 -207 191 -21 white_wool
execute if score _bready bce_sys matches 1 run fill -213 191 -20 -205 191 -20 white_wool
execute if score _bready bce_sys matches 1 run fill -214 191 -19 -204 191 -19 white_wool
execute if score _bready bce_sys matches 1 run fill -214 191 -18 -204 191 -18 white_wool
execute if score _bready bce_sys matches 1 run fill -215 191 -17 -203 191 -17 white_wool
execute if score _bready bce_sys matches 1 run fill -215 191 -16 -203 191 -16 white_wool
execute if score _bready bce_sys matches 1 run fill -215 191 -15 -203 191 -15 white_wool
execute if score _bready bce_sys matches 1 run fill -215 191 -14 -203 191 -14 white_wool
execute if score _bready bce_sys matches 1 run fill -215 191 -13 -203 191 -13 white_wool
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
