# 순수 커맨드 모드 (팩 없이 커맨드 블록만)
**제한**: 베드락은 커맨드 블록 명령을 자동으로 넣는 방법이 없습니다(자바 NBT 불가). 따라서 모든 명령을 **직접 입력**해야 합니다.
또한 **자동 건축(수만 블록)은 순수 모드로 제공하지 않습니다.** 권장 절차: ① 행동 팩을 적용해 `bootstrap/install`로 맵을 한 번 건축 → ② 건축 완료 후 월드에서 행동 팩을 제거하고 아래 커맨드 블록으로 플레이 (블록은 월드에 남아 있음).
커스텀 모델/텍스처가 필요한 MODE B 요소(커스텀 보스)는 순수 모드에서 사용할 수 없고, 보스는 바닐라 위더 스켈레톤입니다.

## 순서
1. `src/pure_commands/bootstrap/01_install.txt` 의 명령을 **채팅에서 순서대로 실행** (스코어보드, 게임룰, 상수). 이후 `/scoreboard players set #state bce_sys 7`, `#built 1`, `#started 0`, `#yard 0`, `#wall 0`, `#puzzle 0`, `#door 0`, `#bdead 0`, `#bridge 99`.
2. 위치 하나에 **반복(Repeating) 커맨드 블록**(항상 활성, 레드스톤 불필요)을 놓고 `command_blocks/A_essential_loop.txt` 의 1번 명령 입력. 이어서 **체인(Chain) 커맨드 블록**(항상 활성)을 뒤쪽 방향으로 이어 붙이며 2번부터 순서대로 입력. 파일마다 같은 방법으로 별도 반복 블록 하나씩:
   `combat/B_enemy_ai.txt`, `gameplay/C_quests_checkpoints_world.txt`, `combat/D_boss.txt`, `cutscenes/E_cutscene_dispatch.txt`.
3. 규모: A=256, B=98, C=237, D=600, E=162 명령 (`reports/pure_command_counts.json`). 최소 구성은 **A만** (전투/HUD).
4. 컷신/보스/퀘스트 시작 함수는 트리거되는 위치에 **인라인 전개**되어 목록에 들어 있습니다. 관리자용 테스트 함수(`admin/*`)와 건축 단계는 포함되지 않습니다.
5. 한 틱에 수백 개 평가는 모바일에 무겁습니다. 파일 A만 쓰고 나머지는 필요한 때만 켜세요.
