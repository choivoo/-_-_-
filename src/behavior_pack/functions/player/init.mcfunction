# one-time per player (tag bce_init persists across rejoin => quest data is never reset)
tag @s add bce_init
tag @s add bce_ctl
scoreboard players set @s bce_stam 100
scoreboard players set @s bce_cdslash 0
scoreboard players set @s bce_cddodge 0
scoreboard players set @s bce_cdult 0
scoreboard players set @s bce_cdheal 0
scoreboard players set @s bce_combo 0
scoreboard players set @s bce_cwin 0
scoreboard players set @s bce_iframe 0
scoreboard players set @s bce_cur 0
scoreboard players set @s bce_prev 0
scoreboard players set @s bce_q 0
scoreboard players set @s bce_cp 0
scoreboard players set @s bce_ps 0
scoreboard players set @s bce_cs 0
scoreboard players set @s bce_cst 0
tellraw @s {"rawtext":[{"text":"§b[검은별의 성채] §f환영합니다. 시작 패드에 서면 오프닝이 시작됩니다."}]}
