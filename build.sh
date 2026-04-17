#!/bin/bash

PDFLATEX=/Library/TeX/texbin/pdflatex
OUT_DIR="./output"

mkdir -p "$OUT_DIR"

for tex_file in *.tex; do
  echo "Compilando $tex_file..."
  "$PDFLATEX" -output-directory="$OUT_DIR" "$tex_file"
  "$PDFLATEX" -output-directory="$OUT_DIR" "$tex_file"  # segunda pasada para referencias
done

echo "PDFs generados en $OUT_DIR/"
