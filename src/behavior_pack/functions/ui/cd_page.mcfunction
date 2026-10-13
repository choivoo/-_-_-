# skill cooldown page (seconds, 0 = ready). uses shared fake-player temps; safe because commands run sequentially per player
scoreboard players operation @s bce_tmp = @s bce_cddodge
scoreboard players operation @s bce_tmp += #c19 bce_sys
scoreboard players operation @s bce_tmp /= #c20 bce_sys
scoreboard players operation #t1 bce_sys = @s bce_tmp
scoreboard players operation @s bce_tmp = @s bce_cddash
scoreboard players operation @s bce_tmp += #c19 bce_sys
scoreboard players operation @s bce_tmp /= #c20 bce_sys
scoreboard players operation #t2 bce_sys = @s bce_tmp
scoreboard players operation @s bce_tmp = @s bce_cdbslash
scoreboard players operation @s bce_tmp += #c19 bce_sys
scoreboard players operation @s bce_tmp /= #c20 bce_sys
scoreboard players operation #t3 bce_sys = @s bce_tmp
scoreboard players operation @s bce_tmp = @s bce_cdjudge
scoreboard players operation @s bce_tmp += #c19 bce_sys
scoreboard players operation @s bce_tmp /= #c20 bce_sys
titleraw @s actionbar {"rawtext":[{"text":"§e회피 "},{"score":{"name":"#t1","objective":"bce_sys"}},{"text":" §b돌진 "},{"score":{"name":"#t2","objective":"bce_sys"}},{"text":" §d참격 "},{"score":{"name":"#t3","objective":"bce_sys"}},{"text":" §6심판 "},{"score":{"name":"@s","objective":"bce_tmp"}}]}
