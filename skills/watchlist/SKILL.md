---
name: watchlist
description: Manage your personal stock watchlist. Add, remove, or scan all stocks on your watchlist with a quick analysis. Usage: /watchlist add TICKER, /watchlist remove TICKER, /watchlist show, /watchlist scan
---

# Watchlist Skill

Manage a personal stock watchlist stored in ~/.CLUANT/watchlist.json

## Commands

### `/watchlist add TICKER [notes]`
Add a stock to the watchlist with optional notes about your thesis.
Example: `/watchlist add XPEV Chinese EV play, watching for Q2 delivery numbers`

### `/watchlist remove TICKER`
Remove a stock from the watchlist.

### `/watchlist show`
Display all stocks currently on the watchlist with their thesis notes and date added.

### `/watchlist scan`
Run a quick 2-sentence status update on every stock on the watchlist — current price, how far from your noted entry target, and any major news in the last 7 days. Not a full analysis — just a pulse check.

## Storage

Store watchlist data in `~/.CLUANT/watchlist.json` in this format:

```json
{
  "watchlist": [
    {
      "ticker": "XPEV",
      "added": "2026-06-07",
      "thesis": "Chinese EV play, watching Q2 delivery numbers, entry target $14-15",
      "entry_target": 15.00,
      "stop_loss": 11.00,
      "price_target": 22.00
    }
  ]
}
```

Create the file if it doesn't exist. Read and update it on each command.
