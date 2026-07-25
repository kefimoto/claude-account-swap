---
description: Swap the active Claude account (asks which one if you have more than two)
allowed-tools: Bash(claude-account-swap:*)
---

!`claude-account-swap list`

If the list above has 0 or 1 accounts, tell the user to run
`claude-account-swap add <name>` (right after logging into another account
with `claude auth login`) and stop here.

If it has exactly 2 accounts, run `claude-account-swap next`.

If it has 3 or more, ask the user (AskUserQuestion) which account to switch
to, offering each name as an option, then run `claude-account-swap use <name>`
with their choice.

Once the swap command finishes, its own "Swapped X (a) -> Y (b)" line names
the target account (b) this swap was supposed to land on. Tell the user:
1. That the swap succeeded, naming account (b).
2. What email address currently appears in your own system prompt / context
   (the "userEmail" field, if present) — state it plainly, verbatim.
3. Whether that matches (b). If it does NOT match, say so clearly, but note
   it's not necessarily an error: the token itself (which actually governs
   billing/rate limits) is confirmed reliable and swaps immediately, while
   Claude Code's own identity/context cache can lag behind it. A mismatch
   here means the cache hasn't caught up yet, not that the swap failed.
