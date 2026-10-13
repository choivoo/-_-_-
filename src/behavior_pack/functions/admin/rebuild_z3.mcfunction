execute if entity @s[tag=bce_admin] run scoreboard players set _bstart bce_sys 119
execute if entity @s[tag=bce_admin] run scoreboard players set _bstep bce_sys 119
execute if entity @s[tag=bce_admin] run scoreboard players set _bstop bce_sys 139
execute if entity @s[tag=bce_admin] run scoreboard players set _bsm bce_sys 1
execute if entity @s[tag=bce_admin] run scoreboard players set _berr bce_sys 0
execute if entity @s[tag=bce_admin] run scoreboard players set _bwait bce_sys 0
execute if entity @s[tag=bce_admin] run scoreboard players set _state bce_sys 3
execute if entity @s[tag=bce_admin] run tellraw @a {"rawtext":[{"text":"§e[BCE] 구역 3 (붕괴된 성벽) 재건축"}]}
