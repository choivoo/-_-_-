# every 5 ticks; half regen in combat
scoreboard players operation @a[scores={bce_stam=..99},tag=!bce_comb] bce_stam += #regen bce_sys
scoreboard players operation @a[scores={bce_stam=..99},tag=bce_comb] bce_stam += #regen_c bce_sys
scoreboard players set @a[scores={bce_stam=101..}] bce_stam 100
