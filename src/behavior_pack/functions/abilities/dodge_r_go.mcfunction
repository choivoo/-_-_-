# dodge r: stamina, cooldown, i-frames (tag+resistance), wall/edge-safe stepwise teleport
scoreboard players operation @s bce_stam -= _cost_dodge bce_sys
scoreboard players set @s bce_cddodge 24
scoreboard players set @s bce_iframe 10
tag @s add bce_iframe
effect @s resistance 1 4 true
playsound random.pop @a ~ ~ ~ 0.8 1.4
particle minecraft:basic_smoke_particle ~ ~0.3 ~
execute at @s rotated ~ 0 if block ^-1 ^ ^ air if block ^-1 ^1 ^ air unless block ^-1 ^-1 ^ air unless block ^-1 ^-1 ^ lava run tp @s ^-1 ^ ^
execute at @s rotated ~ 0 if block ^-1 ^ ^ air if block ^-1 ^1 ^ air unless block ^-1 ^-1 ^ air unless block ^-1 ^-1 ^ lava run tp @s ^-1 ^ ^
execute at @s rotated ~ 0 if block ^-1 ^ ^ air if block ^-1 ^1 ^ air unless block ^-1 ^-1 ^ air unless block ^-1 ^-1 ^ lava run tp @s ^-1 ^ ^
execute at @s rotated ~ 0 if block ^-1 ^ ^ air if block ^-1 ^1 ^ air unless block ^-1 ^-1 ^ air unless block ^-1 ^-1 ^ lava run tp @s ^-1 ^ ^
execute at @s rotated ~ 0 if block ^-1 ^ ^ air if block ^-1 ^1 ^ air unless block ^-1 ^-1 ^ air unless block ^-1 ^-1 ^ lava run tp @s ^-1 ^ ^
particle minecraft:basic_smoke_particle ~ ~0.3 ~
