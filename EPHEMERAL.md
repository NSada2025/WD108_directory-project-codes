# エフェメラル開発環境運用ガイド

このドキュメントは、WD108プロジェクトコード管理システムをエフェメラル（一時的・使い捨て）開発環境で運用するためのガイドです。

## エフェメラル開発環境とは

- **一時的**: 作業開始時に作成し、終了時に破棄
- **クリーン**: 常に新鮮な環境で開始
- **安全**: ローカルPCにデータを残さない
- **再現可能**: 設定ファイルから同一環境を再構築

## 対応プラットフォーム

### 1. Gitpod
[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/NSada2025/WD108_directory-project-codes)

```bash
# Gitpodで開く
https://gitpod.io/#https://github.com/NSada2025/WD108_directory-project-codes
```

### 2. GitHub Codespaces
1. GitHubリポジトリページで「Code」ボタンをクリック
2. 「Codespaces」タブを選択
3. 「Create codespace on main」をクリック

## ワークフロー

### 1. 環境の起動
```bash
# Gitpod/Codespacesが自動的に環境をセットアップ
# .gitpod.yml または .devcontainer/devcontainer.json に基づいて構築
```

### 2. 作業の実施
```bash
# プロジェクトリストの確認
./scripts/list-projects.sh

# リポジトリ同期状況の確認
./scripts/sync-projects.sh

# README.mdの編集
code README.md
```

### 3. 変更のコミット
```bash
# 変更を確認
git status

# すべての変更をステージング
git add .

# コミット
git commit -m "Update project codes: Add WD121"

# プッシュ
git push origin main
```

### 4. 環境のクリーンアップ
```bash
# クリーンアップスクリプトの実行
./scripts/cleanup.sh

# 環境を閉じる（ブラウザタブを閉じるだけ）
```

## ベストプラクティス

### ✅ DO（推奨事項）

1. **頻繁にコミット**: 作業の区切りごとにコミット
2. **明確なコミットメッセージ**: 何を変更したか明記
3. **プッシュを忘れない**: 環境を閉じる前に必ずプッシュ
4. **スクリプトを活用**: 提供されたスクリプトで効率化

### ❌ DON'T（避けるべきこと）

1. **長時間の放置**: 30分以上放置すると自動停止
2. **ローカル保存に依存**: すべてGitHubで管理
3. **大容量ファイル**: Git LFSを使用していない場合は100MB以下
4. **機密情報の直接記載**: 環境変数やシークレットを使用

## トラブルシューティング

### 環境が起動しない
```bash
# .gitpod.yml または devcontainer.json の構文をチェック
# GitHubの設定でGitpod/Codespacesが有効か確認
```

### 変更が失われた
```bash
# reflogで履歴を確認
git reflog

# 必要に応じて復元
git checkout <commit-hash>
```

### プッシュできない
```bash
# 認証状態を確認
gh auth status

# 必要に応じて再認証
gh auth login
```

## セキュリティ考慮事項

1. **公開リポジトリ**: 機密情報を含めない
2. **環境変数**: シークレットはGitHub Secretsで管理
3. **アクセス制御**: 必要に応じてプライベートリポジトリ化
4. **監査ログ**: GitHubの監査ログで活動を追跡

## 今後の拡張

- [ ] GitHub Actionsでの自動バリデーション
- [ ] プロジェクトコード自動採番機能
- [ ] 複数リポジトリ一括更新スクリプト
- [ ] Terraformでのインフラ管理

---

**最終更新**: 2025年7月19日  
**エフェメラル環境バージョン**: v1.0