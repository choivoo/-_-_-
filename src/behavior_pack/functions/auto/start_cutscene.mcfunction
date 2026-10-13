# as player: ps=1 + opening cutscene (locks movement+camera; restored by cutscenes/opening/end or skip)
scoreboard players set _started bce_sys 1
scoreboard players set _astate bce_sys 5
function game/begin
