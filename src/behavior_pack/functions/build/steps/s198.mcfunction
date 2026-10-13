# tb zone 3 load 0
scoreboard players set _bzone bce_sys 3
function build/ready_z3
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 1
execute if score _bready bce_sys matches 1 run structure load bce:z3_q00_0 260 80 -40
execute if score _bready bce_sys matches 1 run structure load bce:z3_q01_0 260 80 0
execute if score _bready bce_sys matches 1 run structure load bce:z3_q10_0 300 80 -40
execute if score _bready bce_sys matches 1 run structure load bce:z3_q11_0 300 80 0
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
