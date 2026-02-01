#!/bin/bash
# Analyze conversation context and return the type

CONTEXT="$1"

if [ -z "$CONTEXT" ]; then
    echo "casual"
    exit 0
fi

# Check in order of specificity (most specific first)

# Check for celebration
if echo "$CONTEXT" | grep -qiE "celebrat|congrat|amazing|awesome|win|success|happy birthday|anniversary"; then
    echo "celebration"
    exit 0
fi

# Check for problem
if echo "$CONTEXT" | grep -qiE "problem|bug|issue|error|fix|broken|wrong"; then
    echo "problem"
    exit 0
fi

# Check for learning (before professional)
if echo "$CONTEXT" | grep -qiE "how does|how do|learn|discover|explore|new|study|research|explain|understand|what is"; then
    echo "learning"
    exit 0
fi

# Check for thinking
if echo "$CONTEXT" | grep -qiE "think|consider|wonder|analyze|question"; then
    echo "thinking"
    exit 0
fi

# Check for personal
if echo "$CONTEXT" | grep -qiE "thanks|appreciate|love|family|home|friend"; then
    echo "personal"
    exit 0
fi

# Check for action
if echo "$CONTEXT" | grep -qiE "launch|start|go|do|action|execute|build|create"; then
    echo "action"
    exit 0
fi

# Check for professional
if echo "$CONTEXT" | grep -qiE "work|project|deadline|meeting|client|business|professional|strategy"; then
    echo "professional"
    exit 0
fi

echo "casual"
