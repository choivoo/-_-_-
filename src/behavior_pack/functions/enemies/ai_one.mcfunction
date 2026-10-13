# states: 0 IDLE 1 DETECT 2 CHASE 3 ATTACK_PREPARE 4 ATTACK(instant, see atk_*) 5 RECOVERY 6 STUNNED 7 RETURN 8 DEAD(entity removed)
scoreboard players add @s bce_aitm 2
execute if entity @s[scores={bce_ai=1..7}] run tag @a[r=14] add bce_comb
execute if score @s bce_ai matches 0 run function enemies/st_idle
execute if score @s bce_ai matches 1 run function enemies/st_detect
execute if score @s bce_ai matches 2 run function enemies/st_chase
execute if score @s bce_ai matches 3 run function enemies/st_prepare
execute if score @s bce_ai matches 5 run function enemies/st_recover
execute if score @s bce_ai matches 6 run function enemies/st_stun
execute if score @s bce_ai matches 7 run function enemies/st_return
