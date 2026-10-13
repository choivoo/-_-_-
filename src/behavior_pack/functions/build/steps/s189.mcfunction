# tb zone 1 verify
scoreboard players set _bzone bce_sys 1
function build/ready_z1
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 4
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _berr bce_sys 0
execute if score _bready bce_sys matches 1 run execute unless block 77 100 35 coarse_dirt run scoreboard players set _berr bce_sys 20
execute if score _bready bce_sys matches 1 run execute unless block 133 99 -15 coarse_dirt run scoreboard players set _berr bce_sys 21
execute if score _bready bce_sys matches 1 run execute unless block 136 99 35 coarse_dirt run scoreboard players set _berr bce_sys 22
execute if score _bready bce_sys matches 1 run execute unless block 70 99 34 coarse_dirt run scoreboard players set _berr bce_sys 23
execute if score _bready bce_sys matches 1 run execute unless block 100 99 -7 stone_bricks run scoreboard players set _berr bce_sys 24
execute if score _bready bce_sys matches 1 run execute unless block 96 99 22 coarse_dirt run scoreboard players set _berr bce_sys 25
execute if score _bready bce_sys matches 1 run execute unless block 100 101 0 chiseled_stone_bricks run scoreboard players set _berr bce_sys 110
execute if score _bready bce_sys matches 1 run execute unless block 100 105 0 sea_lantern run scoreboard players set _berr bce_sys 111
execute if score _bready bce_sys matches 1 run execute unless block 110 100 27 chest run scoreboard players set _berr bce_sys 112
execute if score _bready bce_sys matches 1 run execute if score _berr bce_sys matches 1.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run execute if score _berr bce_sys matches 0 run scoreboard players set _zok1 bce_sys 1
execute if score _bready bce_sys matches 1 run execute if score _berr bce_sys matches 0 run scoreboard players add _bstep bce_sys 1
