# observatory zone 5 ground 8
scoreboard players set _bzone bce_sys 5
function build/ready_z5
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 0
execute if score _bready bce_sys matches 1 run fill -202 189 0 -198 191 0 polished_blackstone
execute if score _bready bce_sys matches 1 run fill -202 189 1 -198 191 1 polished_blackstone
execute if score _bready bce_sys matches 1 run fill -201 189 2 -199 191 2 polished_blackstone
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
