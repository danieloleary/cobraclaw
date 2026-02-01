#!/bin/bash
# Suggest emojis based on conversation context

CONTEXT="$1"

if [ -z "$CONTEXT" ]; then
    echo "💡 🤔 ✅"
    exit 0
fi

TYPE=$(bash scripts/analyze-context.sh "$CONTEXT")

case "$TYPE" in
    celebration)
        echo "🎉 🏆 🙌 ✨ 🎊"
        ;;
    professional)
        echo "💼 🎯 📊 📋 🤝 💡"
        ;;
    thinking)
        echo "🤔 🧠 💭 📝 💡 🔍"
        ;;
    learning)
        echo "📚 💡 🌟 🔍 🧠 ✨"
        ;;
    problem)
        echo "🔧 🐛 💥 🤔 🛠️ 💡"
        ;;
    personal)
        echo "💚 ❤️ 🙏 🏠 😊 👨‍👩‍👧‍👦"
        ;;
    action)
        echo "🚀 ✊ 💥 ▶️ 🏃 💪"
        ;;
    casual)
        echo "😊 👋 💚 🙌 👍"
        ;;
    *)
        echo "💡 🤔 ✅ ✊ 🦀"
        ;;
esac
