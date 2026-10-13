# tb zone 3 verify
scoreboard players set _bzone bce_sys 3
function build/ready_z3
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 4
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _berr bce_sys 0
execute if score _bready bce_sys matches 1 run execute unless block 334 99 2 stone_bricks run scoreboard players set _berr bce_sys 40
execute if score _bready bce_sys matches 1 run execute unless block 323 99 13 stone_bricks run scoreboard players set _berr bce_sys 41
execute if score _bready bce_sys matches 1 run execute unless block 286 99 -30 stone_bricks run scoreboard players set _berr bce_sys 42
execute if score _bready bce_sys matches 1 run execute unless block 262 99 34 stone_bricks run scoreboard players set _berr bce_sys 43
execute if score _bready bce_sys matches 1 run execute unless block 265 99 -29 stone_bricks run scoreboard players set _berr bce_sys 44
execute if score _bready bce_sys matches 1 run execute unless block 301 99 -28 stone_bricks run scoreboard players set _berr bce_sys 45
execute if score _bready bce_sys matches 1 run execute unless block 337 101 0 iron_bars run scoreboard players set _berr bce_sys 130
execute if score _bready bce_sys matches 1 run execute unless block 301 105 20 stone_bricks run scoreboard players set _berr bce_sys 131
execute if score _bready bce_sys matches 1 run execute if score _berr bce_sys matches 1.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run execute if score _berr bce_sys matches 0 run scoreboard players set _zok3 bce_sys 1
execute if score _bready bce_sys matches 1 run execute if score _berr bce_sys matches 0 run scoreboard players add _bstep bce_sys 1
