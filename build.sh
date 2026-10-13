#!/bin/sh
# Rebuild everything from sources and run all checks.  Usage: ./build.sh
set -e
cd "$(dirname "$0")"
python3 generators/animation_generator/gen.py
python3 generators/build_all.py
python3 generators/packs.py
python3 src/tests/static/validate.py
python3 src/tests/integration/sim_test.py
python3 src/tests/performance/budget.py
