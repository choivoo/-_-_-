execute if entity @s[tag=bce_admin] run scoreboard players set #bstart bce_sys 29
execute if entity @s[tag=bce_admin] run scoreboard players set #bstep bce_sys 29
execute if entity @s[tag=bce_admin] run scoreboard players set #bstop bce_sys 69
execute if entity @s[tag=bce_admin] run scoreboard players set #bsm bce_sys 1
execute if entity @s[tag=bce_admin] run scoreboard players set #berr bce_sys 0
execute if entity @s[tag=bce_admin] run scoreboard players set #bwait bce_sys 0
execute if entity @s[tag=bce_admin] run scoreboard players set #state bce_sys 3
execute if entity @s[tag=bce_admin] run tellraw @a {"rawtext":[{"text":"§e[BCE] 구역 1 (잿빛 마을) 재건축"}]}
