#!/usr/bin/env bash
# Benchmark do motor matmul (enunciado, seção 4.1).
#
# Executa os quatro alvos em todas as ordens pedidas, mede também as
# conversões (E/S CSV vs binário) e grava tudo em
# maquinas/<aluno>/benchmark_<aluno>.csv, com todas as repetições.
#
# Metodologia (para a discussão de consistência experimental do relatório):
#   - repetições INTERCALADAS por alvo/ordem, para diluir turbo/térmica;
#   - uma passada de aquecimento descartada (cache de página/instruções);
#   - cada execução fixada em uma CPU com taskset (--pin, padrão cpu 2);
#   - a mediana é calculada na análise, nunca aqui.
#
# Uso: bench.sh [--aluno aluno1] [--dados dados] [--bin-dir DIR] [--saida ARQ]
#               [--ordens "1000 2000 4000"] [--reps 3] [--reps-io 3]
#               [--reps-ordem "4000:base=1"] [--pin 2|--sem-pin]
#               [--sem-warmup] [--rapido]
set -euo pipefail
export LC_ALL=C

ALUNO="aluno1"
DADOS="dados"
BIN_DIR=""
SAIDA=""
ORDENS="1000 2000 4000"
REPS=3
REPS_IO=""
REPS_ORDEM=""
PIN=2
USAR_PIN=1
WARMUP=1
RAPIDO=0
ALVOS="base o2 o3 fast"
REGEX='^TEMPO_IO: [0-9]+\.[0-9]{6} \| TEMPO_COMP: [0-9]+\.[0-9]{6} \| GFLOPS: [0-9]+\.[0-9]{4}$'

while [[ $# -gt 0 ]]; do
    case "$1" in
        --aluno) ALUNO="$2"; shift 2 ;;
        --dados) DADOS="$2"; shift 2 ;;
        --bin-dir) BIN_DIR="$2"; shift 2 ;;
        --saida) SAIDA="$2"; shift 2 ;;
        --ordens) ORDENS="$2"; shift 2 ;;
        --reps) REPS="$2"; shift 2 ;;
        --reps-io) REPS_IO="$2"; shift 2 ;;
        --reps-ordem) REPS_ORDEM="$2"; shift 2 ;;
        --pin) PIN="$2"; shift 2 ;;
        --sem-pin) USAR_PIN=0; shift ;;
        --sem-warmup) WARMUP=0; shift ;;
        --rapido) RAPIDO=1; shift ;;
        -h|--help)
            sed -n '2,20p' "$0"
            exit 0
            ;;
        *)
            echo "argumento desconhecido: $1" >&2
            exit 2
            ;;
    esac
done

BIN_DIR="${BIN_DIR:-maquinas/${ALUNO}/bin}"
SAIDA="${SAIDA:-maquinas/${ALUNO}/benchmark_${ALUNO}.csv}"
REPS_IO="${REPS_IO:-$REPS}"
if [[ "$RAPIDO" -eq 1 ]]; then
    REPS=1
    REPS_IO=1
    WARMUP=0
fi

for alvo in $ALVOS; do
    if [[ ! -x "$BIN_DIR/matmul_$alvo" ]]; then
        echo "erro: $BIN_DIR/matmul_$alvo nao existe; rode 'make all' antes." >&2
        exit 1
    fi
done
if [[ ! -x ./csv2bin || ! -x ./bin2csv ]]; then
    echo "erro: compile os utilitarios com 'make' antes." >&2
    exit 1
fi

mkdir -p "$DADOS"/{csv,bin,out,logs} "$(dirname "$SAIDA")"
LOG="$DADOS/logs/bench_$(date +%Y%m%d-%H%M%S).log"
exec > >(tee -a "$LOG") 2>&1

# Repetições específicas por ordem:alvo (ex.: "4000:base=1,4000:o2=2").
declare -A REPS_ESPECIFICO=()
if [[ -n "$REPS_ORDEM" ]]; then
    IFS=',' read -ra itens <<< "$REPS_ORDEM"
    for item in "${itens[@]}"; do
        REPS_ESPECIFICO["${item%%=*}"]="${item##*=}"
    done
fi
reps_para() { # $1=ordem $2=alvo
    local chave="$1:$2"
    if [[ -n "${REPS_ESPECIFICO[$chave]:-}" ]]; then
        echo "${REPS_ESPECIFICO[$chave]}"
    else
        echo "$REPS"
    fi
}

reps_max=$REPS
for chave in "${!REPS_ESPECIFICO[@]}"; do
    v="${REPS_ESPECIFICO[$chave]}"
    if (( v > reps_max )); then reps_max=$v; fi
done

CPU_MODELO="$(lscpu | awk -F: '/Model name/ {sub(/^[ \t]+/, "", $2); print $2; exit}')"
GOVERNADOR="$(cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor 2>/dev/null || echo n/d)"
GCC_VER="$(gcc -dumpfullversion 2>/dev/null || gcc --version | head -1)"
PIN_TXT="desativado (--sem-pin)"
if [[ "$USAR_PIN" -eq 1 ]]; then PIN_TXT="taskset -c $PIN"; fi

echo "== bench.sh =="
echo "aluno=$ALUNO  ordens='$ORDENS'  reps=$REPS (max=$reps_max)  reps_io=$REPS_IO"
echo "binarios=$BIN_DIR  saida=$SAIDA  log=$LOG"
echo "cpu=$CPU_MODELO  governor=$GOVERNADOR  gcc=$GCC_VER  pin=$PIN_TXT"

{
    echo "# benchmark_${ALUNO}.csv | host=$(hostname) | cpu=${CPU_MODELO}"
    echo "# data=$(date -Is) | kernel=$(uname -r) | gcc=${GCC_VER} | governor=${GOVERNADOR}"
    echo "# flags: base=[-O0 -g0] o2=[-O2] o3=[-O3] fast=[-O3 -march=native -ffast-math -funroll-loops]"
    echo "# comuns: -std=c11 -D_POSIX_C_SOURCE=200809L -ffp-contract=fast"
    echo "# metodo: reps intercaladas; warmup descartado; ${PIN_TXT}; mediana calculada na analise"
    echo "tipo,alvo,ordem,repeticao,tempo_wall_s,tempo_io_s,tempo_comp_s,gflops,bytes_entrada,bytes_saida,rc,obs"
} > "$SAIDA.parcial"

TMP_OUT="$(mktemp)"
TMP_ERR="$(mktemp)"
trap 'rm -f "$TMP_OUT" "$TMP_ERR"' EXIT

WALL=""
RC=0
medir() { # executa "$@" medindo o tempo de parede com resolução de ns
    local t0 t1
    # Descarga o writeback pendente ANTES de cronometrar: em btrfs (CoW) os
    # commits de transação e o throttling de páginas sujas caem dentro da
    # medição e dominam a variância do TEMPO_IO. O sync fica fora do intervalo.
    sync
    t0=$(date +%s%N)
    RC=0
    "$@" >"$TMP_OUT" 2>"$TMP_ERR" || RC=$?
    t1=$(date +%s%N)
    WALL=$(awk -v a="$t0" -v b="$t1" 'BEGIN{printf "%.6f", (b-a)/1e9}')
    if [[ -s "$TMP_ERR" ]]; then
        echo "    [stderr] $(head -c 400 "$TMP_ERR")"
    fi
}

registrar_io() { # $1=operacao $2=ordem $3=rep $4=bytes_in $5=bytes_out
    local obs="ok"
    if [[ "$RC" -ne 0 ]]; then obs="rc=$RC"; fi
    printf 'io,%s,%s,%s,%s,,,,%s,%s,%s,%s\n' \
        "$1" "$2" "$3" "$WALL" "$4" "$5" "$RC" "$obs" >> "$SAIDA.parcial"
}

# ---------------- dados de entrada ----------------
for o in $ORDENS; do
    for nome in A B; do
        csv="$DADOS/csv/mat_${o}x${o}_${nome}.csv"
        bin="$DADOS/bin/mat_${o}x${o}_${nome}.bin"
        if [[ ! -f "$csv" ]]; then
            python3 scripts/gerar_matrizes.py --ordens "$o" --saida "$DADOS/csv"
        fi
        if [[ ! -f "$bin" ]]; then
            ./csv2bin "$csv" "$bin"
        fi
    done
done

# ---------------- E/S: conversões CSV <-> binário ----------------
echo "-- conversoes (E/S) --"
for o in $ORDENS; do
    csvA="$DADOS/csv/mat_${o}x${o}_A.csv"
    binA="$DADOS/bin/mat_${o}x${o}_A.bin"
    csvB="$DADOS/csv/mat_${o}x${o}_B.csv"
    binB="$DADOS/bin/mat_${o}x${o}_B.bin"
    csv_retorno="$DADOS/out/verificacao_${o}.csv"
    tam_csv=$(stat -c%s "$csvA")
    tam_bin=$(stat -c%s "$binA")
    for ((r = 1; r <= REPS_IO; r++)); do
        medir ./csv2bin "$csvA" "$binA"
        registrar_io csv2bin "$o" "$r" "$tam_csv" "$tam_bin"
        medir ./csv2bin "$csvB" "$binB"
        registrar_io csv2bin "$o" "$r" "$tam_csv" "$tam_bin"
        medir ./bin2csv "$binA" "$csv_retorno"
        registrar_io bin2csv "$o" "$r" "$tam_bin" "$(stat -c%s "$csv_retorno")"
        echo "   [io] ordem=$o rep=$r csv2bin=${WALL}s"
    done
done

# ---------------- warmup (descartado) ----------------
if [[ "$WARMUP" -eq 1 ]]; then
    menor=$(echo "$ORDENS" | awk '{print $1}')
    echo "-- warmup descartado (ordem $menor) --"
    for alvo in $ALVOS; do
        cmd=("$BIN_DIR/matmul_$alvo" "$DADOS/bin/mat_${menor}x${menor}_A.bin" \
             "$DADOS/bin/mat_${menor}x${menor}_B.bin" "$DADOS/out/warmup.bin")
        if [[ "$USAR_PIN" -eq 1 ]]; then cmd=(taskset -c "$PIN" "${cmd[@]}"); fi
        medir "${cmd[@]}"
        echo "   [warmup] $alvo: $(head -c 100 "$TMP_OUT")"
    done
fi

# ---------------- matmul: repetições intercaladas ----------------
for ((r = 1; r <= reps_max; r++)); do
    for o in $ORDENS; do
        for alvo in $ALVOS; do
            rr=$(reps_para "$o" "$alvo")
            if (( r > rr )); then continue; fi

            binA="$DADOS/bin/mat_${o}x${o}_A.bin"
            binB="$DADOS/bin/mat_${o}x${o}_B.bin"
            saida_bin="$DADOS/out/c_${o}_${alvo}.bin"

            cmd=("$BIN_DIR/matmul_$alvo" "$binA" "$binB" "$saida_bin")
            if [[ "$USAR_PIN" -eq 1 ]]; then cmd=(taskset -c "$PIN" "${cmd[@]}"); fi
            medir "${cmd[@]}"

            linhas=$(wc -l < "$TMP_OUT")
            obs="ok"
            rc_final=$RC
            if [[ "$RC" -ne 0 ]]; then
                obs="rc=$RC"
            elif [[ "$linhas" -ne 1 ]]; then
                obs="stdout com $linhas linhas"
                rc_final=1
            elif ! grep -qE "$REGEX" "$TMP_OUT"; then
                obs="formato de saida invalido"
                rc_final=1
            fi

            tio=""; tcomp=""; gf=""
            if [[ "$obs" == "ok" ]]; then
                read -r tio tcomp gf < <(awk '{print $2, $5, $8}' "$TMP_OUT")
                echo "   [matmul] r=$r/$rr ordem=$o alvo=$alvo io=${tio}s comp=${tcomp}s ${gf} GFLOPS"
            else
                echo "   [matmul] r=$r/$rr ordem=$o alvo=$alvo FALHOU: $obs"
            fi

            tam_in=$(( $(stat -c%s "$binA") + $(stat -c%s "$binB") ))
            tam_out=$(stat -c%s "$saida_bin" 2>/dev/null || echo "")
            printf 'matmul,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s\n' \
                "$alvo" "$o" "$r" "$WALL" "$tio" "$tcomp" "$gf" \
                "$tam_in" "$tam_out" "$rc_final" "$obs" >> "$SAIDA.parcial"
        done
    done
done

mv "$SAIDA.parcial" "$SAIDA"
echo
echo "benchmark concluido: $SAIDA"
echo "linhas de dados: $(($(grep -vc '^#' "$SAIDA") - 1)) (fora o cabecalho de colunas)"
