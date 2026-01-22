#!/bin/bash
# プロジェクトルートで実行: bash scripts/organize-assets.sh
set -e
cd "$(dirname "$0")/.."

LOGOS="assets/images/logos"
STAFF="assets/images/staff"
REFORM="assets/images/reform"
CHARS="assets/images/characters"
OTHER="assets/images/other"
KITCHEN="assets/images/kitchen"
VIDEOS="assets/videos"
JS="assets/js"

mkdir -p "$LOGOS" "$STAFF" "$REFORM" "$CHARS" "$OTHER" "$KITCHEN" "$VIDEOS"

# ロゴ
for f in c21_black_logo.png c21_gold_logo.png century21_logo_123.png century21_logo_black.png \
  century21_logo_black_side.png century21_logo_gold_side.png century21logo_black_text.png \
  century21logo_black_top.png century21logo_black_up.png century21logo_gold_text.png \
  century21logo_gold_top.png century21logo_gold.png "センチュリー21ホームマート.jpg"; do
  [ -f "$f" ] && mv "$f" "$LOGOS/"
done

# スタッフ
for f in inui.jpeg mika.jpeg takuma.jpeg hina.jpeg imadu.JPG daikoku.JPG "IMG_9624.jpeg"; do
  [ -f "$f" ] && mv "$f" "$STAFF/"
done

# リフォーム before/after
for f in kitchen_before.jpg kitchen_after.jpg bathroom_before.jpg bathroom_after.jpg \
  washroom_before.jpg washroom_after.jpg toilet_before.jpg toilet_after.jpg; do
  [ -f "$f" ] && mv "$f" "$REFORM/"
done

# キャラクター・採用
for f in 01_shinchan.jpg 02_shinchan.jpg 03_shinchan.jpg 04_shinchanpng\ \(1\).jpg 05_shinchan.jpg \
  06_shinchan\ \(1\).jpg 07_shinchan.jpg 08_shinchan.jpg 09_shinchan\ \(1\).jpg 10_shinchan.jpg \
  11_shinchan.jpg 12_shinchan.jpg 13_shiro.jpg 14_shiro.jpg 15_shiro.jpg 16_shiro.jpg 17_shiro.jpg \
  18_shiro.jpg "19_family改.jpg" reform_c21.JPG top_shain.JPG incentive.jpeg kigyo.JPG top_start.jpeg; do
  [ -f "$f" ] && mv "$f" "$CHARS/"
done

# ヒーロー・トップ用
for f in 1.png 2.png 3.png; do
  [ -f "$f" ] && mv "$f" "$OTHER/"
done

# オフィス・その他
for f in bar.JPG tempo_kudara.JPG tempo_top.JPG "tempo_live.jpg.jpg" office_monitor.JPG \
  model_1.JPG model_2.JPG model_3.JPG model_4.JPG model_5.JPG start_1.JPG start_2.JPG start_3.JPG \
  urico_milk.jpg; do
  [ -f "$f" ] && mv "$f" "$OTHER/"
done

# キッチン（ルートの日本語ファイル名）
for f in キッチン_4:3_1.jpg キッチン_4:3_2.jpg キッチン_4:3_3.jpg キッチン_4:3_4.jpg キッチン_4:3_5.jpg \
  キッチン_4:3_6.jpg キッチン_4:3_7.jpg キッチン_4:3_8.jpg キッチン_4:3_9.jpg キッチン_4:3_10.jpg \
  キッチン_4:3_11.jpg キッチン_4:3_12.jpg キッチン_4:3_13.jpg キッチン_4:3_14.jpg キッチン_4:3_15.jpg; do
  [ -f "$f" ] && mv "$f" "$KITCHEN/" 2>/dev/null || true
done

# 動画
for f in 2025fear.mp4 2025gold_jacket.mp4 3top_30.mp4 food_15.mp4 goldjacket_kusanagi.mp4 \
  home15.mp4 homemart_cm.mov homemart_cm1.mp4 kure_family.mp4 "videoplayback (3).mp4"; do
  [ -f "$f" ] && mv "$f" "$VIDEOS/"
done

# JavaScript（マンションDB・アプリ）
for f in mansion_db.js mansion_db_part1.js mansion_db_part2.js mansion_db_part3.js mansion_db_part4.js mansion_db_part5.js mansion_app.js; do
  [ -f "$f" ] && mv "$f" "$JS/"
done

# ルートに残った画像を other に移動
while IFS= read -r -d '' f; do
  [ -n "$f" ] && mv "$f" "$OTHER/"
done < <(find . -mindepth 1 -maxdepth 1 -type f \( -name '*.jpg' -o -name '*.JPG' -o -name '*.jpeg' -o -name '*.png' \) -print0 2>/dev/null)

echo "Done. Assets organized."
