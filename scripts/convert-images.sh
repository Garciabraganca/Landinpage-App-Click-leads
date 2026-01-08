#!/bin/bash
# Script para converter imagens PNG/JPEG para WebP
# Uso: ./scripts/convert-images.sh [qualidade] (default: 75)

QUALITY=${1:-75}
cd "$(dirname "$0")/.."

echo "=== Convertendo imagens para WebP (qualidade: $QUALITY) ==="

for img in *.png *.jpg *.jpeg 2>/dev/null; do
    if [ -f "$img" ]; then
        base="${img%.*}"
        webp_file="${base}.webp"

        # Pula se já existe webp mais recente
        if [ -f "$webp_file" ] && [ "$webp_file" -nt "$img" ]; then
            echo "Skip: $img (webp já existe e está atualizado)"
            continue
        fi

        if cwebp -q "$QUALITY" "$img" -o "$webp_file" 2>/dev/null; then
            orig_size=$(stat -c%s "$img")
            webp_size=$(stat -c%s "$webp_file")
            reduction=$(echo "scale=1; 100 - ($webp_size * 100 / $orig_size)" | bc)
            echo "OK: $img -> $webp_file (${reduction}% menor)"
        else
            echo "ERRO: Falha ao converter $img"
        fi
    fi
done

echo "=== Conversão finalizada ==="
