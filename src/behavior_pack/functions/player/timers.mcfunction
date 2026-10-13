# per-player cooldown / combo window / i-frame timers
scoreboard players remove @a[scores={bce_cdslash=1..}] bce_cdslash 1
scoreboard players remove @a[scores={bce_cddodge=1..}] bce_cddodge 1
scoreboard players remove @a[scores={bce_cdult=1..}] bce_cdult 1
scoreboard players remove @a[scores={bce_cdheal=1..}] bce_cdheal 1
scoreboard players remove @a[scores={bce_cwin=1..}] bce_cwin 1
scoreboard players set @a[scores={bce_cwin=0,bce_combo=1..}] bce_combo 0
scoreboard players remove @a[scores={bce_iframe=1..}] bce_iframe 1
tag @a[scores={bce_iframe=0},tag=bce_iframe] remove bce_iframe
