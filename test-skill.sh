#!/bin/bash
PASS=0
TESTS=0

count_test() {
    TESTS=$((TESTS+1))
    if eval "$1"; then
        PASS=$((PASS+1))
    fi
}

echo "🦀 Shell Claw - 18 tests"
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

# generate-dictionary.sh (4 tests)
bash scripts/generate-dictionary.sh /tmp/test-dict.md >/dev/null 2>&1
count_test "[ -f /tmp/test-dict.md ]"
count_test "grep -q 'My Personal Emoji Dictionary' /tmp/test-dict.md"
count_test "grep -q 'Shell Claw Structure' /tmp/test-dict.md"
count_test "grep -q 'Your Personal Additions' /tmp/test-dict.md"
rm -f /tmp/test-dict.md

# PATTERNS.md exists
count_test "[ -f references/PATTERNS.md ]"

# CATEGORIES.md exists
count_test "[ -f references/CATEGORIES.md ]"

# TEMPLATE.md exists
count_test "[ -f references/TEMPLATE.md ]"

# EXAMPLE-ADVANCED.md exists
count_test "[ -f references/EXAMPLE-ADVANCED.md ]"

echo "=================================="
echo "🦀 $PASS / $TESTS passed"
echo ""

[ $PASS -eq $TESTS ] && echo "✅ All tests pass" && exit 0 || echo "❌ Some failed" && exit 1
