# arena empty / admin: full, safe reset of the fight
kill @e[tag=bce_boss]
scoreboard players set _bstate bce_sys 0
scoreboard players set _bhp bce_sys 1000
scoreboard players set _bphase bce_sys 1
scoreboard players set _bempty bce_sys 0
scoreboard players set _bfin bce_sys 0
scoreboard players set _binv bce_sys 0
function bosses/cleanup
stopsound @a
scoreboard players set @a[scores={bce_ps=5}] bce_ps 3
tellraw @a {"rawtext":[{"text":"§7[보스전] 전투가 초기화되었습니다. 다시 도전하세요."}]}
