# プロジェクトコード一覧 - 2025年6月更新版

このドキュメントは、デスクトップディレクトリで使用されているプロジェクトコードの統一管理用です。
プロジェクトコードは「英字2文字 + 3桁数字」の形式で統一されています。

## プロジェクトコード規則
- 形式: `XX###_プロジェクト名`
- XX: 英字2文字（プロジェクトカテゴリ）
- ###: 3桁数字（001から始まる連番）

## 📊 トークン消費特性による分類

### 🔴 高トークン消費プロジェクト（>10K tokens/session）
複雑なコーディング、大規模デプロイ、アーキテクチャ設計等

### 🟡 中トークン消費プロジェクト（1K-10K tokens/session）
標準的な開発、設定管理、データ分析等

### 🟢 低トークン消費プロジェクト（<1K tokens/session）
ドキュメント作成、簡単な修正、情報収集等

---

## 現在のプロジェクトコード一覧

### AI - 人工知能・機械学習関連
- **AI001_能動的推論** 🔴: 能動的推論に関する研究プロジェクト

### DM - 医学研究（Disease/Medical）
- **DM001_認知症研究** 🟡: 認知症に関する研究プロジェクト

### MD - 医師業務関連
- **MD001_医師業務** 🟢: 医師業務に関するプロジェクト

### SC - 奨学金・スカラーシップ関連
- **SC001_奨学金** 🟢: 奨学金申請・管理に関するプロジェクト

### ST - 留学関連（Study abroad）
- **ST001_海外留学** 🟢: 海外留学準備・申請に関するプロジェクト

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

### YA - 特定研究プロジェクト
- **YA001_頭部外傷研究** 🟡: 頭部外傷に関する研究プロジェクト
- **YA002_MSAハンチントン研究** 🟡: MSA（多系統萎縮症）・ハンチントン病研究プロジェクト

### AD - Administration（事務・管理）
- **AD001_SSD_Migration_Archive** 🟢: SSD移行用アーカイブ（個人文書等）

### OT - Others（その他）
- **OT000_Experimental** 🟢: 実験・テスト・練習用レポジトリ（分類未定のものを含む）

### 注意事項
- **PC2025**: プロジェクトコードではない（当直中B/TRACS/TRACS template/内に存在する別の項目）

---

## 🎯 プロジェクト管理情報

### 📊 GitHub/Dドライブ同期状況
- **完全同期**: WD102-117（WD101欠番）、DN001_TF、DN002
- **GitHubのみ**: DN001_PETH_GRABDA、DN004（統合予定）
- **Dドライブのみ**: DN001_Programs、DN003、AD001、TM001-002
- **名称統一済み**: WD109-111、WD117

### 📊 トークン消費特性別統計（2025年7月更新）

#### 🔴 高トークン消費（>10K tokens/session）
- **件数**: 11プロジェクト
- **例**: WD103, WD107, WD109-111, WD114, WD116-117, DN001系, TM001

#### 🟡 中トークン消費（1K-10K tokens/session）
- **件数**: 8プロジェクト
- **例**: WD102, WD104-105, WD112, WD115, DN002-003, TM002

#### 🟢 低トークン消費（<1K tokens/session）
- **件数**: 4プロジェクト
- **例**: WD106, WD108, WD113, AD001

---

## 💡 効率的リソース管理戦略

### 🎯 セッション計画
- **朝（高集中）**: 🔴高トークンプロジェクト（WD103, DN001_TF等）
- **午後（標準）**: 🟡中トークンプロジェクト（WD112, WD115等）
- **夕方（軽作業）**: 🟢低トークンプロジェクト（ドキュメント更新等）

### 🔄 並列作業推奨パターン
- **高効率**: 🟢×3 + 🟡×1 の組み合わせ
- **標準**: 🟡×2 + 🔴×1 の組み合わせ  
- **集中**: 🔴×1 の専任作業

### 📈 プロジェクト優先度マトリックス
```
           高緊急度    低緊急度
高重要度  | WD116     | WD103
         | DN001_TF  | WD115
---------|-----------|---------
低重要度  | WD112     | WD108
         | WD113     | OT000
```

---

## 新規プロジェクト作成ガイドライン

1. 既存のカテゴリに該当する場合は、そのカテゴリの次の番号を使用
2. 新しいカテゴリが必要な場合は、意味のある英字2文字を選択
3. 番号は必ず001から開始し、連番で管理
4. ディレクトリ名は必ず「コード_プロジェクト名」の形式とする
5. **新規**: トークン消費特性を事前に分類し、適切なリソース配分を計画

## 推奨カテゴリ（今後の拡張用）
- **RE**: Research（一般研究）
- **ED**: Education（教育関連）
- **PB**: Publication（論文・出版物）
- **PR**: Presentation（発表資料）
- **FN**: Finance（財務・資金管理）

## プロジェクトコード一覧の最新情報

最新のプロジェクト一覧と詳細は、本ファイルの「現在のプロジェクトコード一覧」セクションを参照してください。

### プロジェクトコードなしディレクトリ（今後整理予定）
- 00_Obsidian
- 使用例_松本_20250512  
- 矯正
- choiaca_pitch系
- academic-images（GitHub）
- claude-code-monitor（GitHub）
- claude-code-multi-agent（GitHub）
- doctor-funding-calendar（GitHub）
- multiagent-neuroscience-system（GitHub）
- yurukagaku（GitHub）

## 運用ルール

1. 新しいプロジェクトを作成する際は、必ずこのドキュメントを更新する
2. プロジェクトコードは一度割り当てたら変更しない
3. プロジェクトが完了しても、コードは再利用しない
4. 複数のPCで同期する際は、このドキュメントを参照して統一性を保つ
5. **新規**: トークン消費特性を考慮したプロジェクト計画を立てる

## 更新履歴
- 2025-06-23: 初版作成
- 2025-06-23: HKカテゴリをDNカテゴリに修正（別PCでの運用に合わせる）、PC2025を注意事項に移動
- 2025-06-24: WDカテゴリ（Web Development）追加、DN002_Learningrate追加、DN000からDN002へ番号修正
- 2025-06-24: DN002重複解消のためDN002_MemoryandRewardをDN003_MemoryandRewardへ変更
- 2025-06-24: WD105_ClaudeTools追加、欠番管理セクション追加、ルートディレクトリ散在ファイル整理
- 2025-06-24: WD106_ChatGPT_Log_Converter追加（ChatGPT対話ログ変換ツール）
- 2025-06-25: WD108-WD111追加（directory-project-codes、brain-viz、VueProject、PowerShellTools）
- 2025-06-25: DN001を DN001_TF に変更、WD109-111の説明を実際の内容に合わせて更新
- 2025-06-25: OTカテゴリ追加、WD112-113、DN004追加
- 2025-06-29: トークン消費特性分類追加、現在進行中プロジェクト更新、WD114-116追加、効率的リソース管理戦略追加
- **2025-07-01: 大規模整理実施（WD系同期完了、TM系新設、DN系整理、OT系削除）**