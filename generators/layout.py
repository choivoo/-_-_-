"""Single source of truth for world coordinates (absolute). Floor surface block y=99, walk y=100."""
Y0 = 100
CX = [0, 100, 200, 300, 400]          # zone centres (z centre = 0), platform 80x80
ZNAME = ["깨어남의 신전", "잿빛 마을", "가라앉은 유적", "붕괴된 성벽", "검은별의 성채"]


def R(x1, y1, z1, x2, y2, z2):
    return (min(x1, x2), min(y1, y2), min(z1, z2), max(x1, x2), max(y1, y2), max(z1, z2))


# ---- zone 0: temple -------------------------------------------------------
START = (-7.5, 100, 0.5)
START_FACE = (14, 102, 0)
REG = {
    "start_pad": R(-10, 100, -2, -6, 103, 2),
    "q1_center": R(-1, 100, -18, 3, 108, 18),
    "weapon":    R(6, 100, -17, 10, 103, -13),
    "door":      R(12, 100, -3, 16, 106, 3),
    "yard":      R(19, 100, -13, 37, 112, 13),
    # zone 1: village
    "village":   R(CX[1] - 40, 100, -6, CX[1] - 30, 112, 6),
    # zone 2: ruins
    "ruins_in":  R(CX[2] - 40, 100, -6, CX[2] - 32, 112, 6),
    "ruins_all": R(CX[2] - 30, 84, -30, CX[2] + 30, 100, 30),
    "ruins_exit": R(CX[2] + 33, 100, -6, CX[2] + 40, 112, 6),
    "trap":      R(CX[2] - 8, 87, -2, CX[2] + 3, 91, 2),
    # zone 3: wall
    "wall_in":   R(CX[3] - 40, 100, -6, CX[3] - 34, 112, 6),
    "wall_yard": R(CX[3] - 33, 100, -38, CX[3] - 2, 130, 38),
    "wall_zone": R(CX[3] - 33, 100, -38, CX[3] + 37, 130, 38),
    "wall_court": R(CX[3] + 21, 100, -20, CX[3] + 37, 112, 20),
    "wall_gate": R(CX[3] + 37, 100, -5, CX[3] + 40, 112, 5),
    # zone 4: citadel
    "cit_in":    R(CX[4] - 40, 100, -6, CX[4] - 32, 112, 6),
    "cit_hall":  R(CX[4] - 24, 100, -10, CX[4] - 8, 112, 10),
    "arena":     R(CX[4] + 2, 100, -17, CX[4] + 36, 125, 17),
}
ARENA_C = (CX[4] + 19, 100, 0)
CHECKPOINTS = {   # id -> (region, spawn (x,y,z), label)
    1: (REG["door"], (16.5, 100, 0.5), "신전 출구"),
    2: (REG["village"], (CX[1] - 34 + .5, 100, .5), "잿빛 마을 입구"),
    3: (REG["ruins_in"], (CX[2] - 36 + .5, 100, .5), "유적 입구"),
    4: (REG["wall_in"], (CX[3] - 37 + .5, 100, .5), "성벽 입구"),
    5: (REG["cit_hall"], (CX[4] - 12 + .5, 100, .5), "성채 중앙 홀"),
}
QUESTS = {  # id -> (name, short HUD text)
    1: ("신전에서 깨어나다", "신전 중앙으로"),
    2: ("검을 획득하다", "제단 검을 찾아라"),
    3: ("첫 적을 처치하다", "훈련장의 적 처치"),
    4: ("잿빛 마을에 도착하다", "잿빛 마을로"),
    5: ("유적의 장치를 작동하다", "레버 퍼즐 해결"),
    6: ("성벽을 돌파하다", "성벽 적 소탕"),
    7: ("검은별의 수호자를 쓰러뜨리다", "수호자를 쓰러뜨려라"),
    8: ("봉인 복원 완료", "임무 완료"),
}
# ruins puzzle
LEVERS = [(CX[2] - 12, 87, -5), (CX[2] - 12, 87, 0), (CX[2] - 12, 87, 5)]
LEVER_SOLUTION = [True, False, True]
GATE_RUINS = R(CX[2] + 4, 87, -2, CX[2] + 5, 93, 2)
BRIDGE_Z = (-1, 1)
BRIDGE_X0 = CX[2] + 8
BRIDGE_LEN = 8
HIDDEN_DOOR = R(CX[2] + 20, 87, 12, CX[2] + 20, 89, 12)
# wall waves
WALL_WAVES = {
    1: [("e1", CX[3] - 22, -8), ("e1", CX[3] - 22, 8), ("e1", CX[3] - 14, 0), ("e3", CX[3] - 6, 14)],
    2: [("e2", CX[3] - 20, -10), ("e2", CX[3] - 20, 10), ("e4", CX[3] - 10, -6), ("e4", CX[3] - 10, 6)],
}
MIDBOSS_POS = (CX[3] + 30, 100, 0)
WALL_GATE_FILL = R(CX[3] + 37, 100, -3, CX[3] + 38, 106, 3)
CIT_DOOR = R(CX[4] - 4, 100, -3, CX[4] - 3, 108, 3)
YARD_SPAWN = (28, 100, 0)
