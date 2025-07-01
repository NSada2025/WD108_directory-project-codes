# プロジェクトコード整理状況 2025-07-01

## 実施内容

### 1. プロジェクトコード体系の確認
- AD: Archive/アーカイブ
- DN: Dopamine/実験関連
- WD: Web Development
- TM: Team/Multi-agent（新規追加）
- OT: その他（削除予定）

### 2. 重複・欠番の解消
- **WD101**: 欠番確認（GitHubにもDドライブにも存在しない）
- **WD105_ClaudeTools**: WD105_Claude-Code-Communicationに統合
- **DN001**: PETH_GRABDAとProgramsの2つが存在（両方維持）

### 3. 名前の統一
- WD109 → WD109_brain-3d-visualization
- WD110 → WD110_dopamine-flow-sankey
- WD111 → WD111_brain-activity-heatmap
- WD117_multiagent-system → WD117_orthodontic-treatment-system

### 4. GitHub/Dドライブの同期
#### 新規GitHubリポジトリ作成
- WD104_AssetManagement
- WD106_ChatGPT_Log_Converter
- WD107_PACVisualizer
- WD116_MATLABMEDxSupport

#### Dドライブへのクローン
- WD108_directory-project-codes
- WD115_GitHubReviewMastery

### 5. TM系の作成
- my-ai-team → TM001_my-ai-team
- tmux-claude-instructions → TM002_tmux-claude-instructions

## 現在の状況
- GitHubリポジトリ総数: 26個 → 30個（+4個）
- プロジェクトコード付き: 35個以上
- 両方に存在: ほぼ全て（同期完了）

## 残タスク
1. DN004をDN001に統合
2. OT000系の削除
3. TM系の統合（TM001とTM002を一つに）
4. 非プロジェクトコードディレクトリの整理
   - 00_Obsidian
   - 使用例_松本_20250512
   - 矯正
   - choiaca_pitch系
   - その他