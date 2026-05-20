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

新バージョンの .glb を `dreamduck-vXX.glb` として追加し、`index.html` の `src` 属性を差し替えて commit & push。
