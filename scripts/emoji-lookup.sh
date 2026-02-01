#!/bin/bash
QUERY="$1"
if [ -z "$QUERY" ]; then echo "Usage: $0 <keyword>"; exit 1; fi
case "$QUERY" in idea|insight|innovation) echo "💡" ;; happy|joy|positive) echo "😊" ;; thinking|consider) echo "🤔" ;; done|complete|confirmed) echo "✅" ;; thanks|gratitude) echo "🙏" ;; love|care|heart) echo "❤️" ;; work|professional) echo "💼" ;; target|goal) echo "🎯" ;; data|metrics) echo "📊" ;; coding|tech) echo "💻" ;; search|find) echo "🔍" ;; write|create) echo "📝" ;; partner|collab) echo "🤝" ;; launch|ship) echo "🚀" ;; build|fix) echo "🔧" ;; home|family) echo "🏠" ;; celebrate|win) echo "🎉" ;; privacy|security) echo "🔒" ;; web|internet) echo "🌐" ;; time|clock) echo "⏰" ;; nature|forest) echo "🌲" ;; *) echo "❓ ($QUERY)" ;; esac
