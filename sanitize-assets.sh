#!/bin/bash

TARGET_DIR=${1:-.}

# Use -depth to handle children before parents
find "$TARGET_DIR" -depth | while read -r file; do
    dir=$(dirname "$file")
    base=$(basename "$file")

    # 1. Lowercase
    # 2. Manual mapping of French accents to ASCII
    # 3. Replace any non-alphanumeric (except . and -) with a hyphen
    # 4. Cleanup multiple/trailing hyphens
    new_base=$(echo "$base" | tr '[:upper:]' '[:lower:]' | \
        sed 'y/àâéèêëîïôûùç/aaeeeeiiouuc/' | \
        sed -E "s/[^a-z0-9.]/-/g" | \
        sed -E "s/-+/-/g" | \
        sed -E "s/^-//;s/-$//;s/-\././g")

    if [ "$base" != "$new_base" ]; then
        if [ ! -e "$dir/$new_base" ]; then
            mv -v "$file" "$dir/$new_base"
        else
            echo "Warning: $new_base already exists, skipping $base"
        fi
    fi
done
