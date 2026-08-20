#!/bin/bash
#
# extract_html_text.sh
#
# Reads through a folder of saved HTML pages and extracts the READABLE TEXT
# CONTENT of each .html/.htm file into small, mirrored .txt files in a new
# output folder.
#
# YOUR ORIGINAL FILES ARE NEVER MODIFIED, MOVED, OR DELETED.
# This script only ever WRITES new .txt files into OUTPUT_DIR.
#
# ---- SETUP (run once, if you haven't already) ----
#   python3 -m pip install beautifulsoup4 lxml
# ----------------------------------------------------

set -e

# EDIT THESE TWO PATHS IF NEEDED --------------------------------------------
SOURCE_DIR="/Users/nicoletelesz/website redesign/Portfolio Project/Portfolio System/03_Case Studies/Meta/00_Raw/Other/SCADPRO META WEBSITE"
OUTPUT_DIR="/Users/nicoletelesz/website redesign/Portfolio Project/Portfolio System/03_Case Studies/Meta/00_Raw_Extracted/Other/SCADPRO META WEBSITE"
# ----------------------------------------------------------------------------

echo "Source folder: $SOURCE_DIR"
echo "Output folder: $OUTPUT_DIR"
echo ""

if ! python3 -c "import bs4" &> /dev/null; then
    echo "❌ beautifulsoup4 not found. Install it with: python3 -m pip install beautifulsoup4 lxml"
    exit 1
fi

mkdir -p "$OUTPUT_DIR"

HTML_EXTRACTOR=$(cat << 'PYEOF'
import sys
from bs4 import BeautifulSoup

src_path = sys.argv[1]
out_path = sys.argv[2]

with open(src_path, "rb") as f:
    raw = f.read()

soup = BeautifulSoup(raw, "lxml")

# Strip out non-content elements that just add bulk / noise
for tag in soup(["script", "style", "noscript", "svg", "img", "link", "meta"]):
    tag.decompose()

title = soup.title.string.strip() if soup.title and soup.title.string else ""

# get_text with a separator keeps paragraph-like breaks instead of one giant blob
text = soup.get_text(separator="\n")

# Collapse excessive blank lines left behind after stripping tags
lines = [line.strip() for line in text.splitlines()]
lines = [line for line in lines if line]
cleaned = "\n".join(lines)

with open(out_path, "w", encoding="utf-8") as out:
    if title:
        out.write(f"TITLE: {title}\n\n")
    out.write(cleaned)
PYEOF
)

count=0

while IFS= read -r -d '' file; do
    rel_path="${file#$SOURCE_DIR/}"
    out_file="$OUTPUT_DIR/${rel_path%.*}.txt"
    mkdir -p "$(dirname "$out_file")"
    echo "Extracting (HTML): $rel_path"
    python3 -c "$HTML_EXTRACTOR" "$file" "$out_file" 2>/dev/null || echo "  ⚠️  Failed on this file, skipping"
    count=$((count+1))
done < <(find "$SOURCE_DIR" -type f \( -iname "*.html" -o -iname "*.htm" \) -print0)

echo ""
echo "✅ Done. Processed $count files."
echo "Extracted text is in: $OUTPUT_DIR"
echo "Your original files in $SOURCE_DIR were not touched."
