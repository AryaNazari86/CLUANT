---
name: congress
description: Check recent congressional stock trades for a ticker or politician. Surfaces the most actionable insider-government signals. Usage: /congress TICKER or /congress [politician name]
---

# Congressional Trading Skill

Surface congressional trading signals for stocks you're researching.

## Commands

### `/congress TICKER`
Search for all congressional trades in a specific stock over the last 90 days.

Output format:
```
CONGRESSIONAL TRADES — [TICKER] (last 90 days)

[Politician] ([Party]-[State])
Committee: [relevant committee]
Action: BUY / SELL
Amount: $X,000 – $X,000
Date filed: [date]
Significance: [why this committee matters for this stock]

Overall signal: BULLISH / BEARISH / NEUTRAL / NO DATA
```

### `/congress scan`
Run a quick scan of the most recent congressional buys across all stocks from the last 14 days. Surface the top 5 most interesting signals with committee context.

### `/congress [politician name]`
Show all trades filed by a specific politician in the last 90 days.

## Data Sources

Pull data from:
1. Web search: `site:capitoltrades.com [TICKER]`
2. Web search: `[TICKER] congressional trading insider 2026`
3. Web search: `quiverquant [TICKER] congress`

Always note:
- Which committee the politician sits on (this is the key signal)
- The 45-day filing delay (trade happened up to 45 days before filing)
- Amount ranges (they report ranges not exact amounts)
