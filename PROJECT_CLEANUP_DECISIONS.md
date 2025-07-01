# プロジェクト整理判断記録

## AD系（アーカイブ）
- **AD001_SSD_Migration_Archive** → ✅ 残す

## DN系（ドーパミン/実験関連）
- **DN001_PETH_GRABDA** [GitHub] → ✅ 残す（PETH解析・GRABDAセンサー関連）
- **DN001_Programs** [D] → ✅ 残す（実験プログラム集）
- **DN001_TF** → ✅ 残す（テーパードファイバー研究）
- **DN002_Learningrate** → ✅ 残す
- **DN003_MemoryandReward** → ✅ 残す
- **DN004_research-shared-toolkit** → ❓ 削除候補
  - 説明: 研究用共有ツールキット（MATLAB）
  - 最終更新: 2025-06-12
  - 判断: DN001_Programsと内容重複の可能性。確認後削除検討

## OT系（その他）
- **OT000_origin** → ❓ 統合候補
  - 説明: なし
  - 最終更新: 2025-05-07
  - 判断: 内容不明。初期テスト用？
  
- **OT000_private-sandbox** → ❓ 統合候補
  - 説明: Personal code and experimental playground
  - 最終更新: 2025-04-29（作成直後から更新なし）
  - 判断: DN001_Programsまたは新規「実験・テスト用」カテゴリに統合

## 提案
1. **DN004**: DN001_Programsと内容を確認し、重複なら削除
2. **OT000_origin**: 内容を確認し、有用なら適切なプロジェクトに統合
3. **OT000_private-sandbox**: DN系またはWD系の実験用ディレクトリに統合