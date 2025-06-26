# プロジェクトコード一覧

このドキュメントは、デスクトップディレクトリで使用されているプロジェクトコードの統一管理用です。
プロジェクトコードは「英字2文字 + 3桁数字」の形式で統一されています。

## プロジェクトコード規則
- 形式: `XX###_プロジェクト名`
- XX: 英字2文字（プロジェクトカテゴリ）
- ###: 3桁数字（001から始まる連番）

## 現在のプロジェクトコード一覧

### AI - 人工知能・機械学習関連
- **AI001_能動的推論**: 能動的推論に関する研究プロジェクト

### DM - 医学研究（Disease/Medical）
- **DM001_認知症研究**: 認知症に関する研究プロジェクト

### MD - 医師業務関連
- **MD001_医師業務**: 医師業務に関するプロジェクト

### SC - 奨学金・スカラーシップ関連
- **SC001_奨学金**: 奨学金申請・管理に関するプロジェクト

### ST - 留学関連（Study abroad）
- **ST001_海外留学**: 海外留学準備・申請に関するプロジェクト

### WD - Web Development（ウェブ開発）
- **WD102_NeedsExplorer**: ニーズ探索・要件定義支援ツール
- **WD103_EmployeeSimulation**: 従業員シミュレーションツール
- **WD104_AssetManagement**: 資産管理システム
- **WD105_ClaudeTools**: Claude関連ツール・ログビューアー
- **WD106_ChatGPT_Log_Converter**: ChatGPT対話ログ→Obsidianマークダウン変換ツール
- **WD107_PACVisualizer**: PAC（Phase-Amplitude Coupling）可視化ツール
- **WD108_directory-project-codes**: プロジェクトコード管理システム
- **WD109_brain-3d-visualization**: 3Dドーパミン神経系可視化（React/Three.js）
- **WD110_dopamine-flow-sankey**: ドーパミン経路フロー図（Vue.js/D3.js）
- **WD111_brain-activity-heatmap**: 脳活動時空間ヒートマップ（FastAPI/Plotly）
- **WD112_academic-website**: 学術用ウェブサイト（academic-images含む）
- **WD113_obsidian-sync**: DellとSurfaceでObsidian連携

### YA - 特定研究プロジェクト
- **YA001_頭部外傷研究**: 頭部外傷に関する研究プロジェクト
- **YA002_MSAハンチントン研究**: MSA（多系統萎縮症）・ハンチントン病研究プロジェクト

### AD - Administration（事務・管理）
- **AD001_SSD_Migration_Archive**: SSD移行用アーカイブ（個人文書等）

### OT - Others（その他）
- **OT000_Experimental**: 実験・テスト・練習用レポジトリ（分類未定のものを含む）

### 注意事項
- **PC2025**: プロジェクトコードではない（当直中B/TRACS/TRACS template/内に存在する別の項目）

## 新規プロジェクト作成ガイドライン

1. 既存のカテゴリに該当する場合は、そのカテゴリの次の番号を使用
2. 新しいカテゴリが必要な場合は、意味のある英字2文字を選択
3. 番号は必ず001から開始し、連番で管理
4. ディレクトリ名は必ず「コード_プロジェクト名」の形式とする

## 推奨カテゴリ（今後の拡張用）
- **RE**: Research（一般研究）
- **ED**: Education（教育関連）
- **PB**: Publication（論文・出版物）
- **PR**: Presentation（発表資料）
- **AD**: Administration（事務・管理）
- **FN**: Finance（財務・資金管理）
- **DN**: Department/Laboratory（研究室関連、既に使用中）

## 欠番管理

### WDカテゴリ
- **WD100-WD101**: 予約済み（将来の基幹プロジェクト用）

### その他のカテゴリ
- 各カテゴリで欠番が発生した場合、理由を記載すること

## 運用ルール

1. 新しいプロジェクトを作成する際は、必ずこのドキュメントを更新する
2. プロジェクトコードは一度割り当てたら変更しない
3. プロジェクトが完了しても、コードは再利用しない
4. 複数のPCで同期する際は、このドキュメントを参照して統一性を保つ

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
