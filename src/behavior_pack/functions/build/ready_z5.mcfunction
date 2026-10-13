# chunk readiness of zone 5: one marker per chunk, all must exist
scoreboard players set _bcnt bce_sys 0
execute if block -232 160 -40 stone run scoreboard players add _bcnt bce_sys 1
execute if block -232 160 -24 stone run scoreboard players add _bcnt bce_sys 1
execute if block -232 160 -8 stone run scoreboard players add _bcnt bce_sys 1
execute if block -232 160 8 stone run scoreboard players add _bcnt bce_sys 1
execute if block -232 160 24 stone run scoreboard players add _bcnt bce_sys 1
execute if block -232 160 40 stone run scoreboard players add _bcnt bce_sys 1
execute if block -216 160 -40 stone run scoreboard players add _bcnt bce_sys 1
execute if block -216 160 -24 stone run scoreboard players add _bcnt bce_sys 1
execute if block -216 160 -8 stone run scoreboard players add _bcnt bce_sys 1
execute if block -216 160 8 stone run scoreboard players add _bcnt bce_sys 1
execute if block -216 160 24 stone run scoreboard players add _bcnt bce_sys 1
execute if block -216 160 40 stone run scoreboard players add _bcnt bce_sys 1
execute if block -200 160 -40 stone run scoreboard players add _bcnt bce_sys 1
execute if block -200 160 -24 stone run scoreboard players add _bcnt bce_sys 1
execute if block -200 160 -8 stone run scoreboard players add _bcnt bce_sys 1
execute if block -200 160 8 stone run scoreboard players add _bcnt bce_sys 1
execute if block -200 160 24 stone run scoreboard players add _bcnt bce_sys 1
execute if block -200 160 40 stone run scoreboard players add _bcnt bce_sys 1
execute if block -184 160 -40 stone run scoreboard players add _bcnt bce_sys 1
execute if block -184 160 -24 stone run scoreboard players add _bcnt bce_sys 1
execute if block -184 160 -8 stone run scoreboard players add _bcnt bce_sys 1
execute if block -184 160 8 stone run scoreboard players add _bcnt bce_sys 1
execute if block -184 160 24 stone run scoreboard players add _bcnt bce_sys 1
execute if block -184 160 40 stone run scoreboard players add _bcnt bce_sys 1
execute if block -168 160 -40 stone run scoreboard players add _bcnt bce_sys 1
execute if block -168 160 -24 stone run scoreboard players add _bcnt bce_sys 1
execute if block -168 160 -8 stone run scoreboard players add _bcnt bce_sys 1
execute if block -168 160 8 stone run scoreboard players add _bcnt bce_sys 1
execute if block -168 160 24 stone run scoreboard players add _bcnt bce_sys 1
execute if block -168 160 40 stone run scoreboard players add _bcnt bce_sys 1
scoreboard players set _bready bce_sys 0
execute if score _bcnt bce_sys matches 30 run scoreboard players set _bready bce_sys 1
