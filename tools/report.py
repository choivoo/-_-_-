#!/usr/bin/env python3
"""Generates AUTOSTART_TEST_REPORT.md from reports/*.json so the document can never claim more than the machine results."""
import os, json
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
rj = lambda n, d=None: json.load(open(os.path.join(ROOT, "reports", n), encoding="utf-8")) if os.path.exists(os.path.join(ROOT, "reports", n)) else d
e2e = rj("e2e_results.json", {})
shipped = rj("e2e_shipped_world.json", {})
bds_check = rj("bds_load_check.json", {})
stat = rj("static_report.json", {"errors": [], "warnings": [], "info": {}})
lines = ["# BCE 1.0 One-Click — AutoStart Test Report", "",
         "> 생성: `tools/report.py` (reports/*.json 기준). **iPad 실기기 테스트(TEST 10)는 NOT_RUN** 입니다.",
         "> ‘실제 서버 E2E’ = 실제 Bedrock Dedicated Server 1.21.80.3 + 헤드리스 플레이어(명령 입력 없음, 콘솔은 관측/보행 대용 `/tp`에만 사용).", ""]
lines += ["## 엔진 측 검증", "| 항목 | 결과 |", "|---|---|",
          "| BDS 1.21.80.3가 행동 팩을 로드, 함수 파싱 오류 | %s (문제 %s건) |" % ("로드됨" if bds_check.get("behavior_pack_loaded") else "미확인", bds_check.get("problem_count", "n/a")),
          "| 정적 검사 | 오류 %d / 경고 %d |" % (len(stat["errors"]), len(stat["warnings"])),
          "| 리소스 팩 | BDS는 리소스 팩을 파싱하지 않음 → 서버 측 검증 불가 (클라이언트가 최초 로드 시 검증) |", ""]
lines += ["## 서버 E2E (애드온 → 새 월드 → 자동 시작)", "| 테스트 | 결과 | 비고 |", "|---|---|---|"]
names = {"T00": "TEST 00 새 월드에는 BCE 상태 없음", "T01": "TEST 01 최초 입장 → 자동 초기화(1회)", "T02": "TEST 02 명령어 없이 자동 건축", "T03": "TEST 03 건축 완료 검증 → 시작 위치",
         "T03b": "로딩 UI(타이틀/자막/액션바 %)", "T04": "TEST 04 오프닝 컷신 자동 실행", "T05": "TEST 05 튜토리얼/첫 퀘스트 자동 활성화", "T05b": "컷신 후 카메라·입력 복구",
         "T05c": "신전을 벗어나면 퀘스트 2(검) 활성화 (/tp로 보행 대체)", "T06": "TEST 06 재접속: 건축 중복 없음", "T07": "TEST 07 컷신 중 재접속", "T08": "TEST 08 건축 중 월드 종료 → 재개", "T09": "TEST 09 명령어 미사용"}
for k, v in sorted(e2e.items()):
    nm = names.get(k.split()[0], k)
    lines.append("| %s | %s | %s |" % (nm, "PASS" if v["pass"] else "**FAIL**", v["detail"][:110].replace("|", "/")))
if shipped:
    lines += ["", "## 서버 E2E (배포 .mcworld)", "| 테스트 | 결과 | 비고 |", "|---|---|---|"]
    for k, v in sorted(shipped.items()):
        lines.append("| %s | %s | %s |" % (k, "PASS" if v["pass"] else "**FAIL**", v["detail"][:110].replace("|", "/")))
lines += ["", "## TEST 10 — iPad 호환성", "**NOT_RUN** — 실제 iPad에서 .mcworld 가져오기/실행을 하지 못했습니다. 월드는 BDS 1.21.80.3(Linux)이 만든 정식 세이브입니다."]
open(os.path.join(ROOT, "AUTOSTART_TEST_REPORT.md"), "w", encoding="utf-8").write("\n".join(lines) + "\n")
print("report written")
