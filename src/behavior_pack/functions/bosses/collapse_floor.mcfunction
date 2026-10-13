# PHASE 3 arena change: outside the safe square the floor becomes magma (damage in boss/corrupt_tick)
fill 402 99 -17 436 99 17 magma
fill 410 99 -9 428 99 9 polished_blackstone
tellraw @a[x=402,y=100,z=-17,dx=34,dy=25,dz=34] {"rawtext":[{"text":"§c[경고] 바닥이 부식된다! 중앙의 검은 돌 위로 이동하세요."}]}
