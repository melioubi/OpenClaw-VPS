#!/usr/bin/env bash

set -euo pipefail

: "${TELEGRAM_BOT_USERNAME:?Set TELEGRAM_BOT_USERNAME}"
: "${TELEGRAM_BOT_TOKEN:?Set TELEGRAM_BOT_TOKEN}"

polling_value="${TELEGRAM_POLLING:-true}"
parse_mode_value="${TELEGRAM_PARSE_MODE:-Markdown}"

cat > openclaw-connection/telegram-config.json <<EOF
{
  "channel": "telegram",
  "enabled": true,
  "telegram": {
    "botUsername": "${TELEGRAM_BOT_USERNAME}",
    "botToken": "${TELEGRAM_BOT_TOKEN}",
    "polling": ${polling_value},
    "parseMode": "${parse_mode_value}"
  }
}
EOF

echo "Generated openclaw-connection/telegram-config.json"