execute unless entity @a[r=26,tag=bce_ctl] run function enemies/to_return
execute if entity @s[tag=!bce_e3] if entity @a[r=2.8,tag=bce_ctl] run function enemies/to_prepare
execute if entity @s[tag=bce_e3] if entity @a[r=5,tag=bce_ctl] run function enemies/to_reposition
