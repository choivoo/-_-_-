# observatory zone 5 shell 2
scoreboard players set _bzone bce_sys 5
function build/ready_z5
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 1
execute if score _bready bce_sys matches 1 run fill -209 201 0 -209 204 0 barrier
execute if score _bready bce_sys matches 1 run fill -191 201 0 -191 204 0 barrier
execute if score _bready bce_sys matches 1 run fill -209 201 1 -209 204 1 barrier
execute if score _bready bce_sys matches 1 run fill -191 201 1 -191 204 1 barrier
execute if score _bready bce_sys matches 1 run fill -209 201 2 -209 204 2 barrier
execute if score _bready bce_sys matches 1 run fill -191 201 2 -191 204 2 barrier
execute if score _bready bce_sys matches 1 run fill -209 201 3 -208 204 3 barrier
execute if score _bready bce_sys matches 1 run fill -192 201 3 -191 204 3 barrier
execute if score _bready bce_sys matches 1 run fill -208 201 4 -208 204 4 barrier
execute if score _bready bce_sys matches 1 run fill -192 201 4 -192 204 4 barrier
execute if score _bready bce_sys matches 1 run fill -208 201 5 -207 204 5 barrier
execute if score _bready bce_sys matches 1 run fill -193 201 5 -192 204 5 barrier
execute if score _bready bce_sys matches 1 run fill -207 201 6 -207 204 6 barrier
execute if score _bready bce_sys matches 1 run fill -193 201 6 -193 204 6 barrier
execute if score _bready bce_sys matches 1 run fill -206 201 7 -205 204 7 barrier
execute if score _bready bce_sys matches 1 run fill -195 201 7 -194 204 7 barrier
execute if score _bready bce_sys matches 1 run fill -205 201 8 -203 204 8 barrier
execute if score _bready bce_sys matches 1 run fill -197 201 8 -195 204 8 barrier
execute if score _bready bce_sys matches 1 run fill -203 201 9 -197 204 9 barrier
execute if score _bready bce_sys matches 1 run fill -203 201 -10 -197 204 -10 barrier
execute if score _bready bce_sys matches 1 run fill -205 201 -9 -204 204 -9 barrier
execute if score _bready bce_sys matches 1 run fill -196 201 -9 -195 204 -9 barrier
execute if score _bready bce_sys matches 1 run fill -206 201 -8 -206 204 -8 barrier
execute if score _bready bce_sys matches 1 run fill -194 201 -8 -194 204 -8 barrier
execute if score _bready bce_sys matches 1 run fill -207 201 -7 -207 204 -7 barrier
execute if score _bready bce_sys matches 1 run fill -193 201 -7 -193 204 -7 barrier
execute if score _bready bce_sys matches 1 run fill -208 201 -6 -208 204 -6 barrier
execute if score _bready bce_sys matches 1 run fill -192 201 -6 -192 204 -6 barrier
execute if score _bready bce_sys matches 1 run fill -209 201 -5 -209 204 -5 barrier
execute if score _bready bce_sys matches 1 run fill -191 201 -5 -191 204 -5 barrier
execute if score _bready bce_sys matches 1 run fill -209 201 -4 -209 204 -4 barrier
execute if score _bready bce_sys matches 1 run fill -191 201 -4 -191 204 -4 barrier
execute if score _bready bce_sys matches 1 run fill -210 201 -3 -210 204 -3 barrier
execute if score _bready bce_sys matches 1 run fill -190 201 -3 -190 204 -3 barrier
execute if score _bready bce_sys matches 1 run fill -210 201 -2 -210 204 -2 barrier
execute if score _bready bce_sys matches 1 run fill -190 201 -2 -190 204 -2 barrier
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
