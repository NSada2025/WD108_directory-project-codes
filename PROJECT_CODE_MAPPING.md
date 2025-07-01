# プロジェクトコード マッピング状況

## 命名規則
- **AD**: Archive/アーカイブ
- **DN**: Dopamine/実験関連（ドーパミン研究など）
- **WD**: Web Development（ウェブ開発）
- **TM**: Team/Multi-agent（チーム・マルチエージェント）※新規提案

## GitHub vs Dドライブ マッピング

### DN系（実験関連）
| GitHub | Dドライブ | 状態 |
|--------|-----------|------|
| DN001_PETH_GRABDA | - | GitHubのみ |
| DN001_TF | DN001_TF | 両方に存在 |
| - | DN001_Programs | Dドライブのみ |
| DN002_Learningrate | DN002_Learningrate | 両方に存在 |
| - | DN003_MemoryandReward | Dドライブのみ |
| DN004_research-shared-toolkit | - | GitHubのみ |

### WD系（Web Development）
| GitHub | Dドライブ | 状態 |
|--------|-----------|------|
| WD102_NeedsExplorer | WD102_NeedsExplorer | 両方に存在 |
| WD103_EmployeeSimulation | WD103_EmployeeSimulation | 両方に存在 |
| - | WD104_AssetManagement | Dドライブのみ |
| WD105_Claude-Code-Communication | WD105_Claude-Code-Communication | 両方に存在 |
| - | WD105_ClaudeTools | Dドライブのみ（重複） |
| - | WD106_ChatGPT_Log_Converter | Dドライブのみ |
| - | WD107_PACVisualizer | Dドライブのみ |
| WD108_directory-project-codes | - | GitHubのみ |
| WD109_brain-3d-visualization | WD109 | 両方に存在 |
| WD110_dopamine-flow-sankey | WD110 | 両方に存在 |
| WD111_brain-activity-heatmap | WD111 | 両方に存在 |
| WD112_academic-website | WD112_academic-website | 両方に存在 |
| WD113_obsidian-sync | WD113_obsidian-sync | 両方に存在 |
| WD114_tmux-multiagent-system | WD114_tmux-multiagent-system | 両方に存在 |
| WD115_GitHubReviewMastery | - | GitHubのみ |
| - | WD116_MATLABMEDxSupport | Dドライブのみ |
| WD117 | WD117_multiagent-system | 両方に存在（名前不一致） |

### その他（整理対象）
- my-ai-team → TM001_my-ai-team
- tmux-claude-instructions → TM002_tmux-claude-instructions
- 00_Obsidian → DN005_Obsidian-Notes
- 使用例_松本_20250512 → DN006_Matsumoto-Example
- 矯正 → DN007_Orthodontics-Research

## 整理方針
1. **欠番はない** - WD108, WD115はGitHubに存在
2. **重複解消** - WD105_ClaudeToolsをWD105_Claude-Code-Communicationに統合
3. **名前統一** - WD117のディレクトリ名をGitHubと統一
4. **新カテゴリ追加** - マルチエージェント系をTMカテゴリに移動
5. **非コード系の整理** - プロジェクトコードを付与