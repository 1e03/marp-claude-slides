#!/bin/bash
# Marp エクスポートスクリプト
# Usage: bash scripts/export.sh [format] [source]
# format: pdf (default), pptx, html
# source: .md file path (default: latest in output/)

FORMAT="${1:-pdf}"
SOURCE="$2"
THEME="themes/theme.css"

# ソースファイル未指定の場合、output/内の最新.mdを使用
if [ -z "$SOURCE" ]; then
  SOURCE=$(ls -t output/*.md 2>/dev/null | head -1)
  if [ -z "$SOURCE" ]; then
    echo "エラー: output/ にMarkdownファイルが見つかりません"
    exit 1
  fi
fi

if [ ! -f "$SOURCE" ]; then
  echo "エラー: ファイルが見つかりません: $SOURCE"
  exit 1
fi

# 出力ファイル名を生成
BASENAME=$(basename "$SOURCE" .md)
OUTPUT="output/${BASENAME}.${FORMAT}"

echo "📤 エクスポート開始"
echo "   入力: $SOURCE"
echo "   出力: $OUTPUT"
echo "   形式: $FORMAT"
echo ""

npx marp "$SOURCE" --theme "$THEME" --allow-local-files -o "$OUTPUT"

if [ $? -eq 0 ]; then
  echo ""
  echo "✅ エクスポート完了: $OUTPUT"
else
  echo ""
  echo "❌ エクスポートに失敗しました"
  exit 1
fi
