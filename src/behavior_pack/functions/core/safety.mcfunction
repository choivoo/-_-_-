# recovery nets: stuck cutscenes, orphan input locks, stale combat tags
execute as @a[tag=bce_cs,scores={bce_cst=1500..}] run function cutscenes/force_end
execute as @a[tag=bce_cs,scores={bce_cs=0}] run function cutscenes/force_end
tag @a remove bce_comb
execute as @a[tag=!bce_cs] run inputpermission set @s movement enabled
execute as @a[tag=!bce_cs] run inputpermission set @s camera enabled
