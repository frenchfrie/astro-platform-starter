#!/bin/bash
# Adds a subtle "feydoux.fr" watermark to all JPG images in src/assets/
# Usage: ./watermark-assets.sh [target_dir]
# Default target: src/assets/
#
# Requirements: ImageMagick (convert)
# The watermark is applied in-place. Run once on new images before commit.

TARGET_DIR=${1:-src/assets}

if ! command -v magick &> /dev/null; then
    echo "Error: ImageMagick not found. Install it with: sudo pacman -S imagemagick"
    exit 1
fi

FONT="DejaVu-Sans"
TEXT="feydoux.fr"
OPACITY=30
MARGIN=20

find "$TARGET_DIR" -type f \( -iname "*.jpg" -o -iname "*.jpeg" \) | while read -r img; do
    # Skip already watermarked files (check for marker in comment)
    if magick identify -verbose "$img" 2>/dev/null | grep -q "watermarked:true"; then
        echo "Skipping (already watermarked): $img"
        continue
    fi

    echo "Watermarking: $img"
    magick "$img" \
        -font "$FONT" \
        -pointsize 18 \
        -fill "rgba(255,255,255,${OPACITY}%)" \
        -gravity SouthEast \
        -annotate +${MARGIN}+${MARGIN} "$TEXT" \
        -set comment "watermarked:true" \
        "$img"
done

echo "Done."
