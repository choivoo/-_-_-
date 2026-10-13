# observatory zone 5 ground 5
scoreboard players set _bzone bce_sys 5
function build/ready_z5
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 0
execute if score _bready bce_sys matches 1 run fill -203 198 -10 -197 199 -10 polished_blackstone
execute if score _bready bce_sys matches 1 run fill -205 198 -9 -195 199 -9 polished_blackstone
execute if score _bready bce_sys matches 1 run fill -206 198 -8 -194 199 -8 polished_blackstone
execute if score _bready bce_sys matches 1 run fill -207 198 -7 -193 199 -7 polished_blackstone
execute if score _bready bce_sys matches 1 run fill -208 198 -6 -192 199 -6 polished_blackstone
execute if score _bready bce_sys matches 1 run fill -209 198 -5 -191 199 -5 polished_blackstone
execute if score _bready bce_sys matches 1 run fill -209 198 -4 -191 199 -4 polished_blackstone
execute if score _bready bce_sys matches 1 run fill -210 198 -3 -190 199 -3 polished_blackstone
execute if score _bready bce_sys matches 1 run fill -210 198 -2 -190 199 -2 polished_blackstone
execute if score _bready bce_sys matches 1 run fill -210 198 -1 -190 199 -1 polished_blackstone
execute if score _bready bce_sys matches 1 run fill -210 198 0 -190 199 0 polished_blackstone
execute if score _bready bce_sys matches 1 run fill -210 198 1 -190 199 1 polished_blackstone
execute if score _bready bce_sys matches 1 run fill -210 198 2 -190 199 2 polished_blackstone
execute if score _bready bce_sys matches 1 run fill -210 198 3 -190 199 3 polished_blackstone
execute if score _bready bce_sys matches 1 run fill -209 198 4 -191 199 4 polished_blackstone
execute if score _bready bce_sys matches 1 run fill -209 198 5 -191 199 5 polished_blackstone
execute if score _bready bce_sys matches 1 run fill -208 198 6 -192 199 6 polished_blackstone
execute if score _bready bce_sys matches 1 run fill -207 198 7 -193 199 7 polished_blackstone
execute if score _bready bce_sys matches 1 run fill -206 198 8 -194 199 8 polished_blackstone
execute if score _bready bce_sys matches 1 run fill -205 198 9 -195 199 9 polished_blackstone
execute if score _bready bce_sys matches 1 run fill -203 198 10 -197 199 10 polished_blackstone
execute if score _bready bce_sys matches 1 run fill -203 199 -9 -197 199 -9 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill -205 199 -8 -195 199 -8 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill -206 199 -7 -194 199 -7 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill -207 199 -6 -193 199 -6 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill -208 199 -5 -192 199 -5 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill -208 199 -4 -192 199 -4 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill -209 199 -3 -191 199 -3 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill -209 199 -2 -191 199 -2 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill -209 199 -1 -191 199 -1 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill -209 199 0 -191 199 0 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill -209 199 1 -191 199 1 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill -209 199 2 -191 199 2 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill -209 199 3 -191 199 3 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill -208 199 4 -192 199 4 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run fill -208 199 5 -192 199 5 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
