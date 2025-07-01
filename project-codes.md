# プロジェクトコード一覧

**最終更新**: 2025-07-01

デスクトップディレクトリで使用されているプロジェクトコードの統一管理ドキュメントです。

## 📐 プロジェクトコード規則

| 項目 | 説明 | 例 |
|------|------|----|
| **形式** | `XX###_プロジェクト名` | WD108_directory-project-codes |
| **XX** | 英字2文字（プロジェクトカテゴリ） | WD, DN, AD, OT |
| **###** | 3桁数字（001から始まる連番） | 001, 002, 103 |

## 📊 トークン消費特性による分類

| 分類 | トークン消費 | 特徴 | 例 |
|------|------------|------|----|
| 🔴 **高** | >10K tokens/session | 複雑なコーディング、大規模デプロイ、アーキテクチャ設計 | WD103, DN001 |
| 🟡 **中** | 1K-10K tokens/session | 標準的な開発、設定管理、データ分析 | WD112, DN002 |
| 🟢 **低** | <1K tokens/session | ドキュメント作成、簡単な修正、情報収集 | WD108, AD001 |

---

## 📂 現在のプロジェクトコード一覧

### WD - Web Development（ウェブ開発）
- **WD102_NeedsExplorer** 🟡: ニーズ探索・要件定義支援ツール
- **WD103_EmployeeSimulation** 🔴: 従業員シミュレーションツール（React/TypeScript）
- **WD104_AssetManagement** 🟡: 資産管理システム
- **WD105_ClaudeTools** 🟡: Claude関連ツール・ログビューアー
- **WD106_ChatGPT_Log_Converter** 🟢: ChatGPT対話ログ→Obsidianマークダウン変換ツール
- **WD107_PACVisualizer** 🔴: PAC（Phase-Amplitude Coupling）可視化ツール
- **WD108_directory-project-codes** 🟢: プロジェクトコード管理システム
- **WD109_brain-3d-visualization** 🔴: 3Dドーパミン神経系可視化（React/Three.js）
- **WD110_dopamine-flow-sankey** 🔴: ドーパミン経路フロー図（Vue.js/D3.js）
- **WD111_brain-activity-heatmap** 🔴: 脳活動時空間ヒートマップ（FastAPI/Plotly）
- **WD112_academic-website** 🟡: 学術用ウェブサイト（SCSS、academic-images含む）
- **WD113_obsidian-sync** 🟢: DellとSurfaceでObsidian連携
- **WD114_tmux-multiagent-system** 🔴: tmuxマルチエージェント協調システム
- **WD115_GitHubReviewMastery** 🟡: GitHub PR レビュー＆トラブルシューティング技術習得プロジェクト
- **WD116_MEDx-AutoMapper** 🔴: MEDxファイル英字→数字対応表自動生成システム

### DN - Department/Laboratory（研究室関連）
- **DN001_TF** 🔴: 疋田研究室 テーパードファイバー（Tapered Fiber）高次脳機能研究プロジェクト
- **DN002_Learningrate** 🟡: 学習率に関する研究プロジェクト
- **DN004_research-shared-toolkit** 🟡: 研究用共有ツールキット（MATLAB）


### AD - Administration（事務・管理）
- **AD001_SSD_Migration_Archive** 🟢: SSD移行用アーカイブ（個人文書等）

### OT - Others（その他）
- **OT000_Experimental** 🟢: 実験・テスト・練習用レポジトリ（分類未定のものを含む）


---

## 🎯 プロジェクト管理情報

### 📊 同期状況サマリー

| ステータス | 対象 | 件数 |
|----------|------|------|
| ✅ **完全同期** | WD102-117、DN001_TF、DN002 | 9件 |
| ⚠️ **名前不一致** | WD108-111、WD117 | 5件 |
| ❌ **GitHubのみ** | DN001_PETH_GRABDA、DN004 | 12件 |
| 📁 **Dドライブのみ** | DN001_Programs、DN003、AD001、TM001-002 | 11件 |

### 📊 トークン消費特性別統計（2025年7月更新）

| トークン消費 | 件数 | 割合 | 主なプロジェクト |
|------------|------|------|----------------|
| 🔴 **高** (>10K) | 11 | 48% | WD103, WD107, WD109-111, WD114, WD116-117, DN001系 |
| 🟡 **中** (1K-10K) | 8 | 35% | WD102, WD104-105, WD112, WD115, DN002-003 |
| 🟢 **低** (<1K) | 4 | 17% | WD106, WD108, WD113, AD001 |
| **合計** | **23** | **100%** | - |

---


---

## 🆕 新規プロジェクト作成ガイドライン

### 手順

1. **カテゴリ選択**
   - 既存カテゴリに該当 → そのカテゴリの次の番号を使用
   - 新カテゴリが必要 → 意味のある英字2文字を選択

2. **番号割り当て**
   - 必ず001から開始
   - 連番で管理（欠番を作らない）

3. **ディレクトリ名**
   - 形式: `コード_プロジェクト名`
   - 例: `WD118_new-project-name`

4. **トークン消費特性分類**
   - 事前に予想して分類（🔴/🟡/🟢）
   - 適切なリソース配分を計画


## プロジェクトコード一覧の最新情報

最新のプロジェクト一覧と詳細は、本ファイルの「現在のプロジェクトコード一覧」セクションを参照してください。

### 📦 プロジェクトコードなしディレクトリ（今後整理予定）

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

## 📑 運用ルール

### 基本ルール

1. **ドキュメント更新**
   - 新プロジェクト作成時は必ずこのドキュメントを更新

2. **コード管理**
   - 一度割り当てたコードは変更しない
   - 完了プロジェクトのコードも再利用しない

3. **同期管理**
   - 複数PC間ではこのドキュメントを参照して統一性を保つ

4. **リソース計画**
   - トークン消費特性を考慮したプロジェクト計画を立てる

## 📅 更新履歴

| 日付 | 内容 |
|------|------|
| 2025-07-01 | 大規模整理実施（WD系同期完了、TM系新設、DN系整理、OT系削除） |
| 2025-07-01 | 可読性向上のためテーブル形式に改善 |