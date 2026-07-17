#!/bin/bash
# Přegenerování stránek katalogu z nového PDF:
#   1) nahraď katalog.pdf novou verzí
#   2) spusť ./build.sh (vyžaduje poppler: brew install poppler)
#   3) pokud se změnil počet stran, uprav PAGE_COUNT v index.html
set -e
rm -f pages/page-*.jpg
pdftoppm -jpeg -jpegopt quality=82 -r 110 katalog.pdf pages/page
pdfinfo katalog.pdf | grep Pages
