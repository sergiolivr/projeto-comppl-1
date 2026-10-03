#!/usr/bin/env bash
# Coleta o perfil de hardware/compilador da máquina (enunciado, seção 6.1)
# em maquinas/<aluno>/specs/, usando exatamente os comandos pedidos.
set -euo pipefail
export LC_ALL=C

ALUNO="aluno1"
while [[ $# -gt 0 ]]; do
    case "$1" in
        --aluno) ALUNO="$2"; shift 2 ;;
        -h|--help)
            echo "uso: $0 [--aluno <nome>]"
            exit 0
            ;;
        *)
            echo "argumento desconhecido: $1" >&2
            exit 2
            ;;
    esac
done

DIR="maquinas/${ALUNO}/specs"
mkdir -p "$DIR"

# Comandos do enunciado (6.1). LC_ALL=C garante ponto decimal e unidades
# iguais em todas as máquinas, tornando as specs comparáveis entre si.
{
    echo "# Coleta: $(date -Is) | host: $(hostname)"
    echo "# Comandos do enunciado (secao 6.1)"
    echo
    echo "## lscpu"
    lscpu
    echo
    echo "## lscpu -C (hierarquia de cache)"
    lscpu -C
} > "$DIR/cpu_info_${ALUNO}.txt"

free -h  > "$DIR/ram_info_${ALUNO}.txt"
gcc --version > "$DIR/gcc_info_${ALUNO}.txt"

# Extra (não exigido; não substitui os três arquivos acima): contexto de
# medição que costuma ser pedido na discussão do relatório.
{
    echo "# Ambiente de medicao — $(date -Is)"
    echo
    echo "## uname -a"
    uname -a
    echo
    echo "## locale"
    locale
    echo
    echo "## governor de frequencia (cpu0)"
    cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor 2>/dev/null || echo "indisponivel"
    echo
    echo "## driver de frequencia"
    cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_driver 2>/dev/null || echo "indisponivel"
    echo
    echo "## python3"
    python3 --version
    echo
    echo "## filesystem do pacote"
    df -T . | tail -1
} > "$DIR/ambiente_${ALUNO}.txt"

echo "specs coletadas em $DIR:"
ls -1 "$DIR"
