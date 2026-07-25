---
description: Show all saved accounts' usage % and time-to-reset
allowed-tools: Bash(claude-account-swap status:*)
---

!`claude-account-swap status`

Present the table above to the user in plain language: which account is
currently active (marked with *), and each account's usage % and time until
its window resets. If any account is empty (no accounts saved), tell the
user to run `claude-account-swap add <name>` after logging in.
