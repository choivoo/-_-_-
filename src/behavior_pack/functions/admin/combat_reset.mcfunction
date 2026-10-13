# reset combat state of the executor and the boss fight
execute if entity @s[tag=bce_admin] run scoreboard players set @s bce_combo 0
execute if entity @s[tag=bce_admin] run scoreboard players set @s bce_cwin 0
execute if entity @s[tag=bce_admin] run scoreboard players set @s bce_iframe 0
execute if entity @s[tag=bce_admin] run tag @s remove bce_iframe
execute if entity @s[tag=bce_admin] run scoreboard players set @s bce_ultt 0
execute if entity @s[tag=bce_admin] run scoreboard players set @s bce_cdslash 0
execute if entity @s[tag=bce_admin] run scoreboard players set @s bce_cddodge 0
execute if entity @s[tag=bce_admin] run scoreboard players set @s bce_cddash 0
execute if entity @s[tag=bce_admin] run scoreboard players set @s bce_cdbslash 0
execute if entity @s[tag=bce_admin] run scoreboard players set @s bce_cdjudge 0
execute if entity @s[tag=bce_admin] run scoreboard players set @s bce_cdult 0
execute if entity @s[tag=bce_admin] run function bosses/reset
