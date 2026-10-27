---
name: generate-slides
description: input/のファイルやテキストからMarpスライドを生成。テーマ・パターン・制約ルールを自動適用。
argument-hint: "<トピック or ファイルパス>"
allowed-tools: Read, Write, Edit, Grep, Glob, Bash, Agent
---

# スライド生成スキル

## 概要
`$ARGUMENTS` で指定されたトピックまたは入力ファイルから、Marpスライドを自動生成する。

## 実行手順

### 1. 入力の解析
- `$ARGUMENTS` からトピック名またはファイルパスを取得する
- ファイルパスが指定された場合、`input/` ディレクトリ内のファイルを読み込む
- トピックのみの場合、そのトピックに基づいてスライド構成を設計する

### 2. 設定・ルール・パターンの読み込み
以下のファイルを必ず参照すること:
- `config.yml` — プロジェクト設定（カラー・テキスト制約の値はここが正）
- `docs/slide-rules.md` — 制約ルール（詳細な説明とチェックリスト）
- `docs/layout-patterns.md` — レイアウトパターン集
- `docs/style-guide.md` — デザインルール
- `templates/default.md` — テンプレート（各パターンの実装例）

### 3. スライド構成の設計
- 全体のストーリーライン（起承転結）を設計する
- 1スライド1メッセージの原則を守る
- 適切なレイアウトパターンを各スライドに割り当てる
- 推奨構成:
  - タイトルスライド（`title-slide`）
  - アジェンダ（`agenda-slide`）※5枚以上の場合
  - 本文スライド（各種パターン）
  - まとめ（`summary-slide`）で締めくくる
  - ※ thank-youスライドは作成しない

### 4. スライド生成
- Marpフロントマターを設定:
  ```yaml
  ---
  marp: true
  theme: custom
  paginate: true
  size: 16:9
  ---
  ```
- 各スライドに適切なクラスを `<!-- _class: xxx -->` で指定
- `docs/layout-patterns.md` のパターンに従ってマークダウンを記述

### 5. 制約チェック（生成後に必ず実施）
各スライドについて `config.yml` の `text_rules` セクションの値に基づき確認:
- [ ] タイトル: `title.max_chars` 文字以内、`title.forbidden_chars` 不使用
- [ ] 本文: 1行 `body.max_chars_per_line` 文字以内
- [ ] スライド全体: `body.max_chars_per_slide` 文字以内、`body.max_lines_per_slide` 行以内
- [ ] 箇条書き: `bullet.max_items` 項目以内、ネスト `bullet.max_nesting` 段まで
- [ ] 画像: `image.max_per_slide` 枚以内/スライド
- [ ] 絵文字: `emoji.max_per_slide` 個以内/スライド

違反がある場合は自動で修正する。

### 6. 出力
- ファイルを `output/` ディレクトリに保存する
- ファイル名: `output/YYYY-MM-DD-{トピック名のスラッグ}.md`
- 生成結果のサマリーを表示（スライド枚数、使用パターン一覧）
