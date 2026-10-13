# zone 4 detail 0
scoreboard players set _bzone bce_sys 4
function build/ready_z4
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 3
execute if score _bready bce_sys matches 1 run fill 404 100 -17 404 113 -17 blackstone
execute if score _bready bce_sys matches 1 run setblock 404 100 -17 chiseled_polished_blackstone
execute if score _bready bce_sys matches 1 run setblock 404 113 -17 chiseled_polished_blackstone
execute if score _bready bce_sys matches 1 run setblock 404 103 -16 soul_lantern
execute if score _bready bce_sys matches 1 run fill 404 100 17 404 113 17 blackstone
execute if score _bready bce_sys matches 1 run setblock 404 100 17 chiseled_polished_blackstone
execute if score _bready bce_sys matches 1 run setblock 404 113 17 chiseled_polished_blackstone
execute if score _bready bce_sys matches 1 run setblock 404 103 16 soul_lantern
execute if score _bready bce_sys matches 1 run fill 412 100 -17 412 113 -17 blackstone
execute if score _bready bce_sys matches 1 run setblock 412 100 -17 chiseled_polished_blackstone
execute if score _bready bce_sys matches 1 run setblock 412 113 -17 chiseled_polished_blackstone
execute if score _bready bce_sys matches 1 run setblock 412 103 -16 soul_lantern
execute if score _bready bce_sys matches 1 run fill 412 100 17 412 113 17 blackstone
execute if score _bready bce_sys matches 1 run setblock 412 100 17 chiseled_polished_blackstone
execute if score _bready bce_sys matches 1 run setblock 412 113 17 chiseled_polished_blackstone
execute if score _bready bce_sys matches 1 run setblock 412 103 16 soul_lantern
execute if score _bready bce_sys matches 1 run fill 420 100 -17 420 113 -17 blackstone
execute if score _bready bce_sys matches 1 run setblock 420 100 -17 chiseled_polished_blackstone
execute if score _bready bce_sys matches 1 run setblock 420 113 -17 chiseled_polished_blackstone
execute if score _bready bce_sys matches 1 run setblock 420 103 -16 soul_lantern
execute if score _bready bce_sys matches 1 run fill 420 100 17 420 113 17 blackstone
execute if score _bready bce_sys matches 1 run setblock 420 100 17 chiseled_polished_blackstone
execute if score _bready bce_sys matches 1 run setblock 420 113 17 chiseled_polished_blackstone
execute if score _bready bce_sys matches 1 run setblock 420 103 16 soul_lantern
execute if score _bready bce_sys matches 1 run fill 428 100 -17 428 113 -17 blackstone
execute if score _bready bce_sys matches 1 run setblock 428 100 -17 chiseled_polished_blackstone
execute if score _bready bce_sys matches 1 run setblock 428 113 -17 chiseled_polished_blackstone
execute if score _bready bce_sys matches 1 run setblock 428 103 -16 soul_lantern
execute if score _bready bce_sys matches 1 run fill 428 100 17 428 113 17 blackstone
execute if score _bready bce_sys matches 1 run setblock 428 100 17 chiseled_polished_blackstone
execute if score _bready bce_sys matches 1 run setblock 428 113 17 chiseled_polished_blackstone
execute if score _bready bce_sys matches 1 run setblock 428 103 16 soul_lantern
execute if score _bready bce_sys matches 1 run fill 436 100 -15 436 113 -15 blackstone
execute if score _bready bce_sys matches 1 run setblock 436 100 -15 chiseled_polished_blackstone
execute if score _bready bce_sys matches 1 run setblock 436 113 -15 chiseled_polished_blackstone
execute if score _bready bce_sys matches 1 run fill 436 100 -7 436 113 -7 blackstone
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
