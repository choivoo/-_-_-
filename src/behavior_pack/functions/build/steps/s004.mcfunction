# observatory zone 5 ground 3
scoreboard players set _bzone bce_sys 5
function build/ready_z5
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 0
execute if score _bready bce_sys matches 1 run fill -214 191 -12 -204 191 -12 white_wool
execute if score _bready bce_sys matches 1 run fill -214 191 -11 -204 191 -11 white_wool
execute if score _bready bce_sys matches 1 run fill -213 191 -10 -205 191 -10 white_wool
execute if score _bready bce_sys matches 1 run fill -211 191 -9 -207 191 -9 white_wool
execute if score _bready bce_sys matches 1 run fill -211 192 -20 -207 192 -20 white_wool
execute if score _bready bce_sys matches 1 run fill -212 192 -19 -206 192 -19 white_wool
execute if score _bready bce_sys matches 1 run fill -213 192 -18 -205 192 -18 white_wool
execute if score _bready bce_sys matches 1 run fill -214 192 -17 -204 192 -17 white_wool
execute if score _bready bce_sys matches 1 run fill -214 192 -16 -204 192 -16 white_wool
execute if score _bready bce_sys matches 1 run fill -214 192 -15 -204 192 -15 white_wool
execute if score _bready bce_sys matches 1 run fill -214 192 -14 -204 192 -14 white_wool
execute if score _bready bce_sys matches 1 run fill -214 192 -13 -204 192 -13 white_wool
execute if score _bready bce_sys matches 1 run fill -213 192 -12 -205 192 -12 white_wool
execute if score _bready bce_sys matches 1 run fill -212 192 -11 -206 192 -11 white_wool
execute if score _bready bce_sys matches 1 run fill -211 192 -10 -207 192 -10 white_wool
execute if score _bready bce_sys matches 1 run fill -211 193 -19 -207 193 -19 white_wool
execute if score _bready bce_sys matches 1 run fill -212 193 -18 -206 193 -18 white_wool
execute if score _bready bce_sys matches 1 run fill -213 193 -17 -205 193 -17 white_wool
execute if score _bready bce_sys matches 1 run fill -213 193 -16 -205 193 -16 white_wool
execute if score _bready bce_sys matches 1 run fill -213 193 -15 -205 193 -15 white_wool
execute if score _bready bce_sys matches 1 run fill -213 193 -14 -205 193 -14 white_wool
execute if score _bready bce_sys matches 1 run fill -213 193 -13 -205 193 -13 white_wool
execute if score _bready bce_sys matches 1 run fill -212 193 -12 -206 193 -12 white_wool
execute if score _bready bce_sys matches 1 run fill -211 193 -11 -207 193 -11 white_wool
execute if score _bready bce_sys matches 1 run fill -184 195 8 -180 195 8 white_wool
execute if score _bready bce_sys matches 1 run fill -185 195 9 -179 195 9 white_wool
execute if score _bready bce_sys matches 1 run fill -186 195 10 -178 195 10 white_wool
execute if score _bready bce_sys matches 1 run fill -186 195 11 -178 195 11 white_wool
execute if score _bready bce_sys matches 1 run fill -186 195 12 -178 195 12 white_wool
execute if score _bready bce_sys matches 1 run fill -186 195 13 -178 195 13 white_wool
execute if score _bready bce_sys matches 1 run fill -186 195 14 -178 195 14 white_wool
execute if score _bready bce_sys matches 1 run fill -185 195 15 -179 195 15 white_wool
execute if score _bready bce_sys matches 1 run fill -184 195 16 -180 195 16 white_wool
execute if score _bready bce_sys matches 1 run fill -183 196 9 -181 196 9 white_wool
execute if score _bready bce_sys matches 1 run fill -184 196 10 -180 196 10 white_wool
execute if score _bready bce_sys matches 1 run fill -185 196 11 -179 196 11 white_wool
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
