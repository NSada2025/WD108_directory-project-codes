#!/bin/bash

# デスクトップ整理支援スクリプト
# プロジェクトコードに基づいてディレクトリを整理します

DESKTOP_PATH="/mnt/c/Users/Owner/Desktop"
PROJECT_CODES_FILE="project-codes.md"

echo "=== デスクトップディレクトリ整理スクリプト ==="
echo ""

# プロジェクトコードパターンにマッチするディレクトリを検索
echo "現在のプロジェクトコードディレクトリ:"
find "$DESKTOP_PATH" -maxdepth 1 -type d -name "[A-Z][A-Z][0-9][0-9][0-9]*" | while read dir; do
    basename "$dir"
done | sort

echo ""
echo "プロジェクトコードに従っていないディレクトリ:"
find "$DESKTOP_PATH" -maxdepth 1 -type d ! -name ".*" ! -name "[A-Z][A-Z][0-9][0-9][0-9]*" ! -path "$DESKTOP_PATH" | while read dir; do
    basename "$dir"
done | sort

echo ""
echo "整理の提案:"
echo "1. プロジェクトコードに従っていないディレクトリには適切なコードを割り当ててください"
echo "2. project-codes.mdファイルを更新して、新しいコードを記録してください"
echo "3. 不要なファイルはArchiveフォルダに移動することを検討してください"

# 新規プロジェクトコード生成支援
echo ""
echo "新規プロジェクトコード生成支援:"
echo "既存のカテゴリ:"
grep -E "^### [A-Z]{2} -" "$PROJECT_CODES_FILE" 2>/dev/null | sed 's/### //' | sed 's/ -.*//'

echo ""
echo "使用可能な次の番号:"
for prefix in $(find "$DESKTOP_PATH" -maxdepth 1 -type d -name "[A-Z][A-Z][0-9][0-9][0-9]*" | sed 's/.*\/\([A-Z][A-Z]\)[0-9].*/\1/' | sort -u); do
    last_num=$(find "$DESKTOP_PATH" -maxdepth 1 -type d -name "${prefix}[0-9][0-9][0-9]*" | sed "s/.*\/${prefix}\([0-9]\{3\}\).*/\1/" | sort -n | tail -1)
    next_num=$(printf "%03d" $((10#$last_num + 1)))
    echo "${prefix}${next_num}"
done