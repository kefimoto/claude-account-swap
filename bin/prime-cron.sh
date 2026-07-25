#!/usr/bin/env bash
# Cron entry point for `claude-account-swap prime`. Cron runs jobs with a
# minimal PATH (no bun/claude), so `bash -lc` sources your shell rc file
# (.bashrc/.zshrc) first, same as check-usage-hook.sh does for the hook.
bash -lc 'claude-account-swap prime'
