#!/bin/bash
set +e
PASS=0; FAIL=0

echo "🦀 Shell Claw Skill - Test Suite"
echo "=================================="

# Test emoji-lookup.sh
echo "Testing: emoji-lookup.sh"
echo "----------------------------"
[ "$(bash scripts/emoji-lookup.sh idea)" == "💡" ] && echo "✅ PASS: idea -> 💡" && ((PASS++)) || echo "❌ FAIL: idea"
[ "$(bash scripts/emoji-lookup.sh happy)" == "😊" ] && echo "✅ PASS: happy -> 😊" && ((PASS++)) || echo "❌ FAIL: happy"
[ "$(bash scripts/emoji-lookup.sh thinking)" == "🤔" ] && echo "✅ PASS: thinking -> 🤔" && ((PASS++)) || echo "❌ FAIL: thinking"
[ "$(bash scripts/emoji-lookup.sh done)" == "✅" ] && echo "✅ PASS: done -> ✅" && ((PASS++)) || echo "❌ FAIL: done"
[ "$(bash scripts/emoji-lookup.sh thanks)" == "🙏" ] && echo "✅ PASS: thanks -> 🙏" && ((PASS++)) || echo "❌ FAIL: thanks"
[ "$(bash scripts/emoji-lookup.sh work)" == "💼" ] && echo "✅ PASS: work -> 💼" && ((PASS++)) || echo "❌ FAIL: work"
[ "$(bash scripts/emoji-lookup.sh target)" == "🎯" ] && echo "✅ PASS: target -> 🎯" && ((PASS++)) || echo "❌ FAIL: target"
[ "$(bash scripts/emoji-lookup.sh coding)" == "💻" ] && echo "✅ PASS: coding -> 💻" && ((PASS++)) || echo "❌ FAIL: coding"
[ "$(bash scripts/emoji-lookup.sh search)" == "🔍" ] && echo "✅ PASS: search -> 🔍" && ((PASS++)) || echo "❌ FAIL: search"
[ "$(bash scripts/emoji-lookup.sh launch)" == "🚀" ] && echo "✅ PASS: launch -> 🚀" && ((PASS++)) || echo "❌ FAIL: launch"

# Test emoji-suggest.sh
echo ""
echo "Testing: emoji-suggest.sh"
echo "----------------------------"
[ "$(bash scripts/emoji-suggest.sh happy excited)" == "😊 🙌 🎉" ] && echo "✅ PASS: happy excited" && ((PASS++)) || echo "❌ FAIL: happy excited"
[ "$(bash scripts/emoji-suggest.sh thinking problem)" == "🤔 💭 🧠" ] && echo "✅ PASS: thinking problem" && ((PASS++)) || echo "❌ FAIL: thinking problem"
[ "$(bash scripts/emoji-suggest.sh great idea)" == "💡 ✨ 🎯" ] && echo "✅ PASS: great idea" && ((PASS++)) || echo "❌ FAIL: great idea"
[ "$(bash scripts/emoji-suggest.sh bug code)" == "🔧 🐛 🤔" ] && echo "✅ PASS: bug code" && ((PASS++)) || echo "❌ FAIL: bug code"
[ "$(bash scripts/emoji-suggest.sh thank you)" == "🙏 ❤️ 💚" ] && echo "✅ PASS: thank you" && ((PASS++)) || echo "❌ FAIL: thank you"

# Test generate-dictionary.sh
echo ""
echo "Testing: generate-dictionary.sh"
echo "----------------------------"
bash scripts/generate-dictionary.sh /tmp/test-dict.md >/dev/null 2>&1
[ -f /tmp/test-dict.md ] && echo "✅ PASS: generate-dict" && ((PASS++)) || echo "❌ FAIL: generate-dict"
grep -q "My Personal Emoji Dictionary" /tmp/test-dict.md 2>/dev/null && echo "✅ PASS: correct header" && ((PASS++)) || echo "❌ FAIL: correct header"
rm -f /tmp/test-dict.md

echo ""
echo "=================================="
echo "🦀 Test Results: $PASS passed, $FAIL failed"
echo ""

if [ $FAIL -eq 0 ]; then
    echo "🎉 All tests passed! Snap into emojis."
    exit 0
else
    echo "💥 Some tests failed."
    exit 1
fi
