# tb zone 2 func 0
scoreboard players set _bzone bce_sys 2
function build/ready_z2
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 5
execute if score _bready bce_sys matches 1 run setblock 222 87 16 chest
execute if score _bready bce_sys matches 1 run replaceitem block 222 87 16 slot.container 0 diamond 2
execute if score _bready bce_sys matches 1 run replaceitem block 222 87 16 slot.container 1 golden_apple 2
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
