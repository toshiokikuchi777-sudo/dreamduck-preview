#!/usr/bin/env bash
# Blender export → サイト反映を一発で行うスクリプト
# 使い方:  cd ~/Desktop/dreamduck-preview && ./update.sh
# 任意:    ./update.sh /path/to/another.glb  (別glbを差し替えたい場合)

set -euo pipefail

SRC_DEFAULT="$HOME/Dropbox/My Mac (kikuchitoshio-no-iMac-2.local)/Desktop/20260517dreamDuck2/DreamDuck4.glb"
SRC="${1:-$SRC_DEFAULT}"
DEST="./dreamduck-v01.glb"

if [[ ! -f "$SRC" ]]; then
  echo "ERROR: 元glbが見つかりません: $SRC" >&2
  exit 1
fi

cd "$(dirname "$0")"

cp "$SRC" "$DEST"
TS=$(date +%Y%m%d%H%M)
sed -i.bak -E "s|dreamduck-v01\.glb(\?v=[0-9]+)?|dreamduck-v01.glb?v=${TS}|g" index.html
rm -f index.html.bak

git add dreamduck-v01.glb index.html
if git diff --cached --quiet; then
  echo "変更なし。pushスキップ。"
  exit 0
fi

git -c commit.gpgsign=false commit -m "Update v01 model (rev ${TS})"
git push origin main

cat <<EOM

  ✅ 反映完了
  URL: https://toshiokikuchi777-sudo.github.io/dreamduck-preview/
  GitHub Pages のビルドに1〜3分かかります。
  ブラウザで確認するときは Cmd+Shift+R でスーパーリロード推奨。

EOM
