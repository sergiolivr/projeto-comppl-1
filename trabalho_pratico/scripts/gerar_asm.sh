#!/usr/bin/env bash
# Gera as desmontagens exigidas no enunciado (seção 6.2) em
# maquinas/<aluno>/asm/ e imprime as contagens que o relatório precisa.
#
# Método A: objdump -d -M intel -S sobre os binários matmul_base/matmul_fast.
# Método B: assembly anotado emitido pelo GCC (-S -masm=intel -fverbose-asm).
#
# Observação: as flags do enunciado para matmul_base usam -g0, então o
# objdump -S não tem informação de linha para intercalar. Os arquivos
# "extras" (--extras) compensam isso com a variante build/base_g (compilada
# com -g) e isolam o laço quente via --disassemble=matmul_kernel.
set -euo pipefail
export LC_ALL=C

ALUNO="aluno1"
EXTRAS=0
while [[ $# -gt 0 ]]; do
    case "$1" in
        --aluno) ALUNO="$2"; shift 2 ;;
        --extras) EXTRAS=1; shift ;;
        -h|--help)
            echo "uso: $0 [--aluno <nome>] [--extras]"
            exit 0
            ;;
        *)
            echo "argumento desconhecido: $1" >&2
            exit 2
            ;;
    esac
done

BIN="maquinas/${ALUNO}/bin"
ASM="maquinas/${ALUNO}/asm"
mkdir -p "$ASM"

CFLAGS_COMUNS=(-std=c11 -D_POSIX_C_SOURCE=200809L -Isrc -Wall -Wextra -Wpedantic -ffp-contract=fast)

# ---------- Método A: desmontagem dos binários compilados ----------
objdump -d -M intel -S "$BIN/matmul_base" > "$ASM/asm_base_${ALUNO}.s"
objdump -d -M intel -S "$BIN/matmul_fast" > "$ASM/asm_fast_${ALUNO}.s"

# ---------- Método B: assembly anotado pelo GCC ----------
gcc "${CFLAGS_COMUNS[@]}" -O0 \
    -S -masm=intel -fverbose-asm src/matmul.c \
    -o "$ASM/asm_base_anotado_${ALUNO}.s"
gcc "${CFLAGS_COMUNS[@]}" -O3 -march=native -ffast-math -funroll-loops \
    -S -masm=intel -fverbose-asm src/matmul.c \
    -o "$ASM/asm_fast_anotado_${ALUNO}.s"

if [[ "$EXTRAS" -eq 1 ]]; then
    objdump -d -M intel -S build/base_g/matmul \
        > "$ASM/asm_base_fonte_${ALUNO}.s"
    gcc "${CFLAGS_COMUNS[@]}" -O0 -g \
        -S -masm=intel -fverbose-asm src/matmul.c \
        -o "$ASM/asm_base_anotado_g_${ALUNO}.s"
    objdump -d -M intel --disassemble=matmul_kernel "$BIN/matmul_o3" \
        > "$ASM/laco_o3_${ALUNO}.s"
    objdump -d -M intel --disassemble=matmul_kernel "$BIN/matmul_fast" \
        > "$ASM/laco_fast_${ALUNO}.s"
fi

# ---------- contagens prontas para a tabela do relatório ----------
contar() { # $1=arquivo $2=regex
    grep -cE "$2" "$1" || true
}

printf '\n%-40s %8s %8s %8s %8s\n' "arquivo" "vmovaps" "vfmadd" "mulps" "mov_rbp"
for f in "$ASM"/*.s; do
    printf '%-40s %8s %8s %8s %8s\n' "$(basename "$f")" \
        "$(contar "$f" 'vmovaps')" \
        "$(contar "$f" 'vfmadd[0-9]*ps')" \
        "$(contar "$f" '\b(mulps|addps)\b')" \
        "$(contar "$f" 'mov[a-z]*[[:blank:]]+.*\[rbp')"
done

echo
echo "desmontagens geradas em $ASM"
