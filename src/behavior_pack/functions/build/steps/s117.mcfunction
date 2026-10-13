# zone 2 verify
scoreboard players set _bzone bce_sys 2
function build/ready_z2
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 4
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _berr bce_sys 0
execute if score _bready bce_sys matches 1 run execute unless block 176 99 25 mossy_stone_bricks run scoreboard players set _berr bce_sys 30
execute if score _bready bce_sys matches 1 run execute unless block 189 99 -2 mossy_stone_bricks run scoreboard players set _berr bce_sys 31
execute if score _bready bce_sys matches 1 run execute unless block 225 99 -28 mossy_stone_bricks run scoreboard players set _berr bce_sys 32
execute if score _bready bce_sys matches 1 run execute unless block 207 99 10 mossy_stone_bricks run scoreboard players set _berr bce_sys 33
execute if score _bready bce_sys matches 1 run execute unless block 181 99 -28 gravel run scoreboard players set _berr bce_sys 34
execute if score _bready bce_sys matches 1 run execute unless block 181 99 -9 mossy_stone_bricks run scoreboard players set _berr bce_sys 35
execute if score _bready bce_sys matches 1 run execute unless block 188 87 -5 lever run scoreboard players set _berr bce_sys 120
execute if score _bready bce_sys matches 1 run execute unless block 188 87 5 lever run scoreboard players set _berr bce_sys 121
execute if score _bready bce_sys matches 1 run execute unless block 204 88 0 iron_bars run scoreboard players set _berr bce_sys 122
execute if score _bready bce_sys matches 1 run execute if score _berr bce_sys matches 1.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run execute if score _berr bce_sys matches 0 run scoreboard players set _zok2 bce_sys 1
execute if score _bready bce_sys matches 1 run execute if score _berr bce_sys matches 0 run scoreboard players add _bstep bce_sys 1
