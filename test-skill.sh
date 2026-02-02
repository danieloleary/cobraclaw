#!/bin/bash
# 🥋 COBRACLAW TEST SUITE
# Verify the dojo is ready for training

WAX_ON=false
VERBOSE=false

# Parse --wax-on for verbose output
for arg in "$@"; do
  case $arg in
    --wax-on)
      WAX_ON=true
      VERBOSE=true
      ;;
    --verbose)
      VERBOSE=true
      ;;
  esac
done

log() {
  if [ "$VERBOSE" = true ]; then
    echo "🥋 $1"
  fi
}

PASS=0
TESTS=0

count_test() {
    TESTS=$((TESTS+1))
    if eval "$1"; then
        PASS=$((PASS+1))
        log "  ✅ $2"
    else
        log "  ❌ $2"
    fi
}

echo "🥋 Cobra Claw Tests"
echo "=================================="

# Core skill files
count_test "[ -f SKILL.md ]" "SKILL.md exists"
count_test "[ -f PATTERNS.md ]" "PATTERNS.md exists"
count_test "[ -f CATEGORIES.md ]" "CATEGORIES.md exists"
count_test "[ -f TEMPLATE.md ]" "TEMPLATE.md exists"

# Enhancement files
count_test "[ -f COBRA-KAI.md ]" "COBRA-KAI.md exists"
count_test "[ -f FLAVORS.md ]" "FLAVORS.md exists"
count_test "[ -f PROMPTS.md ]" "PROMPTS.md exists"
count_test "[ -f QUICK-REF.md ]" "QUICK-REF.md exists"

# Self-improvement
count_test "[ -f shell-claw-qmd.md ]" "shell-claw-qmd.md exists"

# Dojo files (new)
count_test "[ -f ARCHITECTURE.md ]" "ARCHITECTURE.md exists"
count_test "[ -f creed.yaml ]" "creed.yaml exists"
count_test "[ -f prd.json ]" "prd.json exists"

echo "=================================="
echo "🥋 $PASS / $TESTS passed"
echo ""

if [ $PASS -eq $TESTS ]; then
    echo "✅ All tests pass — Strike first."
    exit 0
else
    echo "❌ Some failed — Strike harder."
    exit 1
fi
