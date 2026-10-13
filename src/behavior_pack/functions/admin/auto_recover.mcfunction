# ADMIN: leave ERROR and retry the failed zone
execute if entity @s[tag=bce_admin] run execute if entity @s[tag=bce_admin] run scoreboard players set _aretry bce_sys 0
execute if entity @s[tag=bce_admin] run execute if entity @s[tag=bce_admin] if score _astate bce_sys matches 6 run scoreboard players set _astate bce_sys 2
execute if entity @s[tag=bce_admin] run execute if entity @s[tag=bce_admin] if score _astate bce_sys matches 2 run function build/recover
