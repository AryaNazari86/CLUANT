---
name: position-sizer
description: When the user wants to know how many shares to buy, how to size a position, calculate risk on a trade, figure out a stop loss, or manage position sizing. Triggers for "how many shares should I buy", "size my position", "what's my risk on this trade", "position size for TICKER", "1% risk on TICKER", "how much to buy", or any question about trade sizing or risk calculation.
---

# Position Sizer Skill

Calculate optimal share counts using risk management principles. No APIs needed — pure math from user-provided inputs.

## Core Rule
**Default: risk 1% of account per trade. Never exceed 2% without exceptional reason. Total open portfolio risk should stay under 8%.**

---

## How to Run

Ask the user for (or infer from context / portfolio.json):
1. Account size (total trading capital)
2. Entry price (where they plan to buy)
3. Stop loss price (where they'll exit if wrong)
4. Risk % (default 1% if not specified)
5. Max position size limit (default 20% of account)

Then calculate:

```
Dollar risk = Account × Risk%
Share count = Dollar risk ÷ (Entry − Stop loss)
Position value = Share count × Entry price
Position % of account = Position value ÷ Account
```

Round share count **down** to the nearest whole number. Apply the strictest of:
- Dollar risk limit
- Position size limit (20% of account max)
- Portfolio heat cap (remaining room under 8% total risk)

---

## Output Format

```
POSITION SIZER — [TICKER if known]

Inputs
  Account size:   $X,XXX
  Entry price:    $X.XX
  Stop loss:      $X.XX (X% below entry)
  Risk per trade: X% ($XXX)

Calculation
  Dollar risk:      $XXX
  Stop distance:    $X.XX per share
  Share count:      XX shares ← BUY THIS MANY
  Position value:   $X,XXX (X% of account)

Risk check
  ✅ Within 1% risk limit
  ✅ Position under 20% of account
  [⚠️ or flag if any limit approached]

Targets
  Target 1 (1.5R): $X.XX → profit $XXX
  Target 2 (2.5R): $X.XX → profit $XXX
  Target 3 (3R):   $X.XX → profit $XXX

R-multiple guide: If you hit stop → lose $XXX. Hit T2 → gain $XXX (2.5× your risk).
```

---

## Multiple Account Sizes

If the user doesn't specify an account size, show a table for common sizes:

| Account | Risk (1%) | Shares | Position value | Position % |
|---|---|---|---|---|
| $10,000 | $100 | X | $X | X% |
| $25,000 | $250 | X | $X | X% |
| $50,000 | $500 | X | $X | X% |
| $100,000 | $1,000 | X | $X | X% |

---

## Portfolio Heat Check

If `~/.CLUANT/portfolio.json` exists, check existing positions and add:

```
Current portfolio heat: X% (existing open risk)
Remaining heat budget: X% (of 8% max)
This trade adds: X%
New total heat: X% [✅ OK / ⚠️ Approaching limit / 🔴 Over limit]
```

---

## Kelly Criterion (optional, if user asks)

If the user provides historical win rate and avg win/loss:
```
Kelly % = Win rate − (Loss rate ÷ Win/Loss ratio)
Kelly shares = (Account × Kelly%) ÷ Entry price
Note: Use half-Kelly in practice to reduce volatility
```
