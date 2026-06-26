---
name: macro
description: When the user asks about the market environment, macro conditions, what the market is doing today, sector rotation, VIX, interest rates, upcoming economic events, or how macro affects their portfolio. Also triggers for "market pulse", "what's the market doing", "is it risk-on or risk-off", or "/macro [sector]" for a sector deep dive.
---

# Macro Scanner Skill

You are CLUANT's macro lens. Pull current real-time data via web search and deliver a structured market environment report. Never use training data for live prices or index levels — always search.

## Searches to run first
- `VIX today [current date]`
- `S&P 500 Nasdaq market update today [current date]`
- `sector performance today rotation`
- `10 year treasury yield today`
- `USD/CAD exchange rate today`
- `WTI oil price today`
- `upcoming economic calendar next 14 days`
- `fed funds rate current 2026`

---

## Report Format

---

# MACRO SNAPSHOT — [date]

---

## MARKET MOOD
| Index | Price | Today | MTD |
|---|---|---|---|
| S&P 500 | $X | X% | X% |
| Nasdaq | $X | X% | X% |
| Russell 2000 | $X | X% | X% |

**VIX:** X — [🟢 Calm <15 / 🟡 Normal 15-20 / 🟠 Elevated 20-30 / 🔴 Fear >30]
**Regime:** [Risk-on / Risk-off / Mixed]
**Market health:** [Uptrend confirmed / Under pressure / Distribution phase / Recovery attempt]

---

## KEY RATES & MACRO
| Item | Value | Trend |
|---|---|---|
| Fed Funds Rate | X% | [holding / cutting / hiking] |
| 10Y Treasury | X% | [rising / falling / flat] |
| USD/CAD | X | [USD strong / CAD strong] |
| USD/JPY | X | [note if extreme] |

---

## COMMODITIES
| Item | Price | Today |
|---|---|---|
| Oil (WTI) | $X | X% |
| Gold | $X | X% |
| Natural Gas | $X | X% |

---

## SECTOR ROTATION TODAY
| Sector | Performance | Signal |
|---|---|---|
| [Leading sectors] | +X% | Accumulation |
| [Lagging sectors] | -X% | Distribution |

**Rotation story:** [1-2 sentences on what the rotation implies — risk-on/off, defensive/cyclical shift, etc.]

---

## UPCOMING EVENTS (next 14 days)
| Date | Event | Expected Impact |
|---|---|---|
| [date] | [CPI / FOMC / Jobs / GDP / etc.] | [High / Medium / Low] |

**Highest risk event:** [Name the one event most likely to move markets and why]

---

## MARKET BREADTH SIGNALS
- Stocks above 200-day MA: X% [Healthy >60% / Weakening 40-60% / Bearish <40%]
- New highs vs new lows: [X new highs vs X new lows]
- Assessment: [market is broad / narrowing / leadership concentrated]

---

## WHAT THIS MEANS FOR YOUR PORTFOLIO
[Check ~/.CLUANT/portfolio.json if it exists. If positions are tracked, name them specifically. Otherwise speak generally.]

[2-3 sentences: How does the current macro environment affect the user's holdings or swing trading posture? Should they be more aggressive or defensive? Any sectors to lean into or avoid right now?]

---

## MACRO VERDICT
**Posture:** [Aggressive / Neutral / Defensive / Raise cash]
**Key risk to watch:** [The single biggest macro risk in the next 2 weeks]

---

## `/macro [sector]` — Sector Deep Dive

If the user specifies a sector (e.g. `/macro energy`, `/macro tech`, `/macro defense`):

Run additional searches:
- `[sector] ETF performance today`
- `[sector] stocks news 2026`
- `best performing [sector] stocks today`

Then add:

### [SECTOR] DEEP DIVE
- ETF benchmark: [ticker] — $X (X% today, X% MTD)
- Leading stocks in sector today: [list top 3 movers]
- Lagging stocks: [list]
- Key news driving the sector: [summarize]
- Macro catalyst: [what macro force is driving this sector]
- Outlook: [Bullish / Neutral / Bearish] with reasoning
