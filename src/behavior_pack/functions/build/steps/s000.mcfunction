# observatory zone 5 probe
scoreboard players set _bzone bce_sys 5
function build/ready_z5
scoreboard players set _bstage bce_sys 0
scoreboard players set _bzstart bce_sys 0
scoreboard players set _bsm bce_sys 2
tickingarea add -234 100 -38 -166 100 38 bce_z5 true
setblock -232 160 -40 stone
setblock -232 160 -24 stone
setblock -232 160 -8 stone
setblock -232 160 8 stone
setblock -232 160 24 stone
setblock -232 160 40 stone
setblock -216 160 -40 stone
setblock -216 160 -24 stone
setblock -216 160 -8 stone
setblock -216 160 8 stone
setblock -216 160 24 stone
setblock -216 160 40 stone
setblock -200 160 -40 stone
setblock -200 160 -24 stone
setblock -200 160 -8 stone
setblock -200 160 8 stone
setblock -200 160 24 stone
setblock -200 160 40 stone
setblock -184 160 -40 stone
setblock -184 160 -24 stone
setblock -184 160 -8 stone
setblock -184 160 8 stone
setblock -184 160 24 stone
setblock -184 160 40 stone
setblock -168 160 -40 stone
setblock -168 160 -24 stone
setblock -168 160 -8 stone
setblock -168 160 8 stone
setblock -168 160 24 stone
setblock -168 160 40 stone
function build/ready_z5
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bwait bce_sys 0
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
