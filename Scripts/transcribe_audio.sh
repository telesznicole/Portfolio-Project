#!/bin/bash
#
# transcribe_audio.sh
#
# Batch-transcribes .m4a audio files to text using OpenAI's Whisper model,
# running fully locally (nothing uploaded anywhere).
#
# YOUR ORIGINAL AUDIO FILES ARE NEVER MODIFIED, MOVED, OR DELETED.
# This script only ever WRITES new .txt transcript files into OUTPUT_DIR.
#
# ---- SETUP (run once, if you haven't already) ----
#   brew install ffmpeg
#   pip3 install openai-whisper
# ----------------------------------------------------

set -e

# EDIT THESE TWO PATHS -------------------------------------------------------
SOURCE_DIR="/Users/nicoletelesz/website redesign/Portfolio Project/Portfolio System/03_Case Studies/Feminist UX/00_Raw"
OUTPUT_DIR="/Users/nicoletelesz/website redesign/Portfolio Project/Portfolio System/03_Case Studies/Feminist UX/00_Raw_Extracted"
# ----------------------------------------------------------------------------

# Whisper model size: tiny, base, small, medium, large
# "base" is a solid default — fast and reasonably accurate for clear speech.
# Use "small" or "medium" for noisier recordings or higher accuracy needs
# (slower, but still fully local).
MODEL_SIZE="base"

echo "Source folder: $SOURCE_DIR"
echo "Output folder: $OUTPUT_DIR"
echo "Whisper model: $MODEL_SIZE"
echo ""

if ! command -v whisper &> /dev/null; then
    echo "❌ whisper not found. Install it with: pip3 install openai-whisper"
    exit 1
fi

if ! command -v ffmpeg &> /dev/null; then
    echo "❌ ffmpeg not found. Install it with: brew install ffmpeg"
    exit 1
fi

mkdir -p "$OUTPUT_DIR"

count=0

while IFS= read -r -d '' file; do
    rel_path="${file#$SOURCE_DIR/}"
    rel_dir=$(dirname "$rel_path")
    base_name=$(basename "$file" .m4a)
    out_subdir="$OUTPUT_DIR/$rel_dir"
    mkdir -p "$out_subdir"

    echo "Transcribing: $rel_path (this may take a while)"

    python3.10 -m whisper "$file" \
        --model "$MODEL_SIZE" \
        --output_format txt \
        --output_dir "$out_subdir" \
        --fp16 False \
        &> /dev/null || echo "  ⚠️  Failed on this file, skipping"

    count=$((count+1))
    echo "  ✅ Done"
done < <(find "$SOURCE_DIR" -type f -iname "*.m4a" -print0)

echo ""
echo "✅ Done. Processed $count audio files."
echo "Transcripts are in: $OUTPUT_DIR"
echo "Your original audio files in $SOURCE_DIR were not touched."
