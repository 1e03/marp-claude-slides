#!/bin/bash
# Marp プレビューサーバー起動
# Usage: bash scripts/preview.sh [file]

FILE="${1:-output/}"
THEME="themes/theme.css"

echo "🖥  Marp プレビューサーバーを起動します..."
echo "   テーマ: $THEME"
echo "   対象: $FILE"
echo ""

npx marp --server --theme "$THEME" --allow-local-files "$FILE"
