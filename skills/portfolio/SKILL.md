---
name: portfolio
description: Track your real positions with P&L, thesis status, and exit signals. Usage: /portfolio add TICKER shares entry_price, /portfolio show, /portfolio check
---

# Portfolio Skill

Track real positions with entry prices, P&L, thesis health, and exit signals.

## Commands

### `/portfolio add TICKER shares entry_price [notes]`
Add a real position.
Example: `/portfolio add SHOP 1 111.16 Q2 earnings catalyst, stop below 94`

### `/portfolio show`
Display all positions with:
- Current price (pulled live)
- P&L in dollars and percentage
- Thesis status: [On track / Watch / At risk]
- Days held

### `/portfolio check`
For each position, run a quick assessment:
- Is price above or below entry?
- Is it near stop loss level?
- Any major news in last 7 days?
- Thesis still intact? [Yes / No / Uncertain]
- Action: [Hold / Consider trimming / Stop loss approaching]

### `/portfolio remove TICKER`
Close a position and log the outcome (profit/loss, lessons learned).

## Storage

Store in `~/.CLUANT/portfolio.json`:

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
  ]
}
```
