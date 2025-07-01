# プロジェクト同期状況詳細

**最終更新**: 2025-07-01

## 同期状況サマリー

| カテゴリ | 件数 | 割合 |
|----------|------|------|
| 完全同期 | 9 | 33% |
| 名前不一致 | 5 | 19% |
| GitHubのみ | 12 | 44% |
| Dドライブのみ | 11 | - |
| **合計** | **26** | **100%** |

## プロジェクトコードなしリポジトリ（8個）

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

## Dドライブのみに存在するディレクトリ（11個）

### プロジェクトコード付き（要GitHub作成）
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

### プロジェクトコードなし（要改名）
| ディレクトリ名 | 推奨アクション |
|---------------|----------------|
| 00_Obsidian | DN005_Obsidian-Notesに改名 |
| 使用例_松本_20250512 | DN006_Matsumoto-Exampleに改名 |
| 矯正 | DN007_Orthodontics-Researchに改名 |

## アクションプラン

### 1. 即時対応項目
- [ ] 名前不一致の5件を統一（WD108-111, WD117）
- [ ] 優先度「高」のDドライブプロジェクトをGitHubへ

### 2. 中期対応項目
- [ ] プロジェクトコードなしリポジトリの整理
- [ ] 重複機能の統合検討

### 3. 長期対応項目
- [ ] 自動同期スクリプトの作成
- [ ] 定期的な同期状況レビュー