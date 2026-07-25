#!/usr/bin/env bash
# UserPromptSubmit hook: if the active account's usage is past threshold,
# injects a warning + full account breakdown into context so the model tells
# the user and recommends swapping. Silent (no output, exit 0) otherwise.
#
# `bash -lc` sources shell rc files so `claude-account-swap` resolves even if
# this hook runs under a minimal, non-interactive environment.
THRESHOLD="${CLAUDE_ACCOUNT_SWAP_THRESHOLD:-95}"
bash -lc "claude-account-swap hook-check $THRESHOLD" 2>/dev/null
exit 0
