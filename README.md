# センチュリー21ホームマート 公式サイト

奈良・大阪エリアの不動産売買仲介、買取再販、リフォームまでワンストップでサービスを提供するセンチュリー21ホームマートの公式ウェブサイトです。

## プロジェクト構成

```
/
├── assets/
│   ├── images/        # 画像ファイル（ロゴ、スタッフ、リフォーム、キャラクターなど）
│   ├── videos/        # 動画ファイル
│   ├── js/            # JavaScriptファイル
│   └── site.css       # スタイルシート
├── company/           # 会社案内ページ
├── buy/               # 購入関連ページ
├── sell/              # 売却関連ページ
├── properties/        # 物件情報ページ
├── partials/          # 共通パーツ（ヘッダー、フッター）
└── scripts/           # 整理用スクリプト
```

## 開発

### ローカル開発サーバー

```bash
# Node.js (npx serve)
npx serve . -p 3000

# Python
python -m http.server 8000
```

### ファイル整理

新しい画像ファイルを追加した場合、以下のスクリプトで自動整理できます：

```bash
bash scripts/organize-assets.sh
```

## デプロイ

このプロジェクトはVercelでホスティングされています。

## ライセンス

© 2025 Century21 HomeMart. All Rights Reserved.
