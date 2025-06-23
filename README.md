# ディレクトリプロジェクトコード統一管理

このリポジトリは、複数のPC間でディレクトリ整理時に使用するプロジェクトコードを統一管理するためのものです。

## 目的
- 複数のPC間でのディレクトリ構造の一貫性を保つ
- プロジェクトコードの重複を防ぐ
- 新規プロジェクト作成時の命名規則を統一する

## 使用方法

### 初回セットアップ（別のPCで）
```bash
git clone [このリポジトリのURL]
cd directory-project-codes
```

### プロジェクトコード確認
`project-codes.md`ファイルを参照してください。

### 更新時の手順
1. 新しいプロジェクトを作成したら、`project-codes.md`を更新
2. 変更をコミット＆プッシュ
```bash
git add project-codes.md
git commit -m "Add new project code: XX###"
git push origin main
```

3. 他のPCでは、最新の状態を取得
```bash
git pull origin main
```

## ファイル構成
- `README.md`: このファイル（使用方法の説明）
- `project-codes.md`: プロジェクトコード一覧と命名規則
- `organize-desktop.sh`: デスクトップ整理用スクリプト（オプション）

## 注意事項
- プロジェクトコードは一度割り当てたら変更しない
- 削除したプロジェクトのコードも再利用しない
- 必ず最新の`project-codes.md`を確認してから新規プロジェクトを作成する