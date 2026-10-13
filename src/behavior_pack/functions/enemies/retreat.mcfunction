# back off up to 4 blocks, never into walls or over edges
execute at @s facing entity @p[r=10,tag=bce_ctl] feet if block ^ ^ ^-1 air if block ^ ^1 ^-1 air unless block ^ ^-1 ^-1 air run tp @s ^ ^ ^-1
execute at @s facing entity @p[r=10,tag=bce_ctl] feet if block ^ ^ ^-1 air if block ^ ^1 ^-1 air unless block ^ ^-1 ^-1 air run tp @s ^ ^ ^-1
execute at @s facing entity @p[r=10,tag=bce_ctl] feet if block ^ ^ ^-1 air if block ^ ^1 ^-1 air unless block ^ ^-1 ^-1 air run tp @s ^ ^ ^-1
execute at @s facing entity @p[r=10,tag=bce_ctl] feet if block ^ ^ ^-1 air if block ^ ^1 ^-1 air unless block ^ ^-1 ^-1 air run tp @s ^ ^ ^-1
