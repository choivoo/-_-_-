# decoration only; skipped entirely on LOW
execute if score #quality bce_sys matches 2 as @a at @s run particle minecraft:basic_smoke_particle ~ ~3 ~
execute if score #quality bce_sys matches 1.. as @a[scores={bce_cp=5..}] at @s run particle minecraft:soul_particle ~ ~1 ~
