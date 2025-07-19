#!/bin/bash
# List all project codes from README.md

echo "📋 Project Code List"
echo "==================="
echo ""

# Extract project codes from README
grep -E "^- \*\*[A-Z]{2}[0-9]{3}" ../README.md | while read -r line; do
    echo "$line" | sed 's/^- //'
done

echo ""
echo "Total projects: $(grep -E "^- \*\*[A-Z]{2}[0-9]{3}" ../README.md | wc -l)"