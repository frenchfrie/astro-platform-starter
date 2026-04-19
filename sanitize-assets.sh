#!/bin/bash

# Target directory (current directory by default)
TARGET_DIR=${1:-.}

# 1. First pass: Rename files to lowercase and replace spaces/underscores with hyphens
find "$TARGET_DIR" -depth -name "*[A-Z ]*" -exec bash -c '
  for file; do
    dir=$(dirname "$file")
    base=$(basename "$file")
    # Convert to lowercase and replace spaces/underscores with hyphens
    new_base=$(echo "$base" | tr "[:upper:]" "[:lower:]" | tr " _" "-")

    if [ "$base" != "$new_base" ]; then
      mv -v "$file" "$dir/$new_base"
    fi
  done
' bash {} +

# 2. Second pass: Remove accents (Requires iconv)
# This converts UTF-8 to ASCII by stripping non-standard characters
find "$TARGET_DIR" -depth -exec bash -c '
  for file; do
    dir=$(dirname "$file")
    base=$(basename "$file")
    # Transliterate to ASCII (é -> e, etc.)
    new_base=$(echo "$base" | iconv -f utf-8 -t ascii//TRANSLIT)

    if [ "$base" != "$new_base" ]; then
      mv -v "$file" "$dir/$new_base"
    fi
  done
' bash {} +
