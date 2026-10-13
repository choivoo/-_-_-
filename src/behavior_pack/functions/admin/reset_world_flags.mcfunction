# DESTRUCTIVE test reset: world flags + full rebuild (also re-closes gates)
function bosses/reset
scoreboard players set #yard bce_sys 0
scoreboard players set #wall bce_sys 0
scoreboard players set #puzzle bce_sys 0
scoreboard players set #door bce_sys 0
scoreboard players set #bdead bce_sys 0
scoreboard players set #started bce_sys 0
scoreboard players set #bridge bce_sys 99
kill @e[tag=bce_enemy]
function admin/rebuild_all
