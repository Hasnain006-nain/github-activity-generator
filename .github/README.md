# Hasnain’s Real-Work Tracker  
**Author:** Hasnain Haider

&gt; One honest commit a day keeps the graph green.

## What this repo is
A tiny automation that logs **real** work I do every day and pushes a commit to GitHub.  
No fake history, no spam — just daily progress.

## How it works
1. Windows Task Scheduler starts the laptop.
2. After 5 min a script runs **once per calendar day**.
3. It appends a time-stamped note to `daily-log.md`, commits, and pushes.
4. GitHub shows a new green square → profile stays active.

## Files you’ll see
| File | Purpose |
|------|---------|
| `daily-log.md` | Running diary of everything I actually coded/learned |
| `daily_real_work.bat` | The script that adds, commits & pushes |
| `.lastrun` | Tiny lock-file so it only runs once a day |

## Manual run (optional)
Double-click `daily_real_work.bat` → type what you worked on → instant commit.

## Auto run
Set once via Task Scheduler → forget forever → graph grows automatically.

## Result
Every dot on my GitHub graph is **real work** you can read in this file.

---

Built with 💙 by Hasnain Haider  
Feel free to fork and track your own daily progress!
