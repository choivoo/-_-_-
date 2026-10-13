# runs once per world: adopts the state of a manually-installed or pre-built world, otherwise NOT_INITIALIZED
scoreboard objectives add bce_sys dummy
scoreboard players set _astate bce_sys 0
execute if score _state bce_sys matches 3 run scoreboard players set _astate bce_sys 2
execute if score _state bce_sys matches 4..12 run scoreboard players set _astate bce_sys 5
execute if score _state bce_sys matches 13..14 run scoreboard players set _astate bce_sys 6
