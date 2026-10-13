# observatory zone 5 shell 4
scoreboard players set _bzone bce_sys 5
function build/ready_z5
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 1
execute if score _bready bce_sys matches 1 run fill -210 205 3 -190 205 3 barrier
execute if score _bready bce_sys matches 1 run fill -209 205 4 -191 205 4 barrier
execute if score _bready bce_sys matches 1 run fill -209 205 5 -191 205 5 barrier
execute if score _bready bce_sys matches 1 run fill -208 205 6 -192 205 6 barrier
execute if score _bready bce_sys matches 1 run fill -207 205 7 -193 205 7 barrier
execute if score _bready bce_sys matches 1 run fill -206 205 8 -194 205 8 barrier
execute if score _bready bce_sys matches 1 run fill -205 205 9 -195 205 9 barrier
execute if score _bready bce_sys matches 1 run fill -203 205 10 -197 205 10 barrier
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
