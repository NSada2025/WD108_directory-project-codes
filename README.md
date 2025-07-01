# ディレクトリプロジェクトコード統一管理システム

複数のPC間でディレクトリ整理時に使用するプロジェクトコードを統一管理するシステムです。

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

### プロジェクトコードなしリポジトリ（8個）

| GitHub | Dドライブ | 状態 | 推奨アクション |
|--------|-----------|------|---------------|
| Nsada2025 | Nsada2025 | 両方に存在 | - |
| academic-images | - | GitHubのみ | WD112と統合検討 |
| claude-code-monitor | - | GitHubのみ | WD105と統合検討 |
| claude-code-multi-agent | - | GitHubのみ | WD114と統合検討 |
| doctor-funding-calendar | - | GitHubのみ | プロジェクトコード付与 |
| multiagent-neuroscience-system | - | GitHubのみ | DN系コード付与 |
| stable-baselines3 | - | GitHubのみ（fork） | - |
| yurukagaku | - | GitHubのみ | プロジェクトコード付与 |

### Dドライブのみに存在するディレクトリ（11個）

**プロジェクトコード付き（要GitHub作成）**

| ディレクトリ名 | 推奨アクション | 優先度 |
|---------------|----------------|--------|
| WD104_AssetManagement | GitHubリポジトリ作成 | 高 |
| WD106_ChatGPT_Log_Converter | GitHubリポジトリ作成 | 中 |
| WD107_PACVisualizer | GitHubリポジトリ作成 | 高 |
| WD116_MATLABMEDxSupport | GitHubリポジトリ作成 | 高 |
| DN001_Programs | DN001_PETH_GRABDAと統合検討 | 中 |
| DN003_MemoryandReward | GitHubリポジトリ作成 | 中 |
| TM001_my-ai-team | GitHubリポジトリ作成 | 低 |
| TM002_tmux-claude-instructions | GitHubリポジトリ作成 | 低 |

**プロジェクトコードなし（要改名）**

| ディレクトリ名 | 推奨アクション |
|---------------|----------------|
| 00_Obsidian | DN005_Obsidian-Notesに改名 |
| 使用例_松本_20250512 | DN006_Matsumoto-Exampleに改名 |
| 矯正 | DN007_Orthodontics-Researchに改名 |

## プロジェクトコード一覧

### プロジェクトコード規則

| 項目 | 説明 | 例 |
|------|------|----|
| **形式** | `XX###_プロジェクト名` | WD108_directory-project-codes |
| **XX** | 英字2文字（プロジェクトカテゴリ） | WD, DN, AD, OT |
| **###** | 3桁数字（001から始まる連番） | 001, 002, 103 |

### WD - Web Development（ウェブ開発）
- **WD102_NeedsExplorer**: ニーズ探索・要件定義支援ツール
- **WD103_EmployeeSimulation**: 従業員シミュレーションツール（React/TypeScript）
- **WD104_AssetManagement**: 資産管理システム
- **WD105_ClaudeTools**: Claude関連ツール・ログビューアー
- **WD106_ChatGPT_Log_Converter**: ChatGPT対話ログ→Obsidianマークダウン変換ツール
- **WD107_PACVisualizer**: PAC（Phase-Amplitude Coupling）可視化ツール
- **WD108_directory-project-codes**: プロジェクトコード管理システム
- **WD109_brain-3d-visualization**: 3Dドーパミン神経系可視化（React/Three.js）
- **WD110_dopamine-flow-sankey**: ドーパミン経路フロー図（Vue.js/D3.js）
- **WD111_brain-activity-heatmap**: 脳活動時空間ヒートマップ（FastAPI/Plotly）
- **WD112_academic-website**: 学術用ウェブサイト（SCSS、academic-images含む）
- **WD113_obsidian-sync**: DellとSurfaceでObsidian連携
- **WD114_tmux-multiagent-system**: tmuxマルチエージェント協調システム
- **WD115_GitHubReviewMastery**: GitHub PR レビュー＆トラブルシューティング技術習得プロジェクト
- **WD116_MEDx-AutoMapper**: MEDxファイル英字→数字対応表自動生成システム

### DN - Department/Laboratory（研究室関連）
- **DN001_TF**: 疋田研究室 テーパードファイバー（Tapered Fiber）高次脳機能研究プロジェクト
- **DN002_Learningrate**: 学習率に関する研究プロジェクト
- **DN004_research-shared-toolkit**: 研究用共有ツールキット（MATLAB）

### AD - Administration（事務・管理）
- **AD001_SSD_Migration_Archive**: SSD移行用アーカイブ（個人文書等）

### OT - Others（その他）
- **OT000_Experimental**: 実験・テスト・練習用レポジトリ（分類未定のものを含む）

### プロジェクトコードなしディレクトリ（今後整理予定）

| ディレクトリ名 | 推奨アクション | 提案コード |
|---------------|----------------|----------|
| 00_Obsidian | コード付与 | DN005_Obsidian-Notes |
| 使用例_松本_20250512 | コード付与 | DN006_Matsumoto-Example |
| 矯正 | コード付与 | DN007_Orthodontics-Research |
| choiaca_pitch系 | コード付与 | WD118_choiaca-pitch |
| academic-images（GitHub） | WD112と統合 | - |
| claude-code-monitor（GitHub） | WD105と統合 | - |
| claude-code-multi-agent（GitHub） | WD114と統合 | - |
| doctor-funding-calendar（GitHub） | コード付与 | AD002_funding-calendar |
| multiagent-neuroscience-system（GitHub） | コード付与 | DN008_multiagent-neuro |
| yurukagaku（GitHub） | コード付与 | WD119_yurukagaku |

## 使用方法

### 初回セットアップ（別のPCで）
```bash
git clone https://github.com/NSada2025/WD108_directory-project-codes.git
cd WD108_directory-project-codes
```

### 更新時の手順

1. **プロジェクトコード更新**
   - 新しいプロジェクトを作成したら、このREADME.mdを更新

2. **変更のコミット＆プッシュ**
```bash
git add README.md
git commit -m "Add new project code: XX###"
git push origin main
```

3. **他のPCで同期**
```bash
git pull origin main
```

## 新規プロジェクト作成ガイドライン

1. **カテゴリ選択**
   - 既存カテゴリに該当 → そのカテゴリの次の番号を使用
   - 新カテゴリが必要 → 意味のある英字2文字を選択

2. **番号割り当て**
   - 必ず001から開始
   - 連番で管理（欠番を作らない）

3. **ディレクトリ名**
   - 形式: `コード_プロジェクト名`
   - 例: `WD118_new-project-name`

## 運用ルール

1. **ドキュメント更新**
   - 新プロジェクト作成時は必ずこのドキュメントを更新

2. **コード管理**
   - 一度割り当てたコードは変更しない
   - 完了プロジェクトのコードも再利用しない

3. **同期管理**
   - 複数PC間ではこのドキュメントを参照して統一性を保つ

## アクションプラン

### 即時対応項目
- [ ] 名前不一致の5件を統一（WD108-111, WD117）
- [ ] 優先度「高」のDドライブプロジェクトをGitHubへ

### 中期対応項目
- [ ] プロジェクトコードなしリポジトリの整理
- [ ] 重複機能の統合検討

### 長期対応項目
- [ ] 自動同期スクリプトの作成
- [ ] 定期的な同期状況レビュー

---

**最終更新**: 2025年7月1日  
**管理者**: NSada2025  
**バージョン**: v3.0（統合版）