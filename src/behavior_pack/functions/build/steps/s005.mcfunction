# observatory zone 5 ground 4
scoreboard players set _bzone bce_sys 5
function build/ready_z5
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 0
execute if score _bready bce_sys matches 1 run fill -185 196 12 -179 196 12 white_wool
execute if score _bready bce_sys matches 1 run fill -185 196 13 -179 196 13 white_wool
execute if score _bready bce_sys matches 1 run fill -184 196 14 -180 196 14 white_wool
execute if score _bready bce_sys matches 1 run fill -183 196 15 -181 196 15 white_wool
execute if score _bready bce_sys matches 1 run fill -183 197 10 -181 197 10 white_wool
execute if score _bready bce_sys matches 1 run fill -184 197 11 -180 197 11 white_wool
execute if score _bready bce_sys matches 1 run fill -184 197 12 -180 197 12 white_wool
execute if score _bready bce_sys matches 1 run fill -184 197 13 -180 197 13 white_wool
execute if score _bready bce_sys matches 1 run fill -183 197 14 -181 197 14 white_wool
execute if score _bready bce_sys matches 1 run fill -222 196 -9 -218 196 -9 white_wool
execute if score _bready bce_sys matches 1 run fill -223 196 -8 -217 196 -8 white_wool
execute if score _bready bce_sys matches 1 run fill -224 196 -7 -216 196 -7 white_wool
execute if score _bready bce_sys matches 1 run fill -225 196 -6 -215 196 -6 white_wool
execute if score _bready bce_sys matches 1 run fill -225 196 -5 -215 196 -5 white_wool
execute if score _bready bce_sys matches 1 run fill -225 196 -4 -215 196 -4 white_wool
execute if score _bready bce_sys matches 1 run fill -225 196 -3 -215 196 -3 white_wool
execute if score _bready bce_sys matches 1 run fill -225 196 -2 -215 196 -2 white_wool
execute if score _bready bce_sys matches 1 run fill -224 196 -1 -216 196 -1 white_wool
execute if score _bready bce_sys matches 1 run fill -223 196 0 -217 196 0 white_wool
execute if score _bready bce_sys matches 1 run fill -222 196 1 -218 196 1 white_wool
execute if score _bready bce_sys matches 1 run fill -222 197 -8 -218 197 -8 white_wool
execute if score _bready bce_sys matches 1 run fill -223 197 -7 -217 197 -7 white_wool
execute if score _bready bce_sys matches 1 run fill -224 197 -6 -216 197 -6 white_wool
execute if score _bready bce_sys matches 1 run fill -224 197 -5 -216 197 -5 white_wool
execute if score _bready bce_sys matches 1 run fill -224 197 -4 -216 197 -4 white_wool
execute if score _bready bce_sys matches 1 run fill -224 197 -3 -216 197 -3 white_wool
execute if score _bready bce_sys matches 1 run fill -224 197 -2 -216 197 -2 white_wool
execute if score _bready bce_sys matches 1 run fill -223 197 -1 -217 197 -1 white_wool
execute if score _bready bce_sys matches 1 run fill -222 197 0 -218 197 0 white_wool
execute if score _bready bce_sys matches 1 run fill -221 198 -7 -219 198 -7 white_wool
execute if score _bready bce_sys matches 1 run fill -222 198 -6 -218 198 -6 white_wool
execute if score _bready bce_sys matches 1 run fill -223 198 -5 -217 198 -5 white_wool
execute if score _bready bce_sys matches 1 run fill -223 198 -4 -217 198 -4 white_wool
execute if score _bready bce_sys matches 1 run fill -223 198 -3 -217 198 -3 white_wool
execute if score _bready bce_sys matches 1 run fill -222 198 -2 -218 198 -2 white_wool
execute if score _bready bce_sys matches 1 run fill -221 198 -1 -219 198 -1 white_wool
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
