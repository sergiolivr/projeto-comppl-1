#!/usr/bin/env bash
# Gera relatorio.pdf (A4) a partir de relatorio/relatorio.html.
#
# Motor padrão: Chrome/Chromium headless (--print-to-pdf). Alternativa:
# LibreOffice (soffice --convert-to pdf), com fidelidade um pouco menor.
set -euo pipefail
export LC_ALL=C

cd "$(dirname "$0")/.."   # raiz do pacote (trabalho_pratico/)

FONTE="relatorio/relatorio.html"
SAIDA="relatorio.pdf"

if [[ ! -f "$FONTE" ]]; then
    echo "erro: $FONTE nao encontrado" >&2
    exit 1
fi

if command -v google-chrome >/dev/null 2>&1; then
    google-chrome --headless=new --disable-gpu \
        --print-to-pdf="$PWD/$SAIDA" --no-pdf-header-footer "$PWD/$FONTE" 2>/dev/null
elif command -v chromium >/dev/null 2>&1; then
    chromium --headless=new --disable-gpu \
        --print-to-pdf="$PWD/$SAIDA" --no-pdf-header-footer "$PWD/$FONTE" 2>/dev/null
elif command -v soffice >/dev/null 2>&1; then
    echo "Chrome/Chromium ausentes; usando LibreOffice (fidelidade menor)." >&2
    soffice --headless --convert-to pdf --outdir . "$FONTE" >/dev/null
else
    echo "erro: nenhum motor de PDF encontrado (google-chrome, chromium ou soffice)." >&2
    exit 1
fi

if command -v pdfinfo >/dev/null 2>&1; then
    pdfinfo "$SAIDA" | grep -E 'Pages|Page size' || true
fi
echo "gerado: $SAIDA"
