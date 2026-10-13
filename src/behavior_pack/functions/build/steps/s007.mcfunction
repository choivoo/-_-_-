# observatory zone 5 ground 6
scoreboard players set _bzone bce_sys 5
function build/ready_z5
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 0
execute if score _bready bce_sys matches 1 run fill -207 199 6 -193 199 6 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill -206 199 7 -194 199 7 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill -205 199 8 -195 199 8 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill -203 199 9 -197 199 9 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill -202 199 -8 -198 199 -8 polished_andesite
execute if score _bready bce_sys matches 1 run fill -204 199 -7 -196 199 -7 polished_andesite
execute if score _bready bce_sys matches 1 run fill -206 199 -6 -194 199 -6 polished_andesite
execute if score _bready bce_sys matches 1 run fill -206 199 -5 -194 199 -5 polished_andesite
execute if score _bready bce_sys matches 1 run fill -207 199 -4 -193 199 -4 polished_andesite
execute if score _bready bce_sys matches 1 run fill -207 199 -3 -193 199 -3 polished_andesite
execute if score _bready bce_sys matches 1 run fill -208 199 -2 -192 199 -2 polished_andesite
execute if score _bready bce_sys matches 1 run fill -208 199 -1 -192 199 -1 polished_andesite
execute if score _bready bce_sys matches 1 run fill -208 199 0 -192 199 0 polished_andesite
execute if score _bready bce_sys matches 1 run fill -208 199 1 -192 199 1 polished_andesite
execute if score _bready bce_sys matches 1 run fill -208 199 2 -192 199 2 polished_andesite
execute if score _bready bce_sys matches 1 run fill -207 199 3 -193 199 3 polished_andesite
execute if score _bready bce_sys matches 1 run fill -207 199 4 -193 199 4 polished_andesite
execute if score _bready bce_sys matches 1 run fill -206 199 5 -194 199 5 polished_andesite
execute if score _bready bce_sys matches 1 run fill -206 199 6 -194 199 6 polished_andesite
execute if score _bready bce_sys matches 1 run fill -204 199 7 -196 199 7 polished_andesite
execute if score _bready bce_sys matches 1 run fill -202 199 8 -198 199 8 polished_andesite
execute if score _bready bce_sys matches 1 run fill -202 199 -6 -198 199 -6 white_concrete
execute if score _bready bce_sys matches 1 run fill -204 199 -5 -196 199 -5 white_concrete
execute if score _bready bce_sys matches 1 run fill -205 199 -4 -195 199 -4 white_concrete
execute if score _bready bce_sys matches 1 run fill -205 199 -3 -195 199 -3 white_concrete
execute if score _bready bce_sys matches 1 run fill -206 199 -2 -194 199 -2 white_concrete
execute if score _bready bce_sys matches 1 run fill -206 199 -1 -194 199 -1 white_concrete
execute if score _bready bce_sys matches 1 run fill -206 199 0 -194 199 0 white_concrete
execute if score _bready bce_sys matches 1 run fill -206 199 1 -194 199 1 white_concrete
execute if score _bready bce_sys matches 1 run fill -206 199 2 -194 199 2 white_concrete
execute if score _bready bce_sys matches 1 run fill -205 199 3 -195 199 3 white_concrete
execute if score _bready bce_sys matches 1 run fill -205 199 4 -195 199 4 white_concrete
execute if score _bready bce_sys matches 1 run fill -204 199 5 -196 199 5 white_concrete
execute if score _bready bce_sys matches 1 run fill -202 199 6 -198 199 6 white_concrete
execute if score _bready bce_sys matches 1 run fill -202 199 -4 -198 199 -4 polished_blackstone
execute if score _bready bce_sys matches 1 run fill -203 199 -3 -197 199 -3 polished_blackstone
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
