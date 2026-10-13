# observatory zone 5 ground 7
scoreboard players set _bzone bce_sys 5
function build/ready_z5
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 0
execute if score _bready bce_sys matches 1 run fill -204 199 -2 -196 199 -2 polished_blackstone
execute if score _bready bce_sys matches 1 run fill -204 199 -1 -196 199 -1 polished_blackstone
execute if score _bready bce_sys matches 1 run fill -204 199 0 -196 199 0 polished_blackstone
execute if score _bready bce_sys matches 1 run fill -204 199 1 -196 199 1 polished_blackstone
execute if score _bready bce_sys matches 1 run fill -204 199 2 -196 199 2 polished_blackstone
execute if score _bready bce_sys matches 1 run fill -203 199 3 -197 199 3 polished_blackstone
execute if score _bready bce_sys matches 1 run fill -202 199 4 -198 199 4 polished_blackstone
execute if score _bready bce_sys matches 1 run fill -201 199 -2 -199 199 -2 gold_block
execute if score _bready bce_sys matches 1 run fill -202 199 -1 -198 199 -1 gold_block
execute if score _bready bce_sys matches 1 run fill -202 199 0 -198 199 0 gold_block
execute if score _bready bce_sys matches 1 run fill -202 199 1 -198 199 1 gold_block
execute if score _bready bce_sys matches 1 run fill -201 199 2 -199 199 2 gold_block
execute if score _bready bce_sys matches 1 run fill -202 195 -6 -198 197 -6 polished_blackstone
execute if score _bready bce_sys matches 1 run fill -204 195 -5 -196 197 -5 polished_blackstone
execute if score _bready bce_sys matches 1 run fill -205 195 -4 -195 197 -4 polished_blackstone
execute if score _bready bce_sys matches 1 run fill -205 195 -3 -195 197 -3 polished_blackstone
execute if score _bready bce_sys matches 1 run fill -206 195 -2 -194 197 -2 polished_blackstone
execute if score _bready bce_sys matches 1 run fill -206 195 -1 -194 197 -1 polished_blackstone
execute if score _bready bce_sys matches 1 run fill -206 195 0 -194 197 0 polished_blackstone
execute if score _bready bce_sys matches 1 run fill -206 195 1 -194 197 1 polished_blackstone
execute if score _bready bce_sys matches 1 run fill -206 195 2 -194 197 2 polished_blackstone
execute if score _bready bce_sys matches 1 run fill -205 195 3 -195 197 3 polished_blackstone
execute if score _bready bce_sys matches 1 run fill -205 195 4 -195 197 4 polished_blackstone
execute if score _bready bce_sys matches 1 run fill -204 195 5 -196 197 5 polished_blackstone
execute if score _bready bce_sys matches 1 run fill -202 195 6 -198 197 6 polished_blackstone
execute if score _bready bce_sys matches 1 run fill -202 192 -4 -198 194 -4 polished_blackstone
execute if score _bready bce_sys matches 1 run fill -203 192 -3 -197 194 -3 polished_blackstone
execute if score _bready bce_sys matches 1 run fill -204 192 -2 -196 194 -2 polished_blackstone
execute if score _bready bce_sys matches 1 run fill -204 192 -1 -196 194 -1 polished_blackstone
execute if score _bready bce_sys matches 1 run fill -204 192 0 -196 194 0 polished_blackstone
execute if score _bready bce_sys matches 1 run fill -204 192 1 -196 194 1 polished_blackstone
execute if score _bready bce_sys matches 1 run fill -204 192 2 -196 194 2 polished_blackstone
execute if score _bready bce_sys matches 1 run fill -203 192 3 -197 194 3 polished_blackstone
execute if score _bready bce_sys matches 1 run fill -202 192 4 -198 194 4 polished_blackstone
execute if score _bready bce_sys matches 1 run fill -201 189 -2 -199 191 -2 polished_blackstone
execute if score _bready bce_sys matches 1 run fill -202 189 -1 -198 191 -1 polished_blackstone
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
