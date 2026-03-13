# Slides プロジェクト - Claude Code 設定

## 概要
Marp（Markdown Presentation Ecosystem）を使用したスライド自動生成システム。

## 設定の単一ソース
`config.yml` がカラーテーマ・テキスト制約・タイポグラフィの正規の設定ファイル。
スキル実行時はまず `config.yml` を読み込み、そこに定義された値を使用すること。

## スライド作成時の必須参照ファイル
スライドを生成・編集する際は、必ず以下のファイルを参照すること:
1. `config.yml` — **全設定の単一ソース**（カラー・テキスト制約・タイポグラフィ）
2. `docs/slide-rules.md` — 制約ルール（詳細説明とチェックリスト）
3. `docs/layout-patterns.md` — レイアウトパターン集（コピペ可能な実装例）
4. `docs/style-guide.md` — デザインルール（カラー・タイポグラフィの詳細）
5. `templates/default.md` — テンプレート（各パターンの実装例）
6. `themes/theme.css` — カスタムテーマ（利用可能なCSSクラス）

## スキル一覧
- `/generate-slides [トピック or ファイルパス]` — スライド生成
- `/research-and-slides [トピック]` — リサーチ＋スライド生成
- `/validate-slides [ファイルパス]` — 品質検証
- `/fix-layout [ファイルパス]` — レイアウト自動修正
- `/export-slides [pdf|pptx|html] [ファイルパス]` — エクスポート

## 出力ファイル命名規則
- `output/` に成果物を作成する際、ファイル名に日付をハイフン区切りで含める
- 形式: `YYYY-MM-DD-タイトル.拡張子`（例: `2026-03-12-AI概要スライド.md`）

## ディレクトリ構造
- `input/` — 入力ファイル（ラフな内容・メモ）
- `output/` — 生成されたスライド・エクスポートファイル
- `themes/` — Marpカスタムテーマ
- `templates/` — テンプレート
- `docs/` — ドキュメント・ルール
- `.images/` — 画像アセット
- `scripts/` — ヘルパースクリプト

## Marpフロントマター（必須設定）
```yaml
---
marp: true
theme: custom
paginate: true
size: 16:9
---
```

## 制約ルール（概要）
**注意**: 具体的な数値は `config.yml` の `text_rules` セクションが正。以下はデフォルト値。
- タイトル: 最大30文字、コロン禁止
- 本文: 1行40文字以内
- スライド全体: 最大400文字・12行
- 箇条書き: 最大5項目、ネスト2段まで
- 画像: 最大2枚/スライド
- アクセントカラー: 最大2色/スライド

## 禁止事項
- タイトルにコロン（:）を使用しない
- 感嘆符（!）の多用禁止
- 絵文字の多用禁止（使用する場合は1スライド2個まで）
- 情報の詰め込みすぎ（1スライド1メッセージを徹底）

## エクスポート
```bash
bash scripts/export.sh pdf          # PDF出力
bash scripts/export.sh pptx         # PowerPoint出力
bash scripts/export.sh html         # HTML出力
bash scripts/preview.sh             # プレビューサーバー
```

## ブランドカラー
**注意**: 具体的なカラーコードは `config.yml` の `colors` セクションが正。以下はデフォルト値。
- Primary: `#1B4565`
- Accent: `#3E9BA4`
- Base: グレースケール（`#333`, `#666`, `#999`, `#CCC`, `#F5F5F5`）
