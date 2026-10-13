# observatory zone 5 verify
scoreboard players set _bzone bce_sys 5
function build/ready_z5
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 4
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _berr bce_sys 0
execute if score _bready bce_sys matches 1 run execute unless block -200 200 0 gold_block run scoreboard players set _berr bce_sys 150
execute if score _bready bce_sys matches 1 run execute unless block -200 201 0 sea_lantern run scoreboard players set _berr bce_sys 151
execute if score _bready bce_sys matches 1 run execute if score _berr bce_sys matches 1.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run execute if score _berr bce_sys matches 0 run scoreboard players set _zok5 bce_sys 1
execute if score _bready bce_sys matches 1 run execute if score _berr bce_sys matches 0 run scoreboard players add _bstep bce_sys 1
