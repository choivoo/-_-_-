# tb zone 0 probe
scoreboard players set _bzone bce_sys 0
function build/ready_z0
scoreboard players set _bstage bce_sys 0
scoreboard players set _bzstart bce_sys 180
scoreboard players set _bsm bce_sys 2
tickingarea add -40 100 -44 60 100 44 bce_z0 true
setblock -40 79 -40 stone
setblock -40 79 -24 stone
setblock -40 79 -8 stone
setblock -40 79 8 stone
setblock -40 79 24 stone
setblock -40 79 40 stone
setblock -24 79 -40 stone
setblock -24 79 -24 stone
setblock -24 79 -8 stone
setblock -24 79 8 stone
setblock -24 79 24 stone
setblock -24 79 40 stone
setblock -8 79 -40 stone
setblock -8 79 -24 stone
setblock -8 79 -8 stone
setblock -8 79 8 stone
setblock -8 79 24 stone
setblock -8 79 40 stone
setblock 8 79 -40 stone
setblock 8 79 -24 stone
setblock 8 79 -8 stone
setblock 8 79 8 stone
setblock 8 79 24 stone
setblock 8 79 40 stone
setblock 24 79 -40 stone
setblock 24 79 -24 stone
setblock 24 79 -8 stone
setblock 24 79 8 stone
setblock 24 79 24 stone
setblock 24 79 40 stone
setblock 40 79 -40 stone
setblock 40 79 -24 stone
setblock 40 79 -8 stone
setblock 40 79 8 stone
setblock 40 79 24 stone
setblock 40 79 40 stone
setblock 56 79 -40 stone
setblock 56 79 -24 stone
setblock 56 79 -8 stone
setblock 56 79 8 stone
setblock 56 79 24 stone
setblock 56 79 40 stone
function build/ready_z0
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bwait bce_sys 0
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
