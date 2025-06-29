# ディレクトリプロジェクトコード統一管理システム

このリポジトリは、複数のPC間でディレクトリ整理時に使用するプロジェクトコードを統一管理し、効率的なリソース配分を支援するためのものです。

## 🎯 目的
- 複数のPC間でのディレクトリ構造の一貫性を保つ
- プロジェクトコードの重複を防ぐ
- 新規プロジェクト作成時の命名規則を統一する
- **NEW**: トークン消費特性に基づく効率的なプロジェクト管理

## 📊 トークン消費特性分類システム

### 🔴 高トークン消費プロジェクト（>10K tokens/session）
- 複雑なアーキテクチャ設計
- マルチファイル同時編集
- フレームワーク統合作業
- **例**: WD103_EmployeeSimulation, DN001_TF, WD116_MEDx-AutoMapper

### 🟡 中トークン消費プロジェクト（1K-10K tokens/session）
- 標準的な開発作業
- 設定ファイル管理
- データ分析タスク
- **例**: WD112_academic-website, WD115_GitHubReviewMastery

### 🟢 低トークン消費プロジェクト（<1K tokens/session）
- ドキュメント作成・更新
- 簡単な設定変更
- 情報収集・整理
- **例**: WD108_directory-project-codes, WD113_obsidian-sync

## 🚀 使用方法

### 初回セットアップ（別のPCで）
```bash
git clone https://github.com/NSada2025/WD108_directory-project-codes.git
cd WD108_directory-project-codes
```

### プロジェクトコード確認
`project-codes.md`ファイルを参照してください。各プロジェクトのトークン消費特性も併記されています。

### 効率的なプロジェクト計画
```bash
# 高トークン消費プロジェクトの事前確認
grep "🔴" project-codes.md

# 低トークン消費プロジェクトのバッチ処理候補
grep "🟢" project-codes.md
```

### 更新時の手順
1. 新しいプロジェクトを作成したら、`project-codes.md`を更新
2. トークン消費特性を分類（🔴🟡🟢）
3. 変更をコミット＆プッシュ
```bash
git add project-codes.md
git commit -m "Add new project code: XX### (Token: 🔴/🟡/🟢)"
git push origin main
```

4. 他のPCでは、最新の状態を取得
```bash
git pull origin main
```

## 📁 ファイル構成
- `README.md`: このファイル（使用方法の説明）
- `project-codes.md`: プロジェクトコード一覧とトークン消費特性分類
- `organize-desktop.sh`: デスクトップ整理用スクリプト（オプション）

## 💡 効率的リソース管理戦略

### セッション計画テンプレート
```
朝（高集中時間）  : 🔴 高トークンプロジェクト
午後（標準作業）  : 🟡 中トークンプロジェクト  
夕方（軽作業）   : 🟢 低トークンプロジェクト
```

### 並列作業推奨パターン
- **高効率型**: 🟢×3 + 🟡×1
- **標準型**: 🟡×2 + 🔴×1
- **集中型**: 🔴×1（専任作業）

## 📈 現在進行中プロジェクト（2025年6月29日更新）

### 🔥 アクティブプロジェクト
1. **WD103_EmployeeSimulation** 🔴 - React/TypeScript従業員シミュレーション
2. **WD112_academic-website** 🟡 - 学術ウェブサイト（Python/SCSS）  
3. **WD115_GitHubReviewMastery** 🟡 - GitHubレビュー技術習得
4. **WD116_MEDx-AutoMapper** 🔴 - MEDxファイル処理自動化
5. **DN001_TF** 🔴 - テーパードファイバー研究（MATLAB解析システム）

## ⚠️ 注意事項
- プロジェクトコードは一度割り当てたら変更しない
- 削除したプロジェクトのコードも再利用しない
- 必ず最新の`project-codes.md`を確認してから新規プロジェクトを作成する
- **NEW**: トークン消費特性を考慮したセッション計画を立てる

## 🔄 マルチエージェント協調対応

このシステムは[WD114_tmux-multiagent-system](https://github.com/NSada2025/WD114_tmux-multiagent-system)と連携し、複数エージェントによる効率的なプロジェクト管理をサポートします。

### エージェント別推奨作業
- **PRESIDENT**: 🔴高トークンプロジェクトの統括
- **Boss1-3**: 🟡中トークンプロジェクトの管理
- **Worker1-9**: 🟢低トークンプロジェクトの実行

## 📞 サポート・連携

### 関連プロジェクト
- **WD105_ClaudeTools**: ログ分析・デバッグ支援
- **WD113_obsidian-sync**: ドキュメント同期管理
- **WD114_tmux-multiagent-system**: マルチエージェント協調

### 技術相談
各プロジェクトの技術的な問題については、該当するプロジェクトリポジトリのIssuesをご利用ください。

---

**最終更新**: 2025年6月29日  
**管理者**: NSada2025  
**バージョン**: v2.0（トークン消費特性対応版）