# shared credit policy: every online player with quest 7 advances
scoreboard players set _bstate bce_sys 4
scoreboard players set _bdead bce_sys 1
function bosses/cleanup
scoreboard players set @a[scores={bce_q=7}] bce_q 8
scoreboard players set _qflash bce_sys 60
