# test: summon boss and start immediately (stand in the arena)
execute if score #bstate bce_sys matches 0 run function bosses/summon
execute if score #bstate bce_sys matches 1 run function bosses/begin
