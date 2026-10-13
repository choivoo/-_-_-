# observatory zone 5 shell 3
scoreboard players set _bzone bce_sys 5
function build/ready_z5
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 1
execute if score _bready bce_sys matches 1 run fill -210 201 -1 -210 204 -1 barrier
execute if score _bready bce_sys matches 1 run fill -190 201 -1 -190 204 -1 barrier
execute if score _bready bce_sys matches 1 run fill -210 201 0 -210 204 0 barrier
execute if score _bready bce_sys matches 1 run fill -190 201 0 -190 204 0 barrier
execute if score _bready bce_sys matches 1 run fill -210 201 1 -210 204 1 barrier
execute if score _bready bce_sys matches 1 run fill -190 201 1 -190 204 1 barrier
execute if score _bready bce_sys matches 1 run fill -210 201 2 -210 204 2 barrier
execute if score _bready bce_sys matches 1 run fill -190 201 2 -190 204 2 barrier
execute if score _bready bce_sys matches 1 run fill -210 201 3 -210 204 3 barrier
execute if score _bready bce_sys matches 1 run fill -190 201 3 -190 204 3 barrier
execute if score _bready bce_sys matches 1 run fill -209 201 4 -209 204 4 barrier
execute if score _bready bce_sys matches 1 run fill -191 201 4 -191 204 4 barrier
execute if score _bready bce_sys matches 1 run fill -209 201 5 -209 204 5 barrier
execute if score _bready bce_sys matches 1 run fill -191 201 5 -191 204 5 barrier
execute if score _bready bce_sys matches 1 run fill -208 201 6 -208 204 6 barrier
execute if score _bready bce_sys matches 1 run fill -192 201 6 -192 204 6 barrier
execute if score _bready bce_sys matches 1 run fill -207 201 7 -207 204 7 barrier
execute if score _bready bce_sys matches 1 run fill -193 201 7 -193 204 7 barrier
execute if score _bready bce_sys matches 1 run fill -206 201 8 -206 204 8 barrier
execute if score _bready bce_sys matches 1 run fill -194 201 8 -194 204 8 barrier
execute if score _bready bce_sys matches 1 run fill -205 201 9 -204 204 9 barrier
execute if score _bready bce_sys matches 1 run fill -196 201 9 -195 204 9 barrier
execute if score _bready bce_sys matches 1 run fill -203 201 10 -197 204 10 barrier
execute if score _bready bce_sys matches 1 run fill -203 205 -10 -197 205 -10 barrier
execute if score _bready bce_sys matches 1 run fill -205 205 -9 -195 205 -9 barrier
execute if score _bready bce_sys matches 1 run fill -206 205 -8 -194 205 -8 barrier
execute if score _bready bce_sys matches 1 run fill -207 205 -7 -193 205 -7 barrier
execute if score _bready bce_sys matches 1 run fill -208 205 -6 -192 205 -6 barrier
execute if score _bready bce_sys matches 1 run fill -209 205 -5 -191 205 -5 barrier
execute if score _bready bce_sys matches 1 run fill -209 205 -4 -191 205 -4 barrier
execute if score _bready bce_sys matches 1 run fill -210 205 -3 -190 205 -3 barrier
execute if score _bready bce_sys matches 1 run fill -210 205 -2 -190 205 -2 barrier
execute if score _bready bce_sys matches 1 run fill -210 205 -1 -190 205 -1 barrier
execute if score _bready bce_sys matches 1 run fill -210 205 0 -190 205 0 barrier
execute if score _bready bce_sys matches 1 run fill -210 205 1 -190 205 1 barrier
execute if score _bready bce_sys matches 1 run fill -210 205 2 -190 205 2 barrier
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
