---
name: export-slides
description: MarpスライドをPDF/PPTX/HTMLにエクスポート。
argument-hint: "<pdf|pptx|html> [ファイルパス]"
disable-model-invocation: true
allowed-tools: Bash, Read, Glob
---

# エクスポートスキル

`$ARGUMENTS` を解析してフォーマットとソースファイルを特定し、Marp CLIでエクスポートする。

## 手順

1. `$ARGUMENTS` からフォーマット（pdf/pptx/html）とソースファイルパスを取得。未指定の場合のデフォルト: フォーマット=pdf、ソース=output/内の最新.mdファイル。

2. ソースファイルが未指定の場合、以下で最新ファイルを特定:
```bash
ls -t output/*.md | head -1
```

3. エクスポート実行:
```bash
npx marp "{ソースファイル}" --theme themes/theme.css --allow-local-files -o "output/{ベース名}.{フォーマット}"
```

4. 出力パスを表示。
