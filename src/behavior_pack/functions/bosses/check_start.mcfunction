# starts the intro for every player inside the arena (summon is guarded by _bstate)
execute if score _bstate bce_sys matches 0 if entity @a[scores={bce_q=7..},x=402,y=100,z=-17,dx=34,dy=25,dz=34] as @a[x=402,y=100,z=-17,dx=34,dy=25,dz=34,tag=!bce_cs] at @s run function cutscenes/boss_intro/start
