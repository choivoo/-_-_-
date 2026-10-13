# ULTIMATE step 1/4 (prepare): invulnerable while charging
scoreboard players operation @s bce_stam -= _cost_judge bce_sys
scoreboard players set @s bce_cdjudge 600
scoreboard players set @s bce_ultt 1
scoreboard players set @s bce_iframe 50
tag @s add bce_iframe
titleraw @s actionbar {"rawtext":[{"text":"§d별의 심판 — 별빛을 모은다…"}]}
playsound random.levelup @a ~ ~ ~ 1 0.5
