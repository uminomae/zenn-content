#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

PORT="${1:-8000}"
export PATH="/opt/homebrew/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

echo "📝 Zenn Preview - http://localhost:${PORT}/"
exec /opt/homebrew/bin/npx --yes zenn-cli preview --port "$PORT"
