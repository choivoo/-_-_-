# observatory zone 5 shell 1
scoreboard players set _bzone bce_sys 5
function build/ready_z5
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 1
execute if score _bready bce_sys matches 1 run fill -209 200 0 -209 200 0 iron_bars
execute if score _bready bce_sys matches 1 run fill -191 200 0 -191 200 0 iron_bars
execute if score _bready bce_sys matches 1 run fill -209 200 1 -209 200 1 iron_bars
execute if score _bready bce_sys matches 1 run fill -191 200 1 -191 200 1 iron_bars
execute if score _bready bce_sys matches 1 run fill -209 200 2 -209 200 2 iron_bars
execute if score _bready bce_sys matches 1 run fill -191 200 2 -191 200 2 iron_bars
execute if score _bready bce_sys matches 1 run fill -209 200 3 -208 200 3 iron_bars
execute if score _bready bce_sys matches 1 run fill -192 200 3 -191 200 3 iron_bars
execute if score _bready bce_sys matches 1 run fill -208 200 4 -208 200 4 iron_bars
execute if score _bready bce_sys matches 1 run fill -192 200 4 -192 200 4 iron_bars
execute if score _bready bce_sys matches 1 run fill -208 200 5 -207 200 5 iron_bars
execute if score _bready bce_sys matches 1 run fill -193 200 5 -192 200 5 iron_bars
execute if score _bready bce_sys matches 1 run fill -207 200 6 -207 200 6 iron_bars
execute if score _bready bce_sys matches 1 run fill -193 200 6 -193 200 6 iron_bars
execute if score _bready bce_sys matches 1 run fill -206 200 7 -205 200 7 iron_bars
execute if score _bready bce_sys matches 1 run fill -195 200 7 -194 200 7 iron_bars
execute if score _bready bce_sys matches 1 run fill -205 200 8 -203 200 8 iron_bars
execute if score _bready bce_sys matches 1 run fill -197 200 8 -195 200 8 iron_bars
execute if score _bready bce_sys matches 1 run fill -203 200 9 -197 200 9 iron_bars
execute if score _bready bce_sys matches 1 run fill -203 201 -9 -197 204 -9 barrier
execute if score _bready bce_sys matches 1 run fill -205 201 -8 -203 204 -8 barrier
execute if score _bready bce_sys matches 1 run fill -197 201 -8 -195 204 -8 barrier
execute if score _bready bce_sys matches 1 run fill -206 201 -7 -205 204 -7 barrier
execute if score _bready bce_sys matches 1 run fill -195 201 -7 -194 204 -7 barrier
execute if score _bready bce_sys matches 1 run fill -207 201 -6 -207 204 -6 barrier
execute if score _bready bce_sys matches 1 run fill -193 201 -6 -193 204 -6 barrier
execute if score _bready bce_sys matches 1 run fill -208 201 -5 -207 204 -5 barrier
execute if score _bready bce_sys matches 1 run fill -193 201 -5 -192 204 -5 barrier
execute if score _bready bce_sys matches 1 run fill -208 201 -4 -208 204 -4 barrier
execute if score _bready bce_sys matches 1 run fill -192 201 -4 -192 204 -4 barrier
execute if score _bready bce_sys matches 1 run fill -209 201 -3 -208 204 -3 barrier
execute if score _bready bce_sys matches 1 run fill -192 201 -3 -191 204 -3 barrier
execute if score _bready bce_sys matches 1 run fill -209 201 -2 -209 204 -2 barrier
execute if score _bready bce_sys matches 1 run fill -191 201 -2 -191 204 -2 barrier
execute if score _bready bce_sys matches 1 run fill -209 201 -1 -209 204 -1 barrier
execute if score _bready bce_sys matches 1 run fill -191 201 -1 -191 204 -1 barrier
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
