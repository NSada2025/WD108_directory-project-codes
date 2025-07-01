#!/bin/bash

# デスクトップ整理支援スクリプト
# プロジェクトコードに基づいてディレクトリを整理します
#
# 使用方法: ./organize-desktop.sh [オプション]
# オプション:
#   -d, --desktop PATH  デスクトップパスを指定（デフォルト: /mnt/c/Users/Owner/Desktop）
#   -f, --file FILE     プロジェクトコードファイルを指定（デフォルト: project-codes.md）
#   -h, --help          ヘルプを表示

# デフォルト設定
DESKTOP_PATH="/mnt/c/Users/Owner/Desktop"
PROJECT_CODES_FILE="project-codes.md"

# オプション解析
while [[ $# -gt 0 ]]; do
    case $1 in
        -d|--desktop)
            DESKTOP_PATH="$2"
            shift 2
            ;;
        -f|--file)
            PROJECT_CODES_FILE="$2"
            shift 2
            ;;
        -h|--help)
            echo "使用方法: $0 [オプション]"
            echo "オプション:"
            echo "  -d, --desktop PATH  デスクトップパスを指定"
            echo "  -f, --file FILE     プロジェクトコードファイルを指定"
            echo "  -h, --help          ヘルプを表示"
            exit 0
            ;;
        *)
            echo "不明なオプション: $1"
            echo "ヘルプを表示するには -h または --help を使用してください"
            exit 1
            ;;
    esac
done

# ヘッダー表示
echo "╔══════════════════════════════════════════════════════════╗"
echo "║          デスクトップディレクトリ整理スクリプト          ║"
echo "╚══════════════════════════════════════════════════════════╝"
echo ""
echo "対象ディレクトリ: $DESKTOP_PATH"
echo "コードファイル: $PROJECT_CODES_FILE"
echo ""

# プロジェクトコードパターンにマッチするディレクトリを検索
echo "プロジェクトコード準拠ディレクトリ:"
echo "----------------------------------------"
CODE_DIRS=$(find "$DESKTOP_PATH" -maxdepth 1 -type d -name "[A-Z][A-Z][0-9][0-9][0-9]*" 2>/dev/null | sort)
if [ -z "$CODE_DIRS" ]; then
    echo "  （該当なし）"
else
    echo "$CODE_DIRS" | while read dir; do
        dir_name=$(basename "$dir")
        if grep -q "$dir_name" "$PROJECT_CODES_FILE" 2>/dev/null; then
            echo "  $dir_name"
        else
            echo "  警告:  $dir_name (未登録)"
        fi
    done
fi

echo ""
echo "プロジェクトコード非準拠ディレクトリ:"
echo "----------------------------------------"
NON_CODE_DIRS=$(find "$DESKTOP_PATH" -maxdepth 1 -type d ! -name ".*" ! -name "[A-Z][A-Z][0-9][0-9][0-9]*" ! -path "$DESKTOP_PATH" 2>/dev/null | sort)
if [ -z "$NON_CODE_DIRS" ]; then
    echo "  （該当なし）"
else
    echo "$NON_CODE_DIRS" | while read dir; do
        dir_name=$(basename "$dir")
        echo "  ! $dir_name"
    done
fi

echo ""
echo "整理の提案:"
echo "══════════════════════════════════════════════════════════"
echo ""
echo "推奨アクション:"
echo "  1. プロジェクトコード非準拠ディレクトリに適切なコードを割り当て"
echo "  2. project-codes.mdファイルを更新して新しいコードを記録"
echo "  3. 不要なファイルはArchiveフォルダに移動を検討"

# 新規プロジェクトコード生成支援
echo ""
echo "新規プロジェクトコード生成支援:"
echo "══════════════════════════════════════════════════════════"
echo ""
echo "既存のカテゴリ:"
if [ -f "$PROJECT_CODES_FILE" ]; then
    CATEGORIES=$(grep -E "^### [A-Z]{2} -" "$PROJECT_CODES_FILE" 2>/dev/null)
    if [ -z "$CATEGORIES" ]; then
        echo "  （カテゴリが見つかりません）"
    else
        echo "$CATEGORIES" | while read line; do
            category=$(echo "$line" | sed 's/### \([A-Z][A-Z]\) - \(.*\)/\1/')
            description=$(echo "$line" | sed 's/### \([A-Z][A-Z]\) - \(.*\)/\2/')
            echo "  $category - $description"
        done
    fi
else
    echo "  警告:  プロジェクトコードファイルが見つかりません"
fi

echo ""
echo "使用可能な次の番号:"
echo "------------------------"
PREFIXES=$(find "$DESKTOP_PATH" -maxdepth 1 -type d -name "[A-Z][A-Z][0-9][0-9][0-9]*" 2>/dev/null | sed 's/.*\/\([A-Z][A-Z]\)[0-9].*/\1/' | sort -u)
if [ -z "$PREFIXES" ]; then
    echo "  WD001 (新規カテゴリの開始番号)"
    echo "  DN001 (新規カテゴリの開始番号)"
    echo "  AD001 (新規カテゴリの開始番号)"
else
    for prefix in $PREFIXES; do
        last_num=$(find "$DESKTOP_PATH" -maxdepth 1 -type d -name "${prefix}[0-9][0-9][0-9]*" 2>/dev/null | sed "s/.*\/${prefix}\([0-9]\{3\}\).*/\1/" | sort -n | tail -1)
        next_num=$(printf "%03d" $((10#$last_num + 1)))
        echo "  ${prefix}${next_num}"
    done
fi


echo ""
echo "══════════════════════════════════════════════════════════"
echo "スクリプト実行完了"