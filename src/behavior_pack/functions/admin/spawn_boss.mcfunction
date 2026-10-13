# test: summon boss and start immediately (stand in the arena)
execute if entity @s[tag=bce_admin] run execute if score _bstate bce_sys matches 0 run function bosses/summon
execute if entity @s[tag=bce_admin] run execute if score _bstate bce_sys matches 1 run function bosses/begin
