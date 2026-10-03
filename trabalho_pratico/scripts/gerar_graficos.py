#!/usr/bin/env python3
"""Gera as figuras e tabelas-base do relatório a partir dos benchmark_*.csv.

- Barras (magnitude) em small multiples por ordem: cada painel tem sua
  própria escala, o que evita eixo logarítmico em barras.
- Paleta categórica validada (daltonismo/contraste) com rótulos diretos em
  todas as barras — o relatório também traz a tabela equivalente.
- Modo claro (figuras estáticas para o PDF, largura <= 16 cm a 150 dpi).
- Aceita vários benchmark_*.csv (multi-máquina) e gera um conjunto de
  figuras por máquina.

Sem matplotlib: imprime o comando de instalação e sai com código 1.
"""

import argparse
import csv
import glob
import os
import statistics
import sys

try:
    import matplotlib
    matplotlib.use("Agg")
    import matplotlib.pyplot as plt
except ImportError:
    print("matplotlib ausente. Instale com:\n"
          "  sudo dnf install -y python3-matplotlib python3-numpy",
          file=sys.stderr)
    sys.exit(1)

# Paleta (slots categóricos validados; modo claro) -------------------------
COR_ALVO = {
    "base": "#2a78d6",
    "o2": "#eb6834",
    "o3": "#1baf7a",
    "fast": "#eda100",
}
COR_CSV = "#eb6834"     # entidade "texto/CSV"
COR_BIN = "#2a78d6"     # entidade "binário"
TINTA = "#0b0b0b"
TINTA_2 = "#52514e"
TINTA_SUAVE = "#898781"
GRADE = "#e1e0d9"
BASELINE = "#c3c2b7"
SUPERFICIE = "#fcfcfb"

ALVOS = ["base", "o2", "o3", "fast"]


def configurar_estilo():
    plt.rcParams.update({
        "font.family": "DejaVu Sans",
        "font.size": 9,
        "figure.facecolor": SUPERFICIE,
        "axes.facecolor": SUPERFICIE,
        "savefig.facecolor": SUPERFICIE,
        "axes.edgecolor": BASELINE,
        "axes.linewidth": 0.8,
        "axes.labelcolor": TINTA_2,
        "axes.titlecolor": TINTA,
        "xtick.color": TINTA_2,
        "ytick.color": TINTA_SUAVE,
        "xtick.labelsize": 7.5,
        "ytick.labelsize": 7.5,
    })


def estilizar(ax, titulo=None, ylabel=None):
    ax.spines["top"].set_visible(False)
    ax.spines["right"].set_visible(False)
    ax.spines["left"].set_color(BASELINE)
    ax.spines["bottom"].set_color(BASELINE)
    ax.tick_params(length=0)
    ax.set_axisbelow(True)
    ax.yaxis.grid(True, color=GRADE, linewidth=0.7)
    if titulo:
        ax.set_title(titulo, fontsize=9, color=TINTA, pad=8)
    if ylabel:
        ax.set_ylabel(ylabel, fontsize=8, color=TINTA_2)


def rotular_barras(ax, barras, valores, fmt="{:.1f}"):
    for b, v in zip(barras, valores):
        ax.annotate(fmt.format(v),
                    (b.get_x() + b.get_width() / 2, v),
                    textcoords="offset points", xytext=(0, 2),
                    ha="center", fontsize=6.5, color=TINTA_2)


def barras(ax, posicoes, valores, cores, fmt="{:.1f}"):
    b = ax.bar(posicoes, valores, width=0.72, color=cores, zorder=3, linewidth=0)
    rotular_barras(ax, b, valores, fmt)
    return b


def salvar(fig, caminho):
    fig.savefig(caminho, dpi=150, bbox_inches="tight")
    plt.close(fig)
    print(f"[figura] {caminho}")


# --------------------------- carga dos dados ---------------------------
def carregar(caminhos):
    """Lê os benchmark_*.csv; linhas começando com '#' são metadados."""
    linhas = []
    for caminho in caminhos:
        maquina = os.path.splitext(os.path.basename(caminho))[0]
        maquina = maquina.replace("benchmark_", "") or "maquina"
        with open(caminho, encoding="utf-8") as f:
            conteudo = [l for l in f if not l.startswith("#")]
        for linha in csv.DictReader(conteudo):
            if linha.get("obs") != "ok" or linha.get("rc") != "0":
                continue
            linha["maquina"] = maquina
            linhas.append(linha)
    return linhas


def mediana(linhas, tipo, campo, alvo=None, ordem=None):
    valores = [
        float(l[campo]) for l in linhas
        if l["tipo"] == tipo
        and (alvo is None or l["alvo"] == alvo)
        and (ordem is None or l["ordem"] == ordem)
    ]
    return statistics.median(valores) if valores else None


def ordens_de(linhas, tipo):
    vistas = {l["ordem"] for l in linhas if l["tipo"] == tipo}
    return sorted(vistas, key=int)


# --------------------------- figuras ---------------------------
def fig_gflops(linhas, maquina, dir_fig):
    ordens = ordens_de(linhas, "matmul")
    fig, eixos = plt.subplots(1, len(ordens), figsize=(6.3, 2.9), sharey=False)
    if len(ordens) == 1:
        eixos = [eixos]
    for ax, ordem in zip(eixos, ordens):
        valores = [mediana(linhas, "matmul", "gflops", alvo, ordem) for alvo in ALVOS]
        cores = [COR_ALVO[a] for a in ALVOS]
        barras(ax, range(len(ALVOS)), valores, cores, fmt="{:.2f}")
        estilizar(ax, titulo=f"ordem {ordem}", ylabel="GFLOPS" if ax is eixos[0] else None)
        ax.set_xticks(range(len(ALVOS)))
        ax.set_xticklabels(ALVOS)
    fig.suptitle(f"Desempenho por alvo de otimização — {maquina}", fontsize=10, color=TINTA)
    fig.tight_layout(rect=(0, 0, 1, 0.93))
    salvar(fig, os.path.join(dir_fig, f"gflops_por_alvo_{maquina}.png"))


def fig_tempo(linhas, maquina, dir_fig, campo, nome, titulo, ylabel):
    ordens = ordens_de(linhas, "matmul")
    fig, eixos = plt.subplots(1, len(ordens), figsize=(6.3, 2.9), sharey=False)
    if len(ordens) == 1:
        eixos = [eixos]
    for ax, ordem in zip(eixos, ordens):
        valores = [mediana(linhas, "matmul", campo, alvo, ordem) for alvo in ALVOS]
        cores = [COR_ALVO[a] for a in ALVOS]
        barras(ax, range(len(ALVOS)), valores, cores, fmt="{:.3f}")
        estilizar(ax, titulo=f"ordem {ordem}", ylabel=ylabel if ax is eixos[0] else None)
        ax.set_xticks(range(len(ALVOS)))
        ax.set_xticklabels(ALVOS)
    fig.suptitle(f"{titulo} — {maquina}", fontsize=10, color=TINTA)
    fig.tight_layout(rect=(0, 0, 1, 0.93))
    salvar(fig, os.path.join(dir_fig, f"{nome}_{maquina}.png"))


def fig_io(linhas, maquina, dir_fig):
    ordens = ordens_de(linhas, "io")
    if not ordens:
        return
    fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(6.3, 2.9))

    # Painel A: tempo de parede das conversões
    x = range(len(ordens))
    t_csv2bin = [mediana(linhas, "io", "tempo_wall_s", "csv2bin", o) for o in ordens]
    t_bin2csv = [mediana(linhas, "io", "tempo_wall_s", "bin2csv", o) for o in ordens]
    largura = 0.36
    b1 = ax1.bar([i - largura / 2 - 0.01 for i in x], t_csv2bin, largura,
                 color=COR_CSV, label="csv2bin (lê CSV, grava bin)", zorder=3, linewidth=0)
    b2 = ax1.bar([i + largura / 2 + 0.01 for i in x], t_bin2csv, largura,
                 color=COR_BIN, label="bin2csv (lê bin, grava CSV)", zorder=3, linewidth=0)
    rotular_barras(ax1, b1, t_csv2bin, "{:.2f}")
    rotular_barras(ax1, b2, t_bin2csv, "{:.2f}")
    estilizar(ax1, titulo="Conversões: tempo de parede", ylabel="segundos")
    ax1.set_xticks(list(x))
    ax1.set_xticklabels([f"n={o}" for o in ordens])
    ax1.legend(frameon=False, fontsize=6.5, loc="upper left")

    # Painel B: vazão efetiva da conversão, separando lado texto e lado binário
    vaz = {"lê CSV": [], "grava CSV": [], "lê bin": [], "grava bin": []}
    for o in ordens:
        linhas_o = [l for l in linhas if l["tipo"] == "io" and l["ordem"] == o]
        t1 = mediana(linhas, "io", "tempo_wall_s", "csv2bin", o)
        t2 = mediana(linhas, "io", "tempo_wall_s", "bin2csv", o)
        tam_csv = statistics.median([float(l["bytes_entrada"]) for l in linhas_o
                                     if l["alvo"] == "csv2bin"])
        tam_bin = statistics.median([float(l["bytes_saida"]) for l in linhas_o
                                     if l["alvo"] == "csv2bin"])
        vaz["lê CSV"].append(tam_csv / 1e6 / t1)
        vaz["grava bin"].append(tam_bin / 1e6 / t1)
        vaz["lê bin"].append(tam_bin / 1e6 / t2)
        vaz["grava CSV"].append(tam_csv / 1e6 / t2)

    grupos = ["lê CSV", "grava bin", "lê bin", "grava CSV"]
    cores = [COR_CSV, COR_BIN, COR_BIN, COR_CSV]
    largura = 0.2
    for k, (g, cor) in enumerate(zip(grupos, cores)):
        pos = [i + (k - 1.5) * (largura + 0.01) for i in x]
        b = ax2.bar(pos, vaz[g], largura - 0.02, color=cor, zorder=3, linewidth=0)
        rotular_barras(ax2, b, vaz[g], "{:.0f}")
    estilizar(ax2, titulo="Vazão efetiva por lado (CSV x binário)", ylabel="MB/s")
    ax2.set_xticks(list(x))
    ax2.set_xticklabels([f"n={o}" for o in ordens])
    from matplotlib.patches import Patch
    ax2.legend(handles=[Patch(color=COR_CSV, label="lado texto (CSV)"),
                        Patch(color=COR_BIN, label="lado binário")],
               frameon=False, fontsize=6.5, ncol=2,
               loc="upper center", bbox_to_anchor=(0.5, -0.16))

    fig.suptitle(f"E/S: CSV vs binário — {maquina}", fontsize=10, color=TINTA)
    fig.tight_layout(rect=(0, 0, 1, 0.93))
    salvar(fig, os.path.join(dir_fig, f"io_csv_vs_bin_{maquina}.png"))


# --------------------------- tabelas ---------------------------
def escrever_tabelas(linhas, maquina, dir_tab):
    ordens = ordens_de(linhas, "matmul")
    caminho_g = os.path.join(dir_tab, f"tabela_gflops_{maquina}.csv")
    with open(caminho_g, "w", newline="", encoding="utf-8") as f:
        w = csv.writer(f)
        w.writerow(["ordem", "alvo", "n_execucoes", "tempo_comp_s", "gflops", "speedup_vs_base"])
        base_por_ordem = {
            o: mediana(linhas, "matmul", "gflops", "base", o) for o in ordens
        }
        for o in ordens:
            for alvo in ALVOS:
                n = len([l for l in linhas if l["tipo"] == "matmul"
                         and l["alvo"] == alvo and l["ordem"] == o])
                gf = mediana(linhas, "matmul", "gflops", alvo, o)
                tc = mediana(linhas, "matmul", "tempo_comp_s", alvo, o)
                speedup = gf / base_por_ordem[o]
                w.writerow([o, alvo, n, f"{tc:.6f}", f"{gf:.4f}", f"{speedup:.2f}"])
    print(f"[tabela] {caminho_g}")

    caminho_io = os.path.join(dir_tab, f"tabela_io_{maquina}.csv")
    ordens_io = ordens_de(linhas, "io")
    with open(caminho_io, "w", newline="", encoding="utf-8") as f:
        w = csv.writer(f)
        w.writerow(["ordem", "operacao", "n_execucoes", "tempo_wall_s",
                    "bytes_entrada", "bytes_saida", "vazao_MB_s"])
        for o in ordens_io:
            for op in ("csv2bin", "bin2csv"):
                n = len([l for l in linhas if l["tipo"] == "io"
                         and l["alvo"] == op and l["ordem"] == o])
                t = mediana(linhas, "io", "tempo_wall_s", op, o)
                linhas_op = [l for l in linhas if l["tipo"] == "io"
                             and l["alvo"] == op and l["ordem"] == o]
                be = statistics.median([float(l["bytes_entrada"]) for l in linhas_op])
                bs = statistics.median([float(l["bytes_saida"]) for l in linhas_op])
                w.writerow([o, op, n, f"{t:.6f}", f"{be:.0f}", f"{bs:.0f}",
                            f"{(be + bs) / 1e6 / t:.1f}"])
    print(f"[tabela] {caminho_io}")

    # Markdown para colar direto no relatório
    print("\n--- tabela GFLOPS (markdown) ---")
    print("| ordem | alvo | execuções | TEMPO_COMP (s) | GFLOPS | speedup vs base |")
    print("|---|---|---|---|---|---|")
    for o in ordens:
        base_gf = mediana(linhas, "matmul", "gflops", "base", o)
        for alvo in ALVOS:
            n = len([l for l in linhas if l["tipo"] == "matmul"
                     and l["alvo"] == alvo and l["ordem"] == o])
            gf = mediana(linhas, "matmul", "gflops", alvo, o)
            tc = mediana(linhas, "matmul", "tempo_comp_s", alvo, o)
            print(f"| {o} | {alvo} | {n} | {tc:.6f} | {gf:.4f} | {gf / base_gf:.2f}x |")

    print("\n--- tabela E/S (markdown) ---")
    print("| ordem | operação | execuções | tempo (s) | bytes entrada | bytes saída | MB/s |")
    print("|---|---|---|---|---|---|---|")
    for o in ordens_io:
        for op in ("csv2bin", "bin2csv"):
            linhas_op = [l for l in linhas if l["tipo"] == "io"
                         and l["alvo"] == op and l["ordem"] == o]
            t = mediana(linhas, "io", "tempo_wall_s", op, o)
            be = statistics.median([float(l["bytes_entrada"]) for l in linhas_op])
            bs = statistics.median([float(l["bytes_saida"]) for l in linhas_op])
            print(f"| {o} | {op} | {len(linhas_op)} | {t:.6f} | {be:.0f} | {bs:.0f} | "
                  f"{(be + bs) / 1e6 / t:.1f} |")


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--bench", default="maquinas/*/benchmark_*.csv",
                        help="padrão glob dos benchmarks")
    parser.add_argument("--figuras", default="figuras")
    parser.add_argument("--tabelas", default="tabelas")
    args = parser.parse_args()

    caminhos = sorted(glob.glob(args.bench))
    if not caminhos:
        print(f"nenhum benchmark encontrado para '{args.bench}' "
              "(rode 'make bench' antes).", file=sys.stderr)
        return 1

    configurar_estilo()
    os.makedirs(args.figuras, exist_ok=True)
    os.makedirs(args.tabelas, exist_ok=True)

    linhas = carregar(caminhos)
    for maquina in sorted({l["maquina"] for l in linhas}):
        linhas_maq = [l for l in linhas if l["maquina"] == maquina]
        print(f"== maquina: {maquina} ({len(linhas_maq)} linhas validas) ==")
        fig_gflops(linhas_maq, maquina, args.figuras)
        fig_tempo(linhas_maq, maquina, args.figuras, "tempo_comp_s",
                  "tempo_comp_por_alvo", "TEMPO_COMP por alvo", "segundos")
        fig_tempo(linhas_maq, maquina, args.figuras, "tempo_io_s",
                  "tempo_io_por_alvo", "TEMPO_IO por alvo (constante = método consistente)",
                  "segundos")
        fig_io(linhas_maq, maquina, args.figuras)
        escrever_tabelas(linhas_maq, maquina, args.tabelas)
    return 0


if __name__ == "__main__":
    sys.exit(main())
