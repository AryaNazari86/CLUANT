---
name: portfolio
description: When the user wants to manage their real stock positions — adding a trade, viewing current P&L, checking if positions are still valid, removing a closed trade, or reviewing portfolio health. Triggers for "add position", "show my portfolio", "check my positions", "how is my portfolio doing", "portfolio P&L", "is my thesis still intact", or any mention of tracking real trades.
---

# Portfolio Skill

Track real positions with entry prices, P&L, thesis health, and exit signals. Store data in `~/.CLUANT/portfolio.json`. Create the file if it doesn't exist.

## Commands

### Add a position
Triggers: "add TICKER to portfolio", "/portfolio add TICKER shares entry_price [notes]"

Example: "I bought 5 shares of SHOP at $111.16, my stop is $94, thesis is Q2 earnings catalyst"

Store with entry price in both USD and CAD if the user trades on Canadian exchanges.

### Show portfolio
Triggers: "show my portfolio", "what are my positions", "/portfolio show"

For each position, search for `[TICKER] stock price today` and display:

```
PORTFOLIO — [date]

SHOP — 1 share
Entry: $111.16 USD | Current: $X | P&L: $X (X%)
Days held: X
Stop loss: $94.00 — [X% away / ⚠️ APPROACHING / 🔴 BREACHED]
Target 1: $130 | Target 2: $150
Thesis: E-commerce recovery, Q2 earnings catalyst
Status: [🟢 On track / 🟡 Watch / 🔴 At risk]
```

**Portfolio summary at bottom:**
- Total invested: $X
- Total P&L: $X (X%)
- Open risk (sum of distance to stops): $X
- Portfolio heat: X% of account at risk

### Check positions
Triggers: "check my portfolio", "are my positions still valid", "/portfolio check"

For each position, run a quick assessment:
1. Search `[TICKER] stock price today` and `[TICKER] news this week`
2. Assess:
   - Price vs stop loss (safe / approaching / breached)
   - Thesis still intact? (Yes / No / Uncertain)
   - Any material news in last 7 days?
   - Action: [Hold / Consider trimming / Stop loss approaching — review / Exit if stop breached]

### Remove / close a position
Triggers: "I sold TICKER", "close my TICKER position", "/portfolio remove TICKER"

Log the outcome: exit price, P&L, and a brief lesson learned note.

## Storage Format

`~/.CLUANT/portfolio.json`:

```json
{
  "positions": [
    {
      "ticker": "SHOP",
      "shares": 1,
      "entry_price_usd": 111.16,
      "entry_price_cad": 152.28,
      "entry_date": "2026-06-08",
      "stop_loss": 94.00,
      "target_1": 130.00,
      "target_2": 150.00,
      "thesis": "E-commerce recovery, Q2 earnings catalyst August, $3B buyback floor",
      "account": "TFSA"
    }
  ],
  "closed": []
}
```

## Risk Rules to Enforce
- Warn if any single position exceeds 20% of total portfolio value
- Warn if total portfolio heat (sum of stop distances) exceeds 8% of account
- Flag if stop loss has been breached and position not yet closed
