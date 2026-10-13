# zone 4 detail 0
scoreboard players set #bzone bce_sys 4
execute unless block 400 79 0 stone run scoreboard players set #bsm bce_sys 2
execute unless block 400 79 0 stone run scoreboard players add #bwait bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #berr bce_sys 1
execute if score #bwait bce_sys matches 2400.. run scoreboard players set #bsm bce_sys 7
execute if block 400 79 0 stone run scoreboard players set #bsm bce_sys 3
execute if block 400 79 0 stone run scoreboard players set #bstage bce_sys 3
execute if block 400 79 0 stone run fill 404 100 -17 404 113 -17 blackstone
execute if block 400 79 0 stone run setblock 404 100 -17 chiseled_polished_blackstone
execute if block 400 79 0 stone run setblock 404 113 -17 chiseled_polished_blackstone
execute if block 400 79 0 stone run setblock 404 103 -16 soul_lantern
execute if block 400 79 0 stone run fill 404 100 17 404 113 17 blackstone
execute if block 400 79 0 stone run setblock 404 100 17 chiseled_polished_blackstone
execute if block 400 79 0 stone run setblock 404 113 17 chiseled_polished_blackstone
execute if block 400 79 0 stone run setblock 404 103 16 soul_lantern
execute if block 400 79 0 stone run fill 412 100 -17 412 113 -17 blackstone
execute if block 400 79 0 stone run setblock 412 100 -17 chiseled_polished_blackstone
execute if block 400 79 0 stone run setblock 412 113 -17 chiseled_polished_blackstone
execute if block 400 79 0 stone run setblock 412 103 -16 soul_lantern
execute if block 400 79 0 stone run fill 412 100 17 412 113 17 blackstone
execute if block 400 79 0 stone run setblock 412 100 17 chiseled_polished_blackstone
execute if block 400 79 0 stone run setblock 412 113 17 chiseled_polished_blackstone
execute if block 400 79 0 stone run setblock 412 103 16 soul_lantern
execute if block 400 79 0 stone run fill 420 100 -17 420 113 -17 blackstone
execute if block 400 79 0 stone run setblock 420 100 -17 chiseled_polished_blackstone
execute if block 400 79 0 stone run setblock 420 113 -17 chiseled_polished_blackstone
execute if block 400 79 0 stone run setblock 420 103 -16 soul_lantern
execute if block 400 79 0 stone run fill 420 100 17 420 113 17 blackstone
execute if block 400 79 0 stone run setblock 420 100 17 chiseled_polished_blackstone
execute if block 400 79 0 stone run setblock 420 113 17 chiseled_polished_blackstone
execute if block 400 79 0 stone run setblock 420 103 16 soul_lantern
execute if block 400 79 0 stone run fill 428 100 -17 428 113 -17 blackstone
execute if block 400 79 0 stone run setblock 428 100 -17 chiseled_polished_blackstone
execute if block 400 79 0 stone run setblock 428 113 -17 chiseled_polished_blackstone
execute if block 400 79 0 stone run setblock 428 103 -16 soul_lantern
execute if block 400 79 0 stone run fill 428 100 17 428 113 17 blackstone
execute if block 400 79 0 stone run setblock 428 100 17 chiseled_polished_blackstone
execute if block 400 79 0 stone run setblock 428 113 17 chiseled_polished_blackstone
execute if block 400 79 0 stone run setblock 428 103 16 soul_lantern
execute if block 400 79 0 stone run fill 436 100 -15 436 113 -15 blackstone
execute if block 400 79 0 stone run setblock 436 100 -15 chiseled_polished_blackstone
execute if block 400 79 0 stone run setblock 436 113 -15 chiseled_polished_blackstone
execute if block 400 79 0 stone run fill 436 100 -7 436 113 -7 blackstone
execute if block 400 79 0 stone run scoreboard players add #bstep bce_sys 1
