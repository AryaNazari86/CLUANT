---
name: congress
description: When the user wants to check congressional stock trades, government insider trading, or politician stock activity for a specific ticker or politician. Triggers for "congress trades for TICKER", "what politicians are buying TICKER", "congressional insider activity", "check congress on TICKER", or any mention of Capitol trades, government trading, or political insider signals.
---

# Congressional Trading Skill

Surface congressional trading signals for stocks you're researching. Committee membership is the key signal — a trade from a politician on the relevant oversight committee carries far more weight than a random member's trade.

## Data sources to search
1. `site:capitoltrades.com [TICKER]`
2. `[TICKER] congressional trading 2026`
3. `quiverquant [TICKER] congress trades`
4. `[TICKER] politician stock buy sell senator representative`

---

## Commands

### Check a ticker
Triggers: "congress trades for TICKER", "/congress TICKER"

Search and output:

```
CONGRESSIONAL TRADES — [TICKER] (last 90 days)

[Politician] ([Party]-[State])
  Committee: [relevant committee — this is the key]
  Action: BUY / SELL
  Amount: $X,000 – $X,000
  Date filed: [date] (trade likely occurred ~[estimated date] due to 45-day delay)
  Why this matters: [1 sentence on why this committee's oversight is relevant to this stock]

Overall signal: 🟢 BULLISH / 🔴 BEARISH / 🟡 NEUTRAL / ⚪ NO DATA

Key insight: [1-2 sentences on the most important trade and what it suggests]
```

**Always note:**
- The 45-day filing delay — the trade happened up to 45 days before the filing
- Amount ranges (they report ranges, not exact amounts)
- Committee context — Armed Services for defense, Finance for financials, Energy for oil/gas, etc.

### Scan recent activity
Triggers: "what are politicians buying lately", "/congress scan"

Search `congressional stock trades this week 2026` and `politicians buying stocks latest` and surface the top 5 most interesting buys across all stocks from the last 14 days with committee context.

### Check a politician
Triggers: "what is [politician name] buying", "/congress [politician name]"

Search `[politician name] stock trades 2026 capitoltrades` and show all their filed trades in the last 90 days, organized by ticker with buy/sell/amount.
