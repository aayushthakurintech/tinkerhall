# How Tinkerhall works

Installing Tinkerhall does not change or retrain any AI model. It adds a few
Markdown files that your Claude Code agent reads: one skill (`start`) and five
subagents. Everything runs on your computer, using your own Claude account.

## The six stages

```text
 1. Understand   Producer asks up to 5 plain questions
 2. Brief        Planner writes BRIEF.md            -> you approve
 3. Design       Designer writes DESIGN.md          -> you approve
 4. Build        for each slice:
                   Builder builds -> Tester runs it
                   fail? back to Builder (max 3 tries, then ask you)
 5. Review       Reviewer reads everything (read-only) -> must-fixes go back to step 4
 6. Hand over    HANDOVER.md: how to run, what works, what does not
```

## Files the studio writes in your project

| File | Written by | Purpose |
| --- | --- | --- |
| `BRIEF.md` | Planner | What version 1 does, what it leaves out, and how to check it is done |
| `DESIGN.md` | Designer | Screens, palette, fonts, accessibility rules, data, tools, slices |
| `STUDIO_LOG.md` | Producer | What happened at each stage, so you can resume later |
| `HANDOVER.md` | Producer | How to run the app and an honest status |

## Why the helpers have limited tools

| Helper | Can edit files? | Can run commands? |
| --- | --- | --- |
| Planner | Writes `BRIEF.md` | No |
| Designer | Writes `DESIGN.md` | No |
| Builder | Yes | Yes |
| Tester | No | Yes |
| Reviewer | No | No |

The Tester cannot change code, so it cannot "fix" a failing test by editing it.
The Reviewer cannot change anything, so its findings stay independent.

## Limits

These are written instructions, not hard guarantees. An agent can still skip a
step or make a mistake. Keep permission prompts on and read what it proposes.
