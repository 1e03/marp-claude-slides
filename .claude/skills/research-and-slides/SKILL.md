---
name: research-and-slides
description: WebSearchでトピックをリサーチし、その結果からスライドを自動生成。
argument-hint: "<トピック>"
allowed-tools: Read, Write, Edit, Grep, Glob, Bash, Agent
---

# リサーチ＋スライド生成スキル

## 概要
`$ARGUMENTS` で指定されたトピックについてWebSearchでリサーチし、その結果からMarpスライドを自動生成する。

## 実行手順

### 1. トピックの解析
- `$ARGUMENTS` からリサーチトピックを取得する
- リサーチの方向性（概要紹介、比較分析、技術解説など）を判断する

### 2. リサーチの実行
- Agent（subagent_type: general-purpose）を使ってWebSearchでトピックをリサーチする
- リサーチ観点:
  - トピックの概要・定義
  - 主要なポイント・特徴
  - 最新の動向・トレンド
  - 具体的なデータ・統計
  - 事例・ユースケース
- 複数のソースから情報を収集し、信頼性を確認する

### 3. 情報の整理
- リサーチ結果を構造化する
- スライドのストーリーラインを設計する
- 1スライド1メッセージに分解する

### 4. 設定・ルール・パターンの読み込み
以下のファイルを必ず参照すること:
- `config.yml` — プロジェクト設定（カラー・テキスト制約の値はここが正）
- `docs/slide-rules.md` — 制約ルール（詳細な説明とチェックリスト）
- `docs/layout-patterns.md` — レイアウトパターン集
- `docs/style-guide.md` — デザインルール
- `templates/default.md` — テンプレート

### 5. スライド生成
- Marpフロントマターを設定:
  ```yaml
  ---
  marp: true
  theme: custom
  paginate: true
  size: 16:9
  ---
  ```
- 推奨構成:
  - タイトルスライド（`title-slide`）
  - アジェンダ（`agenda-slide`）
  - 本文スライド（リサーチ内容に基づく）
  - まとめ（`summary-slide`）
  - 参考文献スライド（リサーチソースのURL一覧）

### 6. 制約チェック
各スライドについて `config.yml` の `text_rules` の値で制約を確認し、違反があれば修正する。

### 7. 出力
- `output/` ディレクトリに保存
- ファイル名: `output/YYYY-MM-DD-{トピック名のスラッグ}.md`
- 生成結果のサマリーを表示（スライド枚数、リサーチソース数）
