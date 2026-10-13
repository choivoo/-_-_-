# RETURN: lost target. temporary enemies despawn; scripted wave enemies go back to IDLE
execute if entity @a[r=14,tag=bce_ctl] run function enemies/to_detect
execute if score @s bce_aitm matches 100.. unless entity @s[tag=bce_wave] run kill @s
execute if score @s bce_aitm matches 100.. if entity @s[tag=bce_wave] run function enemies/to_idle
