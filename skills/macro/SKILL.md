---
name: macro
description: Get a quick macro pulse — VIX, sector rotation, key upcoming events, and what it means for your portfolio. Usage: /macro or /macro [sector]
---

# Macro Scanner Skill

Quick macro context so you always know what the market environment is doing.

## Commands

### `/macro`
Pull current macro snapshot:

```
MACRO SNAPSHOT — [date]

MARKET MOOD
VIX: X — [Calm <15 / Normal 15-20 / Elevated 20-30 / Fear >30]
S&P 500: $X (X% today, X% MTD)
Nasdaq: $X (X% today, X% MTD)
Overall: [Risk-on / Risk-off / Mixed]

KEY RATES
Fed Funds Rate: X%
10Y Treasury: X%
USD/CAD: X

COMMODITIES
Oil (WTI): $X (X% today)
Gold: $X (X% today)
Natural Gas: $X (X% today)

UPCOMING EVENTS (next 14 days)
[Date] — [Event] — [Potential market impact]

SECTOR ROTATION
Leading sectors today: [list]
Lagging sectors today: [list]

WHAT THIS MEANS FOR YOUR PORTFOLIO
[2-3 sentences on how current macro affects SHOP, HOOD, SPCX.TO, and any other positions]
```

### `/macro [sector]`
Deep dive on a specific sector — energy, tech, defense, financials, etc.
Pull latest news, performance, and key stocks moving the sector.

## Data Sources
Search for: `VIX today`, `S&P 500 market update [today's date]`, `sector performance today`, `upcoming economic calendar`
