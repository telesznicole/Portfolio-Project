#!/bin/bash
#
# resize_photos.sh
#
# Batch-resizes photos so they comfortably fit under common upload limits
# (~1200px on the longest edge, 75% JPEG quality — usually lands well under 1MB).
#
# YOUR ORIGINAL PHOTOS ARE NEVER MODIFIED, MOVED, OR DELETED.
# This script only ever WRITES new resized copies into OUTPUT_DIR.
#
# Uses "sips", which is built into macOS — no installs needed.
#
# ----------------------------------------------------------------------------

set -e

# EDIT THESE TWO PATHS -------------------------------------------------------
# SOURCE_DIR="/Users/nicoletelesz/website redesign/Portfolio Project/Portfolio System/03_Case Studies/Feminist UX/00_Raw"
# OUTPUT_DIR="/Users/nicoletelesz/website redesign/Portfolio Project/Portfolio System/03_Case Studies/Feminist UX/00_Raw_Extracted"
SOURCE_DIR="/Users/nicoletelesz/website redesign/Portfolio Project/Portfolio System/03_Case Studies/Meta/00_Raw"
OUTPUT_DIR="/Users/nicoletelesz/website redesign/Portfolio Project/Portfolio System/03_Case Studies/Meta/00_Raw_Extracted"
# ----------------------------------------------------------------------------

MAX_DIMENSION=1200
JPEG_QUALITY=75   # sips uses 0-100 scale where higher = better quality

echo "Source folder: $SOURCE_DIR"
echo "Output folder: $OUTPUT_DIR"
echo "Resizing to: ${MAX_DIMENSION}px longest edge, ${JPEG_QUALITY}% JPEG quality"
echo ""

mkdir -p "$OUTPUT_DIR"

count=0
skipped=0

while IFS= read -r -d '' file; do
    rel_path="${file#$SOURCE_DIR/}"
    # Always output as .jpg for consistency and best compression
    out_file="$OUTPUT_DIR/${rel_path%.*}.jpg"
    mkdir -p "$(dirname "$out_file")"

    echo "Resizing: $rel_path"

    # Copy first (sips can edit in place, so we work on the copy to be extra safe)
    cp "$file" "$out_file.tmp" 2>/dev/null

    if sips -s format jpeg \
            -s formatOptions "$JPEG_QUALITY" \
            -Z "$MAX_DIMENSION" \
            "$out_file.tmp" \
            --out "$out_file" &> /dev/null; then
        rm -f "$out_file.tmp"
        size=$(ls -lh "$out_file" | awk '{print $5}')
        echo "  ✅ Done ($size)"
        count=$((count+1))
    else
        rm -f "$out_file.tmp" "$out_file"
        echo "  ⚠️  Failed on this file, skipping"
        skipped=$((skipped+1))
    fi
done < <(find "$SOURCE_DIR" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.heic" -o -iname "*.tif" -o -iname "*.tiff" \) -print0)

echo ""
echo "✅ Done. Resized $count photos ($skipped skipped)."
echo "Resized copies are in: $OUTPUT_DIR"
echo "Your original photos in $SOURCE_DIR were not touched."
