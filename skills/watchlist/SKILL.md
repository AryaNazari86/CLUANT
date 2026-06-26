---
name: watchlist
description: When the user wants to manage their stock watchlist — adding a stock to watch, removing one, viewing what's on their list, or scanning all watchlist stocks for a quick update. Triggers for "add [TICKER] to my watchlist", "remove from watchlist", "show my watchlist", "scan my watchlist", "what am I watching", or any mention of watchlist management.
---

# Watchlist Skill

Manage a personal stock watchlist stored in `~/.CLUANT/watchlist.json`. Create the file if it doesn't exist.

## Commands

### Add a stock
Triggers: "add TICKER to watchlist", "watch TICKER", "/watchlist add TICKER [notes]"

Add the stock with optional thesis notes, entry target, stop loss, and price target.

### Remove a stock
Triggers: "remove TICKER from watchlist", "/watchlist remove TICKER"

Remove the entry from the JSON file.

### Show watchlist
Triggers: "show my watchlist", "what am I watching", "/watchlist show"

Display all stocks in a clean table:
| Ticker | Added | Entry Target | Stop | Target | Thesis |
|---|---|---|---|---|---|
| XPEV | 2026-06-07 | $15.00 | $11.00 | $22.00 | Chinese EV play... |

### Scan watchlist
Triggers: "scan my watchlist", "/watchlist scan"

For each stock on the watchlist, run a web search for `[TICKER] stock price today` and `[TICKER] news this week` and deliver a 2-sentence pulse check:
- Current price vs entry target (how far away?)
- Any major news in the last 7 days worth knowing

Format:
```
WATCHLIST SCAN — [date]

XPEV — $13.42 (entry target $15, you're 11% away)
News: Q2 delivery numbers beat estimates by 8% — thesis intact.

HOOD — $28.10 (entry target $26, price is above target — monitor for pullback)
News: No major catalysts this week, market-wide selloff dragging it down.
```

## Storage Format

`~/.CLUANT/watchlist.json`:

```json
{
  "watchlist": [
    {
      "ticker": "XPEV",
      "added": "2026-06-07",
      "thesis": "Chinese EV play, watching Q2 delivery numbers",
      "entry_target": 15.00,
      "stop_loss": 11.00,
      "price_target": 22.00
    }
  ]
}
```
