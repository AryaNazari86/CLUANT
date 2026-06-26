#!/bin/bash
# sync.sh — push skill changes from this repo to Claude Code and Cowork
# Run this after editing any SKILL.md file.

set -e

REPO="$(cd "$(dirname "$0")/.." && pwd)"
COWORK_SESSION="9926679b-15b6-4e34-8b7e-ace8f1f5b3c4"
COWORK_ACCOUNT="a02defdd-9dd5-487c-a258-a471b0374cc2"
COWORK_PLUGIN="$HOME/Library/Application Support/Claude/local-agent-mode-sessions/$COWORK_SESSION/$COWORK_ACCOUNT/rpm/plugin_CLUANT"
CLAUDE_CODE_CACHE="$HOME/.claude/plugins/cache/CLUANT/CLUANT"

echo "🔄 Syncing CLUANT skills..."

# ── 1. Claude Code (terminal / desktop) ──────────────────────────────────────
# Find the installed version dir (handles version bumps automatically)
CC_VERSION_DIR=$(find "$CLAUDE_CODE_CACHE" -maxdepth 1 -mindepth 1 -type d 2>/dev/null | sort -V | tail -1)

if [ -n "$CC_VERSION_DIR" ]; then
  cp "$REPO/skills/stock-analysis/SKILL.md"  "$CC_VERSION_DIR/skills/stock-analysis/SKILL.md"
  cp "$REPO/skills/macro/SKILL.md"           "$CC_VERSION_DIR/skills/macro/SKILL.md"
  cp "$REPO/skills/watchlist/SKILL.md"       "$CC_VERSION_DIR/skills/watchlist/SKILL.md"
  cp "$REPO/skills/portfolio/SKILL.md"       "$CC_VERSION_DIR/skills/portfolio/SKILL.md"
  cp "$REPO/skills/congress/SKILL.md"        "$CC_VERSION_DIR/skills/congress/SKILL.md"
  cp "$REPO/skills/position-sizer/SKILL.md"  "$CC_VERSION_DIR/skills/position-sizer/SKILL.md"
  echo "  ✅ Claude Code cache updated ($CC_VERSION_DIR)"
else
  echo "  ⚠️  Claude Code plugin cache not found — run: claude plugin install CLUANT"
fi

# ── 2. Cowork (desktop chat) ──────────────────────────────────────────────────
if [ -d "$COWORK_PLUGIN" ]; then
  mkdir -p "$COWORK_PLUGIN/skills/analyze"
  mkdir -p "$COWORK_PLUGIN/skills/macro"
  mkdir -p "$COWORK_PLUGIN/skills/watchlist"
  mkdir -p "$COWORK_PLUGIN/skills/portfolio"
  mkdir -p "$COWORK_PLUGIN/skills/congress"
  mkdir -p "$COWORK_PLUGIN/skills/position-sizer"

  # analyze skill lives as stock-analysis in the repo but analyze in Cowork
  cp "$REPO/skills/stock-analysis/SKILL.md"  "$COWORK_PLUGIN/skills/analyze/SKILL.md"
  cp "$REPO/skills/macro/SKILL.md"           "$COWORK_PLUGIN/skills/macro/SKILL.md"
  cp "$REPO/skills/watchlist/SKILL.md"       "$COWORK_PLUGIN/skills/watchlist/SKILL.md"
  cp "$REPO/skills/portfolio/SKILL.md"       "$COWORK_PLUGIN/skills/portfolio/SKILL.md"
  cp "$REPO/skills/congress/SKILL.md"        "$COWORK_PLUGIN/skills/congress/SKILL.md"
  cp "$REPO/skills/position-sizer/SKILL.md"  "$COWORK_PLUGIN/skills/position-sizer/SKILL.md"
  cp "$REPO/README.md"                       "$COWORK_PLUGIN/README.md"
  echo "  ✅ Cowork plugin updated"
else
  echo "  ⚠️  Cowork plugin dir not found at: $COWORK_PLUGIN"
fi

echo ""
echo "✅ Sync complete. Restart Claude Code / Cowork to pick up changes."
