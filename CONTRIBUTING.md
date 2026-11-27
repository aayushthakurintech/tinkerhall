# Contributing to Tinkerhall

Thanks for helping. Tinkerhall is meant to stay small and easy to read, so the
bar for adding things is "does this help a non-expert get a working app?".

## Most helpful right now

1. **Example runs.** Try `/studio:start` on a real idea and open an issue with the
   "Example run" template: your request, how long it took, whether the app ran,
   and what you had to fix by hand. Honest failures are just as useful.
2. **Bug reports.** When the studio skipped a step, claimed something worked when
   it did not, or used jargon.
3. **Wording fixes** that make instructions clearer.

## Rules for changes

- The plugin folder may hold only Markdown (`.md`) and JSON (`.json`) files, plus
  the icon. No scripts, hooks, MCP servers or binaries. CI enforces this.
- Write your own words. Do not paste text from other projects, prompts or
  plugins. If you reuse something small, it must be compatible with MIT and you
  must credit it in the pull request.
- Never add instructions that skip permission prompts, read secrets, send data
  anywhere, or silently change global settings.
- Run `claude plugin validate --strict .` and
  `claude plugin validate --strict plugins/studio` before opening a pull request.

Every change is reviewed line by line by a maintainer before merging. By
contributing you agree that your work is released under the MIT license.
