# CLAUDE.md

Claude Code reads this file. The repository rules live in AGENTS.md and apply in full:

@AGENTS.md

## Claude Code notes

- Skills in `.claude/skills/` are symlinks to `.agents/skills/`. Edit the files under `.agents/skills/`.
- In Claude Code on the web, `.claude/hooks/session-start.sh` runs `npm ci` and builds once per session. Locally it does nothing.
- Before you push, run `npm run check:fast` (the husky pre-push hook runs it too). Run tests for touched paths with `npm run test:local -- PATH...`.
