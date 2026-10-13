# cutscene boss_intro: skip = replay critical commands then end
execute if score _bstate bce_sys matches 0 run function bosses/summon
function cutscenes/boss_intro/end
