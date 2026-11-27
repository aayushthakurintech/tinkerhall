# Security policy

Tinkerhall is a set of Markdown instructions that your Claude Code agent reads.
It contains no scripts, hooks, MCP servers or binaries. Instructions can still
lead an agent to do something harmful, so we treat unsafe instructions as
security bugs.

## What counts as a security problem

- An instruction that could make an agent read secrets, delete files outside
  the project, send data to outside services, skip permission prompts or change
  global settings.
- A way to make the studio ignore its ground rules.
- Any file in the plugin that is not Markdown or JSON.

## How to report

Please do **not** open a public issue for a security problem. Use GitHub's
private reporting instead: go to the **Security** tab of this repository and
choose **Report a vulnerability**.

Include what you did, what the agent did, and the Claude Code version if you
know it. You should get a first reply within 7 days. Fixes ship as a new tagged
release, and the report is credited unless you ask otherwise.

## Supported versions

Only the latest release is supported.

## Staying safe as a user

- Read the plugin files before installing. They are short.
- Use an empty folder for each project.
- Keep Claude Code's permission prompts on.
