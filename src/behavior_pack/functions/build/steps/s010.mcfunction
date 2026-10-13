# observatory zone 5 shell 0
scoreboard players set _bzone bce_sys 5
function build/ready_z5
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 1
execute if score _bready bce_sys matches 1 run fill -201 200 -1 -199 200 1 gold_block
execute if score _bready bce_sys matches 1 run setblock -200 201 0 sea_lantern
execute if score _bready bce_sys matches 1 run fill -200 202 0 -200 205 0 end_rod
execute if score _bready bce_sys matches 1 run setblock -202 200 0 amethyst_block
execute if score _bready bce_sys matches 1 run setblock -198 200 0 amethyst_block
execute if score _bready bce_sys matches 1 run setblock -200 200 -2 amethyst_block
execute if score _bready bce_sys matches 1 run setblock -200 200 2 amethyst_block
execute if score _bready bce_sys matches 1 run fill -207 200 -7 -207 206 -7 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run setblock -207 207 -7 chiseled_polished_blackstone
execute if score _bready bce_sys matches 1 run setblock -207 208 -7 sea_lantern
execute if score _bready bce_sys matches 1 run fill -193 200 -7 -193 206 -7 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run setblock -193 207 -7 chiseled_polished_blackstone
execute if score _bready bce_sys matches 1 run setblock -193 208 -7 sea_lantern
execute if score _bready bce_sys matches 1 run fill -207 200 7 -207 206 7 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run setblock -207 207 7 chiseled_polished_blackstone
execute if score _bready bce_sys matches 1 run setblock -207 208 7 sea_lantern
execute if score _bready bce_sys matches 1 run fill -193 200 7 -193 206 7 polished_blackstone_bricks
execute if score _bready bce_sys matches 1 run setblock -193 207 7 chiseled_polished_blackstone
execute if score _bready bce_sys matches 1 run setblock -193 208 7 sea_lantern
execute if score _bready bce_sys matches 1 run fill -203 200 -9 -197 200 -9 iron_bars
execute if score _bready bce_sys matches 1 run fill -205 200 -8 -203 200 -8 iron_bars
execute if score _bready bce_sys matches 1 run fill -197 200 -8 -195 200 -8 iron_bars
execute if score _bready bce_sys matches 1 run fill -206 200 -7 -205 200 -7 iron_bars
execute if score _bready bce_sys matches 1 run fill -195 200 -7 -194 200 -7 iron_bars
execute if score _bready bce_sys matches 1 run fill -207 200 -6 -207 200 -6 iron_bars
execute if score _bready bce_sys matches 1 run fill -193 200 -6 -193 200 -6 iron_bars
execute if score _bready bce_sys matches 1 run fill -208 200 -5 -207 200 -5 iron_bars
execute if score _bready bce_sys matches 1 run fill -193 200 -5 -192 200 -5 iron_bars
execute if score _bready bce_sys matches 1 run fill -208 200 -4 -208 200 -4 iron_bars
execute if score _bready bce_sys matches 1 run fill -192 200 -4 -192 200 -4 iron_bars
execute if score _bready bce_sys matches 1 run fill -209 200 -3 -208 200 -3 iron_bars
execute if score _bready bce_sys matches 1 run fill -192 200 -3 -191 200 -3 iron_bars
execute if score _bready bce_sys matches 1 run fill -209 200 -2 -209 200 -2 iron_bars
execute if score _bready bce_sys matches 1 run fill -191 200 -2 -191 200 -2 iron_bars
execute if score _bready bce_sys matches 1 run fill -209 200 -1 -209 200 -1 iron_bars
execute if score _bready bce_sys matches 1 run fill -191 200 -1 -191 200 -1 iron_bars
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
