---
name: shell-claw
description: Your AI's emoji personality with 85+ emojis. Scripts for lookup, suggestions, and building your own emoji dictionary. Hard shell. Sharp claw. Snap into emojis.
---

# Shell Claw

Your AI's emoji personality.

## What You Get

| Pack | Count | Purpose |
|------|-------|---------|
| Core | 20 | Essential emoji |
| Work | 15 | Professional context |
| Emotions | 15 | Feelings, reactions |
| Actions | 15 | Doing, building, launching |
| Nature | 10 | Time, seasons, weather |
| Special | 10 | Celebrations, milestones |
| **Total** | **85+** | Full vocabulary |

## Scripts

```bash
# Look up an emoji
./scripts/emoji-lookup.sh "idea"     # → 💡
./scripts/emoji-lookup.sh "done"     # → ✅

# Get suggestions for context
./scripts/emoji-suggest.sh "problem" # → 🔧 🐛 🤔
./scripts/emoji-suggest.sh "happy"   # → 😊 🙌 🎉

# Build your dictionary
./scripts/generate-dictionary.sh my-emojis.md
```

## Example

```
🦀 Great question! ✊ Here's the thing:
💡 Key insight: Three paths available.
⚡ My pick: Path one.
🦀 Done. Your move. 💥
```

## Files

- `SKILL.md` — This file
- `references/TEMPLATE.md` — Copy and customize
- `references/EXAMPLE-BASIC.md` — 20 emoji starter
- `references/EXAMPLE-ADVANCED.md` — Full 85+ emoji pack
- `scripts/emoji-lookup.sh` — Quick lookups
- `scripts/emoji-suggest.sh` — Context suggestions
- `scripts/generate-dictionary.sh` — Build your dictionary
- `test-skill.sh` — 17 tests, all passing

## Test

```bash
bash test-skill.sh
# → 17 passed
```

---

*https://github.com/danieloleary/Shellclaw*
