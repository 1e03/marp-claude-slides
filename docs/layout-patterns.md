# レイアウトパターン集

Marpスライドで使用するレイアウトパターンのリファレンス。各パターンはそのままコピーして使用できる。

---

## 1. タイトル・セクション系

### 1-1. タイトルスライド（title-slide）

プレゼンテーションの表紙として使用する。

```markdown
---
marp: true
---

<!-- _class: title-slide -->

# プロジェクト概要と今後の方針

## 2026年度 第1四半期レビュー

**坂下太郎**
プロダクト開発部

2026年3月11日

---
```

### 1-2. セクションスライド（section-slide）

プレゼンテーション内のセクション区切りとして使用する。

```markdown
---

<!-- _class: section-slide -->

# 01

## 現状分析

ここでは直近3か月の成果と課題を振り返ります

---
```

### 1-3. Thank Youスライド（thank-you）

プレゼンテーションの最終スライドとして使用する。

```markdown
---

<!-- _class: thank-you -->

# ご清聴ありがとうございました

お問い合わせ先
**sakashita@example.com**

---
```

---

## 2. カラムレイアウト系

### 2-1. 2カラム（two-col）

左右均等に2つのコンテンツを並べる。

```markdown
---

<!-- _class: two-col -->

# チーム体制の変更点

<div class="left">

## 変更前

- メンバー5名体制
- 週次ミーティング
- ウォーターフォール開発
- 月次リリース

</div>

<div class="right">

## 変更後

- メンバー8名体制
- デイリースタンドアップ
- アジャイル開発
- 隔週リリース

</div>

---
```

### 2-2. 3カラム（three-col）

3つの要素を横並びにする。

```markdown
---

<!-- _class: three-col -->

# サービスプランの比較

<div class="col">

## ベーシック

- ユーザー数: 10名
- ストレージ: 10GB
- サポート: メール

**月額 ¥5,000**

</div>

<div class="col">

## スタンダード

- ユーザー数: 50名
- ストレージ: 100GB
- サポート: チャット

**月額 ¥15,000**

</div>

<div class="col">

## プレミアム

- ユーザー数: 無制限
- ストレージ: 1TB
- サポート: 専任担当

**月額 ¥50,000**

</div>

---
```

### 2-3. 非対称カラム（asymmetric）

左右の幅が異なるレイアウト。テキスト+補足や、メイン+サイドバー構成に適する。

```markdown
---

<!-- _class: asymmetric -->

# 売上推移の分析

<div class="main">

## 主要ポイント

直近6か月で売上は前年比 **132%** に成長した。
特にB2B領域の新規顧客獲得が大きく貢献している。

- Q1: 目標達成率 115%
- Q2: 目標達成率 128%
- Q3: 目標達成率 145%（見込み）

</div>

<div class="side">

### 補足データ

新規顧客数: **47社**
継続率: **94.2%**
平均単価: **¥380,000**

</div>

---
```

### 2-4. 2カラム画像付き（two-col-image）

片側にテキスト、片側に画像を配置する。

```markdown
---

<!-- _class: two-col-image -->

# 新オフィスの紹介

<div class="text">

## 移転の背景

チーム拡大に伴い、より広いオフィスへ移転した。

- 面積: 従来の1.5倍
- 会議室: 8室完備
- フリースペース新設
- 最寄り駅から徒歩3分

**2026年4月1日より稼働開始**

</div>

<div class="image">

![新オフィス外観](./images/new-office.jpg)

</div>

---
```

---

## 3. リスト系

### 3-1. 箇条書きリスト（bullet-list）

基本的な箇条書きのスライド。

```markdown
---

# 今期の重点施策

- プロダクト品質の向上
  - 自動テストカバレッジ80%達成
  - バグ修正のSLA短縮
- 顧客満足度の改善
  - NPS目標: +45以上
  - サポート応答時間の短縮
- 開発チームの生産性向上
  - CI/CDパイプラインの最適化
  - 技術負債の計画的な解消

---
```

### 3-2. 番号付きステップ（numbered-steps）

手順やプロセスを順番に説明する。

```markdown
---

<!-- _class: numbered-steps -->

# 導入までの流れ

<div class="steps">

**Step 1** ヒアリング
要件と現状の課題を整理する

**Step 2** 提案
最適なプランと導入スケジュールを提示する

**Step 3** 環境構築
テスト環境を準備し、初期設定を実施する

**Step 4** 運用開始
本番環境へ移行し、サポートを開始する

</div>

---
```

### 3-3. チェックリスト（checklist）

完了状況や達成状況を表現する。

```markdown
---

<!-- _class: checklist -->

# リリース前チェックリスト

- [x] 単体テストの完了
- [x] 結合テストの完了
- [x] セキュリティレビューの実施
- [ ] パフォーマンステストの実施
- [ ] ドキュメントの更新
- [ ] ステークホルダーへの最終確認

**進捗: 3/6 完了**

---
```

---

## 4. カード・パネル系

### 4-1. メトリクスカード（metric-card）

KPIや数値を大きく目立たせて表示する。

```markdown
---

<!-- _class: metric-card -->

# 第2四半期の実績

<div class="metrics">

<div class="metric">
<span class="number">¥2.4億</span>
<span class="label">売上高</span>
<span class="change positive">+18%</span>
</div>

<div class="metric">
<span class="number">1,247</span>
<span class="label">アクティブユーザー</span>
<span class="change positive">+32%</span>
</div>

<div class="metric">
<span class="number">94.2%</span>
<span class="label">継続率</span>
<span class="change negative">-1.3%</span>
</div>

</div>

---
```

### 4-2. ハイライトボックス（highlight-box）

重要なメッセージやキーポイントを目立たせる。

```markdown
---

# 今期の最重要目標

<div class="highlight-box">

## ARR 10億円の達成

すべての施策はこの目標に紐づく。
チーム全員がこの数字を意識して行動する。

</div>

具体的なアクションプランは次ページ以降で説明する。

---
```

### 4-3. 情報ボックス（info-box）

補足情報や注意事項を枠で囲んで表示する。

```markdown
---

# API仕様の変更について

v2.0ではレスポンス形式が変更される。

<div class="info-box">

**注意**: v1.0のエンドポイントは2026年6月末で廃止予定。
早めの移行をお願いします。

</div>

<div class="info-box warning">

**影響範囲**: 全APIクライアントが対象。
移行ガイドを別途配布する。

</div>

---
```

### 4-4. 比較パネル（comparison-panels）

2つの選択肢や状態を並べて比較する。

```markdown
---

<!-- _class: comparison-panels -->

# アーキテクチャの選択肢

<div class="panel current">

## 現行: モノリス

- デプロイが単純
- チーム間の依存が大きい
- スケーリングが困難
- テストに時間がかかる

</div>

<div class="panel proposed">

## 提案: マイクロサービス

- 独立したデプロイが可能
- チームの自律性が高い
- 個別にスケール可能
- テストが高速

</div>

---
```

---

## 5. 比較・テーブル系

### 5-1. 比較テーブル（comparison-table）

複数項目を表形式で比較する。

```markdown
---

# ツール比較

| 項目 | ツールA | ツールB | ツールC |
|------|---------|---------|---------|
| 価格 | ¥10,000/月 | ¥25,000/月 | ¥8,000/月 |
| ユーザー数 | 20名 | 無制限 | 10名 |
| API連携 | あり | あり | なし |
| サポート | メール | 電話+チャット | メール |
| 評価 | ★★★☆☆ | ★★★★★ | ★★★☆☆ |

**推奨: ツールB**（コスト対効果が最も高い）

---
```

### 5-2. Pros/Cons（pros-cons）

メリットとデメリットを並べて表示する。

```markdown
---

<!-- _class: pros-cons -->

# リモートワーク制度の評価

<div class="pros">

## メリット

- 通勤時間の削減
- 集中できる環境の確保
- 採用範囲の拡大
- オフィスコストの削減

</div>

<div class="cons">

## デメリット

- コミュニケーションコストの増加
- チームの一体感が薄れやすい
- 新人の育成が難しい
- セキュリティリスクの増加

</div>

---
```

### 5-3. 機能マトリクス（feature-matrix）

機能の有無をマトリクスで表現する。

```markdown
---

<!-- _class: feature-matrix -->

# プラン別機能一覧

| 機能 | Free | Pro | Enterprise |
|------|:----:|:---:|:----------:|
| 基本機能 | o | o | o |
| API連携 | - | o | o |
| カスタムドメイン | - | o | o |
| SSO | - | - | o |
| 専任サポート | - | - | o |

---
```

---

## 6. 画像・背景系

### 6-1. 背景画像（image-bg）

スライド全体に背景画像を敷く。テキストにはオーバーレイを適用する。

```markdown
---

<!-- _class: image-bg -->

![bg brightness:0.4](./images/conference.jpg)

# グローバル展開の現在地

2026年、3つの新市場に参入

---
```

### 6-2. サイド画像（side-image）

スライドの左右どちらかに画像を配置する。

```markdown
---

<!-- _class: side-image -->

![bg left:40%](./images/team-photo.jpg)

# チーム紹介

私たちは東京を拠点に活動する
12名のプロダクトチームです。

- エンジニア: 6名
- デザイナー: 2名
- PM: 2名
- QA: 2名

---
```

### 6-3. 画像ギャラリー（image-gallery）

複数の画像を並べて表示する。

```markdown
---

<!-- _class: image-gallery -->

# プロダクトのスクリーンショット

<div class="gallery">

![ダッシュボード画面](./images/screenshot-1.png)
![設定画面](./images/screenshot-2.png)
![レポート画面](./images/screenshot-3.png)

</div>

各画面のデザインは統一されたデザインシステムに基づく。

---
```

---

## 7. 特殊レイアウト系

### 7-1. 引用ブロック（quote-block）

印象的な引用やメッセージを大きく表示する。

```markdown
---

<!-- _class: quote-block -->

> 計測できないものは改善できない。

**ピーター・ドラッカー**

この原則に基づき、すべてのKPIを可視化する。

---
```

### 7-2. コードスライド（code-slide）

ソースコードやコマンドを表示する。

```markdown
---

<!-- _class: code-slide -->

# APIリクエストの例

```bash
curl -X POST https://api.example.com/v2/users \
  -H "Authorization: Bearer ${TOKEN}" \
  -H "Content-Type: application/json" \
  -d '{
    "name": "坂下太郎",
    "email": "sakashita@example.com"
  }'
```

レスポンスはJSON形式で返却される。
ステータスコード `201` で作成成功を示す。

---
```

### 7-3. タイムライン（timeline）

時系列の計画や履歴を表現する。

```markdown
---

<!-- _class: timeline -->

# プロジェクトロードマップ

<div class="timeline">

<div class="event done">
<span class="date">2026年1月</span>
<span class="title">要件定義完了</span>
</div>

<div class="event done">
<span class="date">2026年2月</span>
<span class="title">設計・プロトタイプ</span>
</div>

<div class="event current">
<span class="date">2026年3月</span>
<span class="title">開発フェーズ1</span>
</div>

<div class="event upcoming">
<span class="date">2026年4月</span>
<span class="title">ベータリリース</span>
</div>

<div class="event upcoming">
<span class="date">2026年5月</span>
<span class="title">正式リリース</span>
</div>

</div>

---
```

---

## パターン選択ガイド

| 伝えたい内容 | 推奨パターン |
|-------------|-------------|
| プレゼンの導入 | title-slide |
| セクションの区切り | section-slide |
| 数値の成果を見せたい | metric-card |
| 2つの選択肢を比較 | pros-cons, comparison-panels |
| 複数項目を比較 | comparison-table, feature-matrix |
| 手順を説明 | numbered-steps |
| 重要メッセージを強調 | highlight-box, quote-block |
| 写真やスクリーンショットを見せたい | side-image, image-gallery |
| コードを共有 | code-slide |
| スケジュールを示す | timeline |
| プレゼンの締めくくり | thank-you |
