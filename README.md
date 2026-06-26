# CLUANT 📊

A personal quant analyst plugin for Claude Code. Built for swing traders who do their own narrative research and want a fast, structured data layer to make better decisions.

## Philosophy

> "You bring the story. The quant brings the numbers."

This plugin doesn't tell you what to buy. It surfaces every relevant data point — fundamentals, technicals, congressional trades, options flow, macro context — and gives you a suggested verdict you can override with your own judgment.

---

## Skills

| Skill | Command | What it does |
|---|---|---|
| **Stock Analysis** | `/analyze TICKER` | Full quant report — 8 sections, suggested verdict |
| **Watchlist** | `/watchlist add/show/scan` | Track stocks you're watching with thesis notes |
| **Portfolio** | `/portfolio add/show/check` | Track real positions with P&L and thesis health |
| **Congress** | `/congress TICKER` | Congressional trading signals with committee context |
| **Macro** | `/macro` | VIX, sector rotation, upcoming events, portfolio impact |

---

## Installation

```bash
# Install from GitHub
claude plugin marketplace add AryaNazari86/CLUANT
claude plugin install CLUANT

# Or clone and install locally
git clone https://github.com/AryaNazari86/CLUANT
claude plugin marketplace add ./CLUANT
claude plugin install CLUANT
```

---

## Usage Examples

```bash
# Full analysis on a single stock
/analyze SHOP

# Analyze multiple stocks at once
/analyze SHOP, HOOD, EQT

# Check congressional trades
/congress VSEC
/congress RTX

# Manage your watchlist
/watchlist add XPEV Chinese EV, watching Q2 deliveries
/watchlist scan

# Track your portfolio
/portfolio add SHOP 1 111.16 Q2 earnings catalyst
/portfolio check

# Get macro context
/macro
/macro energy
```

---

## Sample Output — `/analyze SHOP`

```
# SHOP — Quant Analysis Report

## 1. SNAPSHOT
Current price: $109.54
52-week range: $94.00 – $182.19
Market cap: $139B
Next earnings: ~August 2026 (Q2)
Days to earnings: ~60 days

## 2. FUNDAMENTAL LAYER
Revenue: $3.17B last quarter (+34% YoY) — BEAT by 2%
EPS: $0.25 — BEAT estimates
Free cash flow: $476M — strong
P/E: ~55x (premium but justified by growth rate)
Analyst consensus: BUY — avg target $150 (+37% upside)

## 3. TECHNICAL LAYER
Trend: Downtrend (below 50-day and 200-day MA)
RSI: 48 — neutral, good entry zone
Support: $105-110 ✅ price is here now
Resistance: $120-122

...

## 7. SUGGESTED VERDICT
Signal: 🟡 WAIT (or enter small at support)
Entry: $107-110
Stop loss: $93 (below 52w low)
Target 1: $130
Target 2: $150
Risk/Reward: 1:2.5
Confidence: Medium
```

---

## What Makes This Different

- **No black box scoring** — you see every data point, not just a score
- **Committee context on congressional trades** — knowing WHICH committee matters
- **Pre-earnings flagging** — never get caught by IV crush again
- **Geopolitical exposure** — flags China, Middle East, tariff risk automatically
- **Plain English summary** — every report ends with a 5-sentence human explanation
- **Your portfolio context** — macro section always ties back to your actual positions

---

## Stack

- Claude Code plugin system
- Web search for live data (no stale APIs)
- Yahoo Finance, Capitol Trades, Quiver Quantitative as primary sources
- JSON for watchlist and portfolio persistence

---

## Roadmap

- [ ] Earnings calendar integration
- [ ] Price alerts via hooks
- [ ] Backtest mode — analyze a stock as of a historical date
- [ ] Options flow deeper integration
- [ ] Sector comparison reports
- [ ] Weekly portfolio review automation

---

## Contributing

Built for personal use but open to contributions. If you find better data sources or want to add skills, open a PR.

---

