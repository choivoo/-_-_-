# DESTRUCTIVE test reset: world flags + full rebuild (also re-closes gates)
execute if entity @s[tag=bce_admin] run function bosses/reset
execute if entity @s[tag=bce_admin] run scoreboard players set #yard bce_sys 0
execute if entity @s[tag=bce_admin] run scoreboard players set #wall bce_sys 0
execute if entity @s[tag=bce_admin] run scoreboard players set #puzzle bce_sys 0
execute if entity @s[tag=bce_admin] run scoreboard players set #door bce_sys 0
execute if entity @s[tag=bce_admin] run scoreboard players set #bdead bce_sys 0
execute if entity @s[tag=bce_admin] run scoreboard players set #started bce_sys 0
execute if entity @s[tag=bce_admin] run scoreboard players set #bridge bce_sys 99
execute if entity @s[tag=bce_admin] run kill @e[tag=bce_enemy]
execute if entity @s[tag=bce_admin] run function admin/rebuild_all
