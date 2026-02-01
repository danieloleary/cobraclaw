#!/bin/bash
PASS=0
TESTS=0

count_test() {
    TESTS=$((TESTS+1))
    if eval "$1"; then
        PASS=$((PASS+1))
    fi
}

echo "🦀 Shell Claw Tests"
echo "=================================="

# emoji-lookup.sh (10 tests)
count_test "bash scripts/emoji-lookup.sh 'idea' | grep -q '💡'"
count_test "bash scripts/emoji-lookup.sh 'happy' | grep -q '😊'"
count_test "bash scripts/emoji-lookup.sh 'thinking' | grep -q '🤔'"
count_test "bash scripts/emoji-lookup.sh 'done' | grep -q '✅'"
count_test "bash scripts/emoji-lookup.sh 'thanks' | grep -q '🙏'"
count_test "bash scripts/emoji-lookup.sh 'work' | grep -q '💼'"
count_test "bash scripts/emoji-lookup.sh 'target' | grep -q '🎯'"
count_test "bash scripts/emoji-lookup.sh 'coding' | grep -q '💻'"
count_test "bash scripts/emoji-lookup.sh 'search' | grep -q '🔍'"
count_test "bash scripts/emoji-lookup.sh 'launch' | grep -q '🚀'"

# Core files exist
count_test "[ -f SKILL.md ]"
count_test "[ -f PATTERNS.md ]"
count_test "[ -f CATEGORIES.md ]"
count_test "[ -f TEMPLATE.md ]"

echo "=================================="
echo "🦀 $PASS / $TESTS passed"
echo ""

[ $PASS -eq $TESTS ] && echo "✅ All tests pass" && exit 0 || echo "❌ Some failed" && exit 1
