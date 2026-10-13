#!/bin/bash
# Prepares a Claude Code on the web session: installs locked dependencies and
# builds the runtime so tests, typecheck, and lint work right away.
set -euo pipefail

# Local machines manage their own toolchain.
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

cd "$CLAUDE_PROJECT_DIR"

npm ci --no-audit --no-fund
npm run build:cached
