# Telegram config local

1. Copy `.env.example` to `.env`.
2. Set `TELEGRAM_BOT_USERNAME` and `TELEGRAM_BOT_TOKEN` in `.env`.
3. Load the variables in your shell and run `./openclaw-connection/generate-telegram-config.sh`.

The generated `telegram-config.json` stays local and is ignored by Git.