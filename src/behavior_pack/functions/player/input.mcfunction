# ONE-SHOT trigger: an ability fires only when the selected skill item CHANGES (re-select to fire again)
scoreboard players set @a bce_cur 0
execute as @a[hasitem={item=blaze_rod,location=slot.weapon.mainhand}] run scoreboard players set @s bce_cur 1
execute as @a[hasitem={item=feather,location=slot.weapon.mainhand}] run scoreboard players set @s bce_cur 2
execute as @a[hasitem={item=rabbit_foot,location=slot.weapon.mainhand}] run scoreboard players set @s bce_cur 3
execute as @a[hasitem={item=flint,location=slot.weapon.mainhand}] run scoreboard players set @s bce_cur 4
execute as @a[hasitem={item=brick,location=slot.weapon.mainhand}] run scoreboard players set @s bce_cur 5
execute as @a[hasitem={item=nether_star,location=slot.weapon.mainhand}] run scoreboard players set @s bce_cur 6
execute as @a[hasitem={item=apple,location=slot.weapon.mainhand}] run scoreboard players set @s bce_cur 7
execute as @a[hasitem={item=paper,location=slot.weapon.mainhand}] run scoreboard players set @s bce_cur 9
execute as @a[tag=bce_cs] unless score @s bce_cur = @s bce_prev if score @s bce_cur matches 9 at @s run function cutscenes/skip
execute as @a[tag=bce_ctl,tag=!bce_cs,scores={bce_ps=2..}] unless score @s bce_cur = @s bce_prev if score @s bce_cur matches 1..8 at @s run function abilities/dispatch
scoreboard players operation @a bce_prev = @a bce_cur
