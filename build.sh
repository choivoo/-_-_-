#!/bin/sh
# BCE full pipeline. Any failing stage aborts the build (set -e); nothing is ignored.
set -e
cd "$(dirname "$0")"
echo "== 1 source check";            python3 -m py_compile generators/*.py generators/*/*.py src/tests/*/*.py
echo "== 2 model/animation data";    python3 generators/animation_generator/gen.py
echo "== 3-6 world, structures, commands, cutscenes (QA gate inside)"; python3 generators/build_all.py
echo "== 7 manifests/lang/particle, pure commands"; python3 - <<'PY'
import sys; sys.path.insert(0, "generators")
import packs; packs.manifests(); packs.lang(); packs.particle(); print(packs.pure_commands())
PY
echo "== 8 docs for guide";          test -f INSTALL_GUIDE_1.0.md
echo "== 9 package";                 python3 generators/packs.py
echo "== 10 static validation";      python3 src/tests/static/validate.py
echo "== 11 simulator";              python3 src/tests/integration/sim_test.py
echo "== 12 world QA + structure round-trip"; python3 src/tests/integration/world_qa_test.py
echo "== 13 performance budget";     python3 src/tests/performance/budget.py
echo "== 14 REAL Bedrock server load check (BDS 1.21.80.3)"
if [ -x "${BDS_DIR:-/tmp/bds}/bedrock_server" ] || [ "${BCE_FETCH_BDS:-0}" = "1" ]; then
  python3 tools/bds_check.py
else
  echo "WARNING: BDS not found - engine-side function parse check SKIPPED (set BCE_FETCH_BDS=1 to download, see tools/README.md)"
fi
echo "BUILD OK (static + simulator only; NOT a real-device test)"
