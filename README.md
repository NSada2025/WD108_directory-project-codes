# ディレクトリプロジェクトコード統一管理システム

複数のPC間でディレクトリ整理時に使用するプロジェクトコードを統一管理し、効率的なリソース配分を支援するシステムです。

## プロジェクト同期状況

### プロジェクトコード付きリポジトリ（18個）

| GitHub | Dドライブ | 状態 | 推奨アクション |
|--------|-----------|------|---------------|
| DN001_PETH_GRABDA | - | GitHubのみ | Dドライブへクローン |
| DN001_TF | DN001_TF | 両方に存在 | - |
| DN002_Learningrate | DN002_Learningrate | 両方に存在 | - |
| DN004_research-shared-toolkit | - | GitHubのみ | Dドライブへクローン |
| WD102_NeedsExplorer | WD102_NeedsExplorer | 両方に存在 | - |
| WD103_EmployeeSimulation | WD103_EmployeeSimulation | 両方に存在 | - |
| WD105_Claude-Code-Communication | WD105_Claude-Code-Communication | 両方に存在 | - |
| WD108_directory-project-codes | directory-project-codes | 名前不一致 | ディレクトリ名統一 |
| WD109_brain-3d-visualization | WD109 | 名前不一致 | ディレクトリ名統一 |
| WD110_dopamine-flow-sankey | WD110 | 名前不一致 | ディレクトリ名統一 |
| WD111_brain-activity-heatmap | WD111 | 名前不一致 | ディレクトリ名統一 |
| WD112_academic-website | WD112_academic-website | 両方に存在 | - |
| WD113_obsidian-sync | WD113_obsidian-sync | 両方に存在 | - |
| WD114_tmux-multiagent-system | WD114_tmux-multiagent-system | 両方に存在 | - |
| WD115_GitHubReviewMastery | - | GitHubのみ | Dドライブへクローン |
| WD117 | WD117_orthodontic-treatment-system | 名前不一致 | リポジトリ名統一 |
| OT000_origin | - | GitHubのみ | Dドライブへクローン |
| OT000_private-sandbox | - | GitHubのみ | Dドライブへクローン |

## 目的

- **一貫性管理**: 複数のPC間でのディレクトリ構造の一貫性を保つ
- **重複防止**: プロジェクトコードの重複を防ぐ
- **命名規則統一**: 新規プロジェクト作成時の命名規則を統一する

## 使用方法

### 初回セットアップ（別のPCで）
```bash
git clone https://github.com/NSada2025/WD108_directory-project-codes.git
cd WD108_directory-project-codes
```

### 2. プロジェクトコード確認

```bash
# プロジェクトコード一覧の確認
cat project-codes.md
```


### 4. 更新時の手順

1. **プロジェクトコード更新**
   - 新しいプロジェクトを作成したら、`project-codes.md`を更新

2. **変更のコミット＆プッシュ**
```bash
git add project-codes.md
git commit -m "Add new project code: XX###"
git push origin main
```

3. **他のPCで同期**
```bash
git pull origin main
```

## ファイル構成

| ファイル | 説明 |
|---------|------|
| `README.md` | このファイル（使用方法の説明） |
| `project-codes.md` | プロジェクトコード一覧とトークン消費特性分類 |
| `SYNC_STATUS.md` | GitHub/Dドライブ間の同期状況管理 |
| `organize-desktop.sh` | デスクトップ整理用スクリプト |

## 現在進行中プロジェクト（2025年7月1日更新）

### アクティブプロジェクト

| プロジェクト | 説明 |
|-------------|------|
| **WD103_EmployeeSimulation** | React/TypeScript従業員シミュレーション |
| **WD112_academic-website** | 学術ウェブサイト（Python/SCSS） |
| **WD115_GitHubReviewMastery** | GitHubレビュー技術習得 |
| **WD116_MEDx-AutoMapper** | MEDxファイル処理自動化 |
| **DN001_TF** | テーパードファイバー研究（MATLAB解析システム） |

## 注意事項

1. **コード管理**
   - プロジェクトコードは一度割り当てたら変更しない
   - 削除したプロジェクトのコードも再利用しない

2. **作業前確認**
   - 必ず最新の`project-codes.md`を確認してから新規プロジェクトを作成する

## マルチエージェント協調対応

このシステムは[WD114_tmux-multiagent-system](https://github.com/NSada2025/WD114_tmux-multiagent-system)と連携し、複数エージェントによる効率的なプロジェクト管理をサポートします。

### エージェント別推奨作業

| エージェント | 役割 |
|-------------|------|
| **PRESIDENT** | プロジェクト統括・アーキテクチャ設計 |
| **Boss1-3** | 標準開発タスクの管理 |
| **Worker1-9** | ドキュメント作成・簡易タスク実行 |

## サポート・連携

### 関連プロジェクト
- **WD105_ClaudeTools**: ログ分析・デバッグ支援
- **WD113_obsidian-sync**: ドキュメント同期管理
- **WD114_tmux-multiagent-system**: マルチエージェント協調

### 技術相談
各プロジェクトの技術的な問題については、該当するプロジェクトリポジトリのIssuesをご利用ください。

---

**最終更新**: 2025年7月1日  
**管理者**: NSada2025  
**バージョン**: v2.2（同期状況可視化版）