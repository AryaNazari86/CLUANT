# CLUANT — Claude Instructions

## After editing any skill

After editing any `SKILL.md` file, always run:

```bash
./scripts/sync.sh
```

This pushes the change to both:
- **Claude Code** (terminal / desktop) — updates the plugin cache
- **Cowork** (chat interface) — updates the Cowork plugin directory

Then commit the change to git.

## Skill locations

| Skill | File |
|---|---|
| analyze (stock report) | `skills/stock-analysis/SKILL.md` |
| macro | `skills/macro/SKILL.md` |
| watchlist | `skills/watchlist/SKILL.md` |
| portfolio | `skills/portfolio/SKILL.md` |
| congress | `skills/congress/SKILL.md` |
| position-sizer | `skills/position-sizer/SKILL.md` |

## Adding a new skill

1. Create `skills/<name>/SKILL.md` with frontmatter trigger description
2. Run `./scripts/sync.sh`
3. Commit to git

## Version bumps

When making significant changes, bump the version in both:
- `.claude-plugin/plugin.json`
- `plugin.json` (root)
