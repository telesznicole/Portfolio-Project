#!/usr/bin/env python3
"""
extract_pptx_lenient.py

Fallback text extractor for .pptx files that python-pptx refuses to open
due to XML encoding errors. Reads each slide's XML directly out of the
zip archive and pulls out text runs with a lenient (error-tolerant) parser.

Usage:
    python3 extract_pptx_lenient.py "/path/to/file.pptx" "/path/to/output.txt"

Does not modify the original file in any way - read-only.
"""

import sys
import re
import zipfile
from lxml import etree

def extract_text_lenient(pptx_path, out_path):
    # Lenient parser: tries to recover from encoding/syntax errors instead of failing
    parser = etree.XMLParser(recover=True, encoding="utf-8")

    with zipfile.ZipFile(pptx_path, "r") as z:
        # Find all slide XML files, in order (slide1.xml, slide2.xml, ...)
        slide_files = sorted(
            [n for n in z.namelist() if re.match(r"ppt/slides/slide\d+\.xml$", n)],
            key=lambda n: int(re.search(r"\d+", n).group())
        )

        with open(out_path, "w", encoding="utf-8") as out:
            for i, slide_file in enumerate(slide_files, 1):
                out.write(f"--- Slide {i} ---\n")
                try:
                    raw = z.read(slide_file)
                    tree = etree.fromstring(raw, parser=parser)
                    # <a:t> tags hold the actual visible text runs in slide XML
                    ns = {"a": "http://schemas.openxmlformats.org/drawingml/2006/main"}
                    texts = tree.findall(".//a:t", ns)
                    for t in texts:
                        if t.text and t.text.strip():
                            out.write(t.text + "\n")
                except Exception as e:
                    out.write(f"[Could not fully parse this slide: {e}]\n")
                out.write("\n")

    print(f"Done. Extracted text written to: {out_path}")

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python3 extract_pptx_lenient.py <input.pptx> <output.txt>")
        sys.exit(1)
    extract_text_lenient(sys.argv[1], sys.argv[2])
