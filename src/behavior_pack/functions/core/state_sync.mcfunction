# derives the global state (4..12) from player/boss state. 12 is sticky only via bosses/finish_game
scoreboard players set _state bce_sys 7
execute unless score _started bce_sys matches 1.. run scoreboard players set _state bce_sys 4
execute if entity @a[scores={bce_ps=2}] run scoreboard players set _state bce_sys 6
execute if entity @a[tag=bce_comb] run scoreboard players set _state bce_sys 8
execute if entity @a[tag=bce_cs] run scoreboard players set _state bce_sys 5
execute if score _bstate bce_sys matches 2 run scoreboard players set _state bce_sys 9
execute if score _qflash bce_sys matches 1.. run scoreboard players set _state bce_sys 10
execute if score _qflash bce_sys matches 1.. run scoreboard players remove _qflash bce_sys 1
execute if score _bdead bce_sys matches 1 if score _bstate bce_sys matches 4 run scoreboard players set _state bce_sys 12
