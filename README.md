<p align="center">
  <img src="docs/logo.png" width="96" height="96" alt="Tinkerhall logo: a small house with a warm doorway">
</p>

<h1 align="center">Tinkerhall</h1>

<p align="center">
  <strong>A tiny software studio inside Claude Code.</strong><br>
  Describe an app in plain words, approve a few decisions, and get a tested web app that runs on your computer.
</p>

<p align="center">
  <a href="LICENSE"><img alt="MIT license" src="https://img.shields.io/badge/license-MIT-2f6f6e"></a>
  <img alt="Status: early" src="https://img.shields.io/badge/status-early%20preview-f2a541">
  <img alt="Works with Claude Code" src="https://img.shields.io/badge/works%20with-Claude%20Code-1c1b22">
</p>

---

## Why Tinkerhall

Asking an AI agent to "build me an app" often goes one of two ways. It builds
something huge you did not ask for, or it says "done!" when nothing runs.

Tinkerhall gives your agent a small, calm way of working:

- **You are the client.** You answer at most five plain questions. No jargon.
- **You approve the plan and the design** before any code is written.
- **It builds in small slices** and shows proof that each one works: real test
  output, not just a claim.
- **It cares about design.** The Designer picks a clear look, checks colour
  contrast, keyboard use and phone widths, and avoids the generic template look.
- **It is honest at the end.** You get a hand-over note listing what works, what
  does not, and how to run it.

## Install

You need [Claude Code](https://docs.claude.com/en/docs/claude-code/overview).
Then, inside Claude Code:

```text
/plugin marketplace add aayushthakurintech/tinkerhall
/plugin install studio@tinkerhall
```

On Claude Code 2.1.275 or later you can do it in one step:

```text
/plugin install studio --marketplace aayushthakurintech/tinkerhall
```

Claude Code shows you what the plugin contains before it installs. Tinkerhall
is only Markdown instructions: no scripts, hooks, servers or binaries.

## Use it

1. Make a new, **empty** folder and open Claude Code in it.
2. Type `/studio:start` and describe your idea, for example:

   ```text
   /studio:start A page where my book club can list books we want to read and vote on the next one.
   ```

3. Answer the questions, approve the brief and the design, and watch the slices
   get built and tested.
4. Read `HANDOVER.md` for how to run your app.

## Meet the studio

| Who | What they do | What you get |
| --- | --- | --- |
| **Producer** (your main chat) | Talks with you, runs the flow, keeps a log | Short, plain updates |
| **Planner** | Turns your answers into a one-page brief | `BRIEF.md`: features, what is left out, done checks |
| **Designer** | Plans screens, look and feel, data and tools | `DESIGN.md`: palette, fonts, accessibility, build slices |
| **Builder** | Builds one small slice at a time | Code, tests and the commands to run them |
| **Tester** | Runs the app and tests, never edits code | Real output: pass, fail or not checked |
| **Reviewer** | Reads everything, changes nothing | Must-fix, should-fix and nice-to-have findings |

If a slice fails three times, the studio stops and asks you what to do instead
of looping forever. More detail in [docs/how-it-works.md](docs/how-it-works.md).

## What it can do

- Small web apps you run on your own computer: trackers, lists, simple tools,
  personal dashboards, little games, forms that save data locally.
- Keep a running `STUDIO_LOG.md`, so you can stop and pick up later.

## What it cannot do (yet)

- It does not guarantee a working app. The rules are written instructions, and an
  AI agent can still make mistakes or miss a step.
- Version 1 avoids accounts, payments and online hosting unless you ask.
- It is tested only with Claude Code. Other agents may work but are not supported.
- It uses your own Claude account, so normal usage limits and costs apply.

## Safety

- Use an empty folder for each project, and keep permission prompts on.
- Tinkerhall tells your agent never to read secrets or `.env` files, never to
  work outside the project folder, and to ask before deleting, installing
  globally, publishing or spending money.
- Please read the files before installing. They are short: start with
  [`plugins/studio/skills/start/SKILL.md`](plugins/studio/skills/start/SKILL.md).

Found a safety problem? See [SECURITY.md](SECURITY.md).

## Examples

Real example runs, with the exact request, time taken and what failed, will be
listed in [docs/examples.md](docs/examples.md). None are published yet. If you
try Tinkerhall, sharing your run in an issue helps a lot.

## Contributing

Ideas, bug reports and example runs are very welcome. See
[CONTRIBUTING.md](CONTRIBUTING.md).

If Tinkerhall helped you build something, a star helps other people find it.

## License

[MIT](LICENSE) © 2026 Aayush Thakur. All text and instructions in this repo are
original work.
