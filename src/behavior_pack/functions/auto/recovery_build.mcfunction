# auto-retry a FAILED build step up to 3 times (zone restart); then ERROR. Never waits forever silently
scoreboard players add _await bce_sys 1
execute if score _await bce_sys matches 100.. run scoreboard players add _aretry bce_sys 1
execute if score _await bce_sys matches 100.. if score _aretry bce_sys matches ..3 run function build/recover
execute if score _await bce_sys matches 100.. if score _aretry bce_sys matches 4.. run function auto/to_error
execute if score _await bce_sys matches 100.. run scoreboard players set _await bce_sys 0
