# COMPATIBILITY
## 이번 RC에서 출처로 대조한 항목
| 항목 | 출처 | 결과 |
|---|---|---|
| `/camera <players> set <preset> [ease t type] [pos x y z] [rot x y \| facing …]`, `clear`, `fade [time in hold out] [color r g b]` | Microsoft Learn “Camera System Introduction” | 생성 구문과 일치(색은 0–255 정수, 페이드 각 ≤10초, 총 ≥0.5초, 동시 페이드는 합성). 자유 카메라 중에도 플레이어 입력이 살아 있으므로 문서 권장대로 `inputpermission camera/movement` 모두 잠금 |
| 카메라가 플레이어에서 너무 멀면 렌더링 불안정 | 같은 문서 | 오프닝 장면 1은 플레이어에서 약 95칸 — **위험으로 기록**, 이상 시 `cutscenes/opening` JSON의 좌표를 가깝게 조정 |
| `.mcstructure` 루트 `format_version(int=1)`, `size`, `structure.{block_indices[2 layers], entities, palette.default.{block_palette, block_position_data}}`, `structure_world_origin`, 인덱스 순서(z 가장 빠름), 팔레트 `{name, states, version}`, 블록 버전 18168865 | wiki.bedrock.dev/nbt/mcstructure | 작성기와 일치 |
| 엔티티 이벤트 `queue_command` (`"command"` 필드) | bedrock.dev Entity Events | 형식 일치(베타 문서 기준; 안정판 표기는 확인 못 함) |
| `inputpermission` 도입 1.19.80 | 커뮤니티 위키(비공식) | 참고 |
**확인하지 못한 것**: `tickingarea add circle`, `structure load` 실제 수용, `replaceitem` 존속 여부(공식 폐기 근거를 찾지 못함), 블록 상태 이름, 파티클/사운드 ID.
`min_engine_version [1,20,80]` 유지: 사용 기능 중 가장 새로운 것은 이 문서에서 확인된 `camera facing`/`inputpermission`(≥1.19.80) 계열이며 구조물 폴더 자동 등록은 미검증이므로, 문제가 있으면 상향하세요.

버전은 **추정**입니다 (작업 환경에서 게임 버전을 확인할 수 없었음). 아래 “위험” 항목에서 실패하면 해당 함수만 수정하면 됩니다.

| 기능 | 사용처 | 도입(추정) | 위험/대응 |
|---|---|---|---|
| `execute` 신문법 (`if score`, `positioned ^ ^ ^`, `rotated`) | 전체 | 1.19.50 | 낮음 |
| `damage` | 전투 | 1.19.50 | 낮음 |
| `hasitem={item=,location=slot.weapon.mainhand}` | 입력 | 1.16 | 낮음. 실패 시 모든 스킬 불능 |
| `camera` (free preset, ease, fade, facing/rot) | 컷신 | 1.20.x 안정화 | 중. 구버전은 실험적 카메라 필요 → 컷신 첫 틱에서 실패하면 카메라 없이 입력 잠금/복구만 동작 |
| `camerashake` | 흔들림 | 1.19.50 | 낮음 (끄기: `ui/shake_off`) |
| `inputpermission` | 컷신 | 1.20.50 | 중. 없으면 컷신 중 이동 가능(치명적이지 않음) |
| `titleraw`/`tellraw` rawtext+score | UI | 1.x | 낮음 |
| `tickingarea add circle` | 건축 | 1.19 | 낮음. 건축 프로브가 청크 미로드 시 대기 |
| `replaceitem block` | 상자 내용 | 구문 **deprecated 가능** | 중. 실패하면 비밀 상자가 비어 있음(진행 영향 없음). `item replace`로 교체 |
| `playanimation` | MODE B | 1.19.x | 중 |
| 엔티티 이벤트 `queue_command` | MODE B 보스 피격 장부 | 1.18+ | 중. 실패 시 MODE B 보스가 맞아도 체력 감소 안 됨 → MODE A 사용 |
| 블록 상태 `lever_direction`, `open_bit`, `pillar_axis`, `weirdo_direction` | 건축/퍼즐 | 1.x | 중. 버전에 따라 이름이 다르면 해당 setblock이 실패하거나 퍼즐 판정 불가 |
| 파티클/사운드 ID | 연출 | — | 일부는 버전마다 다름; 검증기가 목록 밖 ID를 경고 |
- 사용하지 않음: Java 전용(bossbar, data, item_display, 매크로 등), Script API, 상위 Experimental 토글.
- 월드 설정: 치트 켜기 필수. 실험 기능은 기본적으로 불필요(하지만 구버전에서 카메라/커스텀 엔티티에 필요할 수 있음).
- 플랫폼: Android 우선 설계. iOS는 파일 가져오기 방식만 다름(INSTALL_IOS). Windows도 동일 팩.
