# first player in a world that was never initialised (only runs when _astate==0)
scoreboard players set _astate bce_sys 1
titleraw @a times 10 80 20
titleraw @a subtitle {"rawtext":[{"text":"§f세계를 복원하고 있습니다…"}]}
titleraw @a title {"rawtext":[{"text":"§e검은별의 성채"}]}
function auto/initialize
