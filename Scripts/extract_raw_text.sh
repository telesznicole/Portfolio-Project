#!/bin/bash
#
# extract_raw_text.sh
#
# Reads through your 00_Raw folder and extracts the TEXT CONTENT of every
# .pdf and .pptx file into small, mirrored .txt files in a new output folder.
#
# YOUR ORIGINAL FILES ARE NEVER MODIFIED, MOVED, OR DELETED.
# This script only ever WRITES new .txt files into OUTPUT_DIR.
#
# ---- SETUP (run these once, if you haven't already) ----
#   brew install poppler
#   pip3 install python-pptx
# ----------------------------------------------------------

set -e

# EDIT THESE TWO PATHS IF NEEDED -------------------------------------------
SOURCE_DIR="/Users/nicoletelesz/website redesign/Portfolio Project/Portfolio System/03_Case Studies/Meta/00_Raw"
OUTPUT_DIR="/Users/nicoletelesz/website redesign/Portfolio Project/Portfolio System/03_Case Studies/Meta/00_Raw_Extracted"
# ----------------------------------------------------------------------------

echo "Source folder: $SOURCE_DIR"
echo "Output folder: $OUTPUT_DIR"
echo ""

# Check dependencies
if ! command -v pdftotext &> /dev/null; then
    echo "❌ pdftotext not found. Install it with: brew install poppler"
    exit 1
fi

if ! python3 -c "import pptx" &> /dev/null; then
    echo "❌ python-pptx not found. Install it with: pip3 install python-pptx"
    exit 1
fi

mkdir -p "$OUTPUT_DIR"

# Small embedded Python helper for pulling text out of a .pptx file
PPTX_EXTRACTOR=$(cat << 'PYEOF'
import sys
from pptx import Presentation

src_path = sys.argv[1]
out_path = sys.argv[2]

prs = Presentation(src_path)
with open(out_path, "w", encoding="utf-8") as f:
    for i, slide in enumerate(prs.slides, 1):
        f.write(f"--- Slide {i} ---\n")
        for shape in slide.shapes:
            if shape.has_text_frame:
                for para in shape.text_frame.paragraphs:
                    text = "".join(run.text for run in para.runs)
                    if text.strip():
                        f.write(text + "\n")
        if slide.has_notes_slide:
            notes = slide.notes_slide.notes_text_frame.text
            if notes.strip():
                f.write(f"[Notes] {notes}\n")
        f.write("\n")
PYEOF
)

count=0

# Process PDFs
while IFS= read -r -d '' file; do
    rel_path="${file#$SOURCE_DIR/}"
    out_file="$OUTPUT_DIR/${rel_path%.pdf}.txt"
    mkdir -p "$(dirname "$out_file")"
    echo "Extracting (PDF): $rel_path"
    pdftotext "$file" "$out_file" 2>/dev/null || echo "  ⚠️  Failed on this file, skipping"
    count=$((count+1))
done < <(find "$SOURCE_DIR" -type f -iname "*.pdf" -print0)

# Process PPTX
while IFS= read -r -d '' file; do
    rel_path="${file#$SOURCE_DIR/}"
    out_file="$OUTPUT_DIR/${rel_path%.pptx}.txt"
    mkdir -p "$(dirname "$out_file")"
    echo "Extracting (PPTX): $rel_path"
    python3 -c "$PPTX_EXTRACTOR" "$file" "$out_file" 2>/dev/null || echo "  ⚠️  Failed on this file, skipping"
    count=$((count+1))
done < <(find "$SOURCE_DIR" -type f -iname "*.pptx" -print0)

echo ""
echo "✅ Done. Processed $count files."
echo "Extracted text is in: $OUTPUT_DIR"
echo "Your original files in $SOURCE_DIR were not touched."
