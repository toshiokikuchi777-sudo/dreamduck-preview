# DREAMDUCK - 形状確認用プレビュー

クライアント向け 3D 形状確認ページ。

## 公開先

GitHub Pages: https://toshiokikuchi777-sudo.github.io/dreamduck-preview/

## 内容

- `index.html` — model-viewer ベースの 3D ビューワー
- `dreamduck-v01.glb` — 確認用 3D モデル（Blender からエクスポート）
- `robots.txt` — 検索クローラ除外

## バージョン履歴

| ver | 日付 | 備考 |
|---|---|---|
| v01 | 2026-05-20 | 初回形状確認 |

## 更新方法

### ワンライナー（推奨）

Blenderからエクスポート後：

```bash
cd ~/Desktop/dreamduck-preview && ./update.sh
```

これだけで以下が自動で走る：
1. `~/Desktop/20260517dreamDuck2/DreamDuck4.glb` をサイトにコピー
2. `index.html` の `src` にタイムスタンプ付与（ブラウザキャッシュ回避）
3. commit & push（GitHub Pages 1〜3分で反映）

別のglbファイルを使う場合：
```bash
./update.sh /path/to/another.glb
```

### バージョン番号を更新する場合

大きな修正で v02 に進めるときは：
1. 新バージョンの .glb を `dreamduck-v02.glb` として追加
2. `index.html` の `src` を差し替えて commit & push
3. README のバージョン履歴に追記
