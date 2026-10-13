# PATROL: walk 8 blocks in short hops (air/floor checked), turn at walls, return to IDLE; aggro on sight
execute if entity @a[r=14,tag=bce_ctl] run function enemies/to_detect
execute unless block ^ ^ ^1 air run tp @s ~ ~ ~ ~100 ~
execute if score @s bce_aitm matches 10 if block ^ ^ ^1 air if block ^ ^1 ^1 air unless block ^ ^-1 ^1 air run tp @s ^ ^ ^1
execute if score @s bce_aitm matches 20 if block ^ ^ ^1 air if block ^ ^1 ^1 air unless block ^ ^-1 ^1 air run tp @s ^ ^ ^1
execute if score @s bce_aitm matches 30 if block ^ ^ ^1 air if block ^ ^1 ^1 air unless block ^ ^-1 ^1 air run tp @s ^ ^ ^1
execute if score @s bce_aitm matches 40 if block ^ ^ ^1 air if block ^ ^1 ^1 air unless block ^ ^-1 ^1 air run tp @s ^ ^ ^1
execute if score @s bce_aitm matches 50 if block ^ ^ ^1 air if block ^ ^1 ^1 air unless block ^ ^-1 ^1 air run tp @s ^ ^ ^1
execute if score @s bce_aitm matches 60 if block ^ ^ ^1 air if block ^ ^1 ^1 air unless block ^ ^-1 ^1 air run tp @s ^ ^ ^1
execute if score @s bce_aitm matches 70 if block ^ ^ ^1 air if block ^ ^1 ^1 air unless block ^ ^-1 ^1 air run tp @s ^ ^ ^1
execute if score @s bce_aitm matches 80 if block ^ ^ ^1 air if block ^ ^1 ^1 air unless block ^ ^-1 ^1 air run tp @s ^ ^ ^1
execute if score @s bce_aitm matches 90.. run function enemies/to_idle
