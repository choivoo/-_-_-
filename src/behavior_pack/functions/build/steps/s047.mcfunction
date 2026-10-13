# zone 0 verify
scoreboard players set _bzone bce_sys 0
function build/ready_z0
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 4
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _berr bce_sys 0
execute if score _bready bce_sys matches 1 run execute unless block 3 103 -19 stone_bricks run scoreboard players set _berr bce_sys 10
execute if score _bready bce_sys matches 1 run execute unless block -31 99 26 stone_bricks run scoreboard players set _berr bce_sys 11
execute if score _bready bce_sys matches 1 run execute unless block 15 99 -30 stone_bricks run scoreboard players set _berr bce_sys 12
execute if score _bready bce_sys matches 1 run execute unless block -31 99 34 stone_bricks run scoreboard players set _berr bce_sys 13
execute if score _bready bce_sys matches 1 run execute unless block -10 99 36 stone_bricks run scoreboard players set _berr bce_sys 14
execute if score _bready bce_sys matches 1 run execute unless block -32 99 -10 stone_bricks run scoreboard players set _berr bce_sys 15
execute if score _bready bce_sys matches 1 run execute unless block -12 102 0 gilded_blackstone run scoreboard players set _berr bce_sys 100
execute if score _bready bce_sys matches 1 run execute unless block 22 101 -10 smithing_table run scoreboard players set _berr bce_sys 101
execute if score _bready bce_sys matches 1 run execute unless block -8 100 0 air run scoreboard players set _berr bce_sys 102
execute if score _bready bce_sys matches 1 run execute unless block -8 101 0 air run scoreboard players set _berr bce_sys 103
execute if score _bready bce_sys matches 1 run execute unless block -8 99 0 deepslate_tiles run scoreboard players set _berr bce_sys 104
execute if score _bready bce_sys matches 1 run execute unless block 0 99 0 gilded_blackstone run scoreboard players set _berr bce_sys 105
execute if score _bready bce_sys matches 1 run execute if score _berr bce_sys matches 1.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run execute if score _berr bce_sys matches 0 run scoreboard players set _zok0 bce_sys 1
execute if score _bready bce_sys matches 1 run execute if score _berr bce_sys matches 0 run scoreboard players add _bstep bce_sys 1
