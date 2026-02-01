# 🦀 Shell Claw

**Your AI's emoji personality.**

*Hard shell. Sharp claw. Snap into emojis.*

---

## Quick Start

```bash
# Install
clawhub install shell-claw

# Test
bash test-skill.sh
# → 17 tests pass
```

---

## What You Get

| Pack | Emojis | Purpose |
|------|--------|---------|
| **Core** | 20 | Essential emoji for any conversation |
| **Work** | 15 | Professional, meetings, deadlines |
| **Emotions** | 15 | Happy, thinking, thanks, love |
| **Actions** | 15 | Idea, done, build, launch, search |
| **Nature** | 10 | Time, seasons, weather |
| **Special** | 10 | Celebrations, milestones |
| **Total** | **85+** | Full emoji vocabulary |

---

## Use the Scripts

```bash
# Find an emoji
./scripts/emoji-lookup.sh "idea"      # → 💡
./scripts/emoji-lookup.sh "happy"     # → 😊

# Get suggestions
./scripts/emoji-suggest.sh "problem"  # → 🔧 🐛 🤔
./scripts/emoji-suggest.sh "done"     # → ✅ 🎉 👍

# Build your dictionary
./scripts/generate-dictionary.sh my-emojis.md
```

---

## Example

```
Before: "Great question! I'd be happy to help."

After:  🦀 Great question! ✊ Here's the thing:
       💡 The data shows three paths.
       ⚡ My pick: Path one.
       🦀 Done. Your move.
```

---

## Files

```
shell-claw/
├── SKILL.md              # How it works
├── README.md             # You are here
├── references/
│   ├── TEMPLATE.md       # Copy and customize
│   ├── EXAMPLE-BASIC.md  # 20 emojis
│   └── EXAMPLE-ADVANCED.md # 85+ emojis
└── scripts/
    ├── emoji-lookup.sh
    ├── emoji-suggest.sh
    └── generate-dictionary.sh
```

---

## Privacy

Framework only. Your emoji dictionary stays in your workspace.

---

## License

MIT — use freely.

---

*🐙 github.com/danieloleary/Shellclaw*
