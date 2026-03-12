---
marp: true
theme: custom
paginate: true
size: 16:9
---

<!-- pattern: title-slide -->
<!-- タイトルスライド: プレゼン冒頭。大きなタイトル+サブタイトル+発表者情報 -->

# プレゼンテーションタイトル

## サブタイトルをここに記載

**発表者名** | 所属組織
2026年3月11日

---

<!-- pattern: agenda-slide -->
<!-- アジェンダスライド: 発表の流れを箇条書きで示す -->

# アジェンダ

1. 背景と課題
2. 提案するアプローチ
3. 技術的な詳細
4. デモと結果
5. まとめと次のステップ

---

<!-- pattern: section-slide -->
<!-- セクションスライド: 章の区切り。大きな見出しのみ -->

# 01

## 背景と課題

---

<!-- pattern: two-col -->
<!-- 2カラムレイアウト: 左右に情報を並べて比較・対比する -->

# 現状と理想の比較

<div class="columns">
<div class="col">

### 現状

- 手作業による処理が多い
- 属人化したナレッジ
- 週次のレポート作成に8時間
- エラー率が高い

</div>
<div class="col">

### 理想

- 自動化された処理フロー
- 標準化されたドキュメント
- レポート作成を1時間に短縮
- エラー率を90%削減

</div>
</div>

---

<!-- pattern: three-col -->
<!-- 3カラムレイアウト: 3つの要素を横並びで表示 -->

# 3つの基本方針

<div class="columns-3">
<div class="col">

### シンプル

複雑さを排除し
本質に集中する

</div>
<div class="col">

### スケーラブル

成長に合わせて
柔軟に拡張できる

</div>
<div class="col">

### セキュア

安全性を最優先に
設計する

</div>
</div>

---

<!-- pattern: asymmetric -->
<!-- 非対称レイアウト: 左に説明テキスト、右に図やイメージ -->

# アーキテクチャ概要

<div class="columns">
<div class="col-wide">

### システム構成

- フロントエンド: React + TypeScript
- バックエンド: Go + gRPC
- データベース: PostgreSQL
- インフラ: Kubernetes on AWS

処理フローは右図のとおり

</div>
<div class="col-narrow">

![アーキテクチャ図](./images/architecture.png)

</div>
</div>

---

<!-- pattern: metric-card -->
<!-- メトリクスカード: KPIや数値を大きく目立たせる -->

# 主要な成果指標

<div class="metrics">
<div class="metric">

### 処理速度

## 3.2倍
前年比で向上

</div>
<div class="metric">

### コスト削減

## 42%
年間運用コスト

</div>
<div class="metric">

### 満足度

## 94点
ユーザー評価スコア

</div>
</div>

---

<!-- pattern: comparison-table -->
<!-- 比較テーブル: 表形式で選択肢を比較する -->

# ツール比較

| 項目 | ツールA | ツールB | ツールC |
|:-----|:------:|:------:|:------:|
| 導入コスト | 低 | 中 | 高 |
| 学習コスト | 低 | 高 | 中 |
| カスタマイズ性 | 中 | 高 | 高 |
| サポート体制 | 有 | 有 | 無 |
| 推奨度 | **推奨** | 条件付き | 非推奨 |

---

<!-- pattern: timeline -->
<!-- タイムラインスライド: 時系列でマイルストーンを示す -->

# 導入ロードマップ

<div class="timeline">

**Q1** 要件定義・PoC開発
↓
**Q2** MVP開発・社内テスト
↓
**Q3** 段階的リリース・改善
↓
**Q4** 全社展開・効果測定

</div>

---

<!-- pattern: quote-block -->
<!-- 引用ブロック: 印象的な言葉やフィードバックを引用表示 -->

# ユーザーの声

> 導入後、チーム全体の生産性が
> 目に見えて改善しました。
> 特にレポート作成の自動化は
> 大きなインパクトがありました。

**-- プロジェクトマネージャー, A社**

---

<!-- pattern: code-slide -->
<!-- コードスライド: ソースコードやコマンドを表示 -->

# 実装例

```go
func ProcessData(ctx context.Context, input []Record) (*Result, error) {
    validated, err := validate(input)
    if err != nil {
        return nil, fmt.Errorf("validation: %w", err)
    }

    return transform(ctx, validated)
}
```

ポイント: バリデーションと変換を分離

---

<!-- pattern: image-bg -->
<!-- 背景画像スライド: 画像を背景に全面表示 -->

![bg](./images/background.jpg)

# 未来を見据えた設計

次世代プラットフォームの構想

---

<!-- pattern: highlight-box -->
<!-- ハイライトボックス: 重要な情報を強調表示 -->

# 重要なポイント

<div class="box-highlight">

### 移行時の注意事項

- データのバックアップを必ず取得する
- ステージング環境で事前検証を行う
- ロールバック手順を準備しておく

</div>

---

<!-- pattern: info-box -->
<!-- 情報ボックス: 補足情報や参考情報を表示 -->

# 参考情報

<div class="box-info">

### 関連ドキュメント

- 設計仕様書 v2.1
- API リファレンス
- 運用マニュアル

詳細は社内Wikiを参照してください

</div>

---

<!-- pattern: warning-box -->
<!-- 警告ボックス: 注意喚起やリスク情報を表示 -->

# 既知の制約事項

<div class="box-warning">

### 現バージョンの制限

- 同時接続数は最大1000
- ファイルサイズ上限は100MB
- 一部のブラウザで非対応

次期バージョンで対応予定

</div>

---

<!-- pattern: summary-slide -->
<!-- まとめスライド: 発表内容の要点を振り返る -->

# まとめ

### 本日お伝えしたこと

1. **課題**: 手作業による非効率な運用
2. **解決策**: 自動化基盤の導入
3. **成果**: 処理速度3.2倍、コスト42%削減
4. **次のステップ**: Q2にMVP完成予定

---

<!-- pattern: thank-you -->
<!-- ありがとうスライド: 締めくくり。連絡先を記載 -->

# ご清聴ありがとうございました

お問い合わせ・ご質問は下記まで

**メール**: example@company.co.jp
**Slack**: #project-channel
