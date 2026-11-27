#!/usr/bin/env bash
# CI guard: the plugin folder may contain only Markdown, JSON and the icon.
# This script lives outside the plugin and is never installed by users.
set -euo pipefail
bad=$(find plugins -type f ! -name '*.md' ! -name '*.json' ! -path 'plugins/*/.claude-plugin/icon.png' || true)
if [ -n "$bad" ]; then
  echo "These files are not allowed inside plugins/ (only .md, .json and the icon):"
  echo "$bad"
  exit 1
fi
for d in plugins/*/; do
  for forbidden in hooks bin scripts .mcp.json; do
    if [ -e "$d$forbidden" ]; then echo "Forbidden in plugin: $d$forbidden"; exit 1; fi
  done
done
# Phrases that should never appear as instructions in the plugin.
if grep -RniE 'dangerously-skip-permissions|bypassPermissions|--no-verify' plugins; then
  echo "Plugin text mentions a permission bypass. Remove it."
  exit 1
fi
echo "Plugin file check passed."
