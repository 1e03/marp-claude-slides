# Marp × Claude Code スライド自動生成システム

Marp（Markdown Presentation Ecosystem）と Claude Code のスキルシステムを組み合わせた、マークダウンベースのスライド自動生成ワークフロー。

## セットアップ

```bash
pnpm install
```

## クイックスタート

### 1. スライドを生成する

```
/generate-slides AI活用によるDX推進
```

`input/` にラフなメモを置いてファイルパスを渡すこともできる:

```
/generate-slides input/dx-proposal.md
```

### 2. 品質を検証する

```
/validate-slides output/ai-dx.md
```

### 3. レイアウトを修正する

```
/fix-layout output/ai-dx.md
```

### 4. エクスポートする

```
/export-slides pdf
/export-slides pptx
/export-slides html
```

## ワークフロー

```
[ラフなメモ/トピック]
        │
        ▼
  /generate-slides  ──── input/ のファイルやテキストから生成
        │                 config.yml のルールを自動適用
        ▼
  /validate-slides  ──── 文字数・行数・デザイン制約を検証
        │                 準拠率を数値化
        ▼
   /fix-layout      ──── 違反箇所を自動修正
        │                 適切なレイアウトパターンを適用
        ▼
  /export-slides    ──── PDF / PPTX / HTML に出力
        │
        ▼
    [完成スライド]
```

### リサーチ付きワークフロー

```
/research-and-slides 生成AIの最新動向2026
```

Web検索でトピックを調査し、その結果からスライドを自動生成する。

## スキル一覧

| スキル | 説明 |
|--------|------|
| `/generate-slides` | トピックや入力ファイルからスライドを自動生成 |
| `/research-and-slides` | Web検索で調査してからスライドを生成 |
| `/validate-slides` | 制約ルールへの準拠率を数値化 |
| `/fix-layout` | 検証で見つかった問題を自動修正 |
| `/export-slides` | PDF / PPTX / HTML に出力 |

---

## Fork後のカスタマイズガイド

このリポジトリをForkして自分のブランドやルールに合わせるための手順。

### Step 1: config.yml を編集する（必須）

`config.yml` がすべての設定の単一ソース。ここを変更するだけで、Claude Codeのスキル（生成・検証・修正）の動作が自動的に変わる。

#### カラーテーマを変更する

```yaml
colors:
  primary: "#1B4565"       # ← 自社のメインカラーに変更
  primary_light: "#2A5F8A"
  primary_dark: "#112D42"
  accent: "#3E9BA4"        # ← 自社のアクセントカラーに変更
  accent_light: "#5BB8C0"
  accent_dark: "#2D7A82"
```

#### テキストルールを変更する

```yaml
text_rules:
  title:
    max_chars: 30            # ← タイトルの文字数上限を変更
    forbidden_chars: [":", "!"]
  body:
    max_chars_per_line: 40   # ← 1行の文字数上限を変更
    max_chars_per_slide: 400 # ← スライド全体の文字数上限を変更
    max_lines_per_slide: 12  # ← 行数上限を変更
  bullet:
    max_items: 5             # ← 箇条書きの項目数上限を変更
```

#### ブランド情報を変更する

```yaml
brand:
  name: "My Company"
  logo: ".images/logo.png"
  copyright: "© 2026 My Company"
```

### Step 2: themes/theme.css の :root を合わせる（必須）

`config.yml` のカラーを変更した場合、`themes/theme.css` の `:root` セクションも同じ値に更新する。

```css
:root {
  /* ── ブランドカラー（config.yml: colors.primary / colors.accent） */
  --primary:        #1B4565;    /* ← config.yml と同じ値に */
  --primary-light:  #2A5F8A;
  --primary-dark:   #112D42;
  --accent:         #3E9BA4;    /* ← config.yml と同じ値に */
  --accent-light:   #5BB8C0;
  --accent-dark:    #2D7A82;
  ...
}
```

**注意**: CSS内に一部ハードコードされたRGBA値があります（`/* accent RGB */` や `/* primary-dark RGB */` でコメント済み）。カラーを変更する場合はこれらも更新してください。

### Step 3: ドキュメントを更新する（任意）

`docs/style-guide.md` と `docs/slide-rules.md` は詳細な説明とチェックリストを含むドキュメント。config.yml の値を変更した場合、ドキュメント内の具体的な数値も合わせて更新するとチームでの共有がスムーズになる。ただし、Claude Codeのスキルは `config.yml` の値を直接参照するため、ドキュメントの更新は必須ではない。

### 設定の反映先マトリクス

| 変更内容 | config.yml | theme.css :root | docs/ |
|----------|:----------:|:---------------:|:-----:|
| カラーテーマ | 必須 | 必須 | 任意 |
| テキスト制約値 | 必須 | - | 任意 |
| タイポグラフィ | 必須 | 必須 | 任意 |
| ブランド情報 | 必須 | - | - |
| スペーシング | 必須 | 必須 | 任意 |

---

## ディレクトリ構成

```
Slides/
├── config.yml             # 全設定の単一ソース（カラー・ルール・ブランド）
├── CLAUDE.md              # Claude Code 向けプロジェクトルール
├── package.json           # Marp CLI 依存関係
├── themes/
│   └── theme.css          # カスタムテーマ（:root でカラー定義）
├── docs/
│   ├── style-guide.md     # デザインルール
│   ├── layout-patterns.md # レイアウトパターン集（7カテゴリ23種）
│   └── slide-rules.md     # 制約ルール
├── templates/
│   └── default.md         # テンプレート（パターン実装例集）
├── input/                 # 入力ファイル（ラフな内容・メモ）
├── output/                # 生成されたスライド・エクスポートファイル
├── .images/               # 画像アセット
├── scripts/
│   ├── preview.sh         # プレビューサーバー起動
│   └── export.sh          # エクスポートスクリプト
└── .claude/skills/        # Claude Code スキル定義
```

## スクリプト

```bash
bash scripts/preview.sh                    # プレビューサーバー
bash scripts/preview.sh output/slides.md   # 特定ファイルをプレビュー
bash scripts/export.sh                     # output/の最新.md → PDF
bash scripts/export.sh pdf                 # PDF出力
bash scripts/export.sh pptx               # PowerPoint出力
bash scripts/export.sh html               # HTML出力
bash scripts/export.sh pdf output/my.md   # ファイル指定でPDF出力
```

## テーマコンポーネント

`<!-- _class: クラス名 -->` でスライドのレイアウトを指定する。

### スライドタイプ

| クラス | 用途 |
|--------|------|
| `title-slide` | タイトルスライド（primary背景） |
| `section-slide` | セクション区切り |
| `agenda-slide` | アジェンダ / 目次 |
| `summary-slide` | まとめ |
| `thank-you` | 締めスライド |
| `dark` | ダーク背景 |
| `minimal` | ミニマルスタイル |

### レイアウト

| クラス | 用途 |
|--------|------|
| `two-col` | 2カラムレイアウト |
| `three-col` | 3カラムレイアウト |
| `asymmetric` | 非対称カラム（2:1） |
| `image-bg` | 背景画像 |
| `code-slide` | コード表示用 |

### コンポーネント

| クラス | 用途 |
|--------|------|
| `metric-card` | KPI / 数値表示 |
| `comparison-table` | 比較表 |
| `timeline` | タイムライン |
| `quote-block` | 引用 |
| `highlight-box` | 強調ボックス |
| `info-box` | 情報ボックス |
| `warning-box` | 警告ボックス |
| `success-box` | 成功ボックス |

## 制約ルール（デフォルト値）

`config.yml` の `text_rules` で変更可能。

| ルール | デフォルト値 |
|--------|-------------|
| タイトル文字数 | 30文字以内 |
| タイトル禁止文字 | コロン、感嘆符 |
| 1行の文字数 | 40文字以内 |
| スライド総文字数 | 400文字以内 |
| スライド総行数 | 12行以内 |
| 箇条書き項目数 | 5項目以内 |
| 箇条書きネスト | 2階層まで |
| 画像枚数 | 2枚/スライド |
| アクセントカラー | 2色/スライド |
| テーブル | 5列 x 7行以内 |

## ドキュメント

| ファイル | 内容 |
|---------|------|
| `config.yml` | 全設定の単一ソース |
| `docs/style-guide.md` | カラーパレット、タイポグラフィ、Do's/Don'ts |
| `docs/layout-patterns.md` | 7カテゴリ23パターンのコピペ可能な実装例 |
| `docs/slide-rules.md` | 制約ルールとバリデーションチェックリスト |
| `templates/default.md` | 全パターンの Storybook 風テンプレート |
