#!/usr/bin/env python3
"""Gera as matrizes de teste do trabalho prático no formato CSV padronizado.

- Matrizes quadradas A e B para cada ordem pedida (padrão: 1000, 2000, 4000),
  com valores uniformes em [-1, 1) formatados com %.6f (ponto decimal, como
  exige o enunciado) e semente determinística por arquivo.
- Fixtures pequenas (--fixtures) com resultado exato conhecido para a
  verificação de correção: A(4x3) x B(3x2) = [[4,5],[10,11],[16,17],[22,23]].

A escrita é feita em streaming (nunca monta o arquivo inteiro em memória).
Usa numpy quando disponível (mais rápido); caso contrário, cai para a
biblioteca padrão, com o mesmo esquema de sementes.
"""

import argparse
import os
import random
import sys
import time

try:
    import numpy as np
except ImportError:  # pragma: no cover - ambiente sem numpy
    np = None

FIXTURES = {
    "a_4x3.csv": (
        4, 3,
        [[1, 2, 3], [4, 5, 6], [7, 8, 9], [10, 11, 12]],
    ),
    "b_3x2.csv": (
        3, 2,
        [[1, 0], [0, 1], [1, 1]],
    ),
    # C = A x B, conforme acima (resultado exato em ponto flutuante)
    "c_esperado_4x2.csv": (
        4, 2,
        [[4, 5], [10, 11], [16, 17], [22, 23]],
    ),
}


def semente_do_arquivo(seed: int, m: int, n: int, nome: str) -> int:
    """Semente determinística derivada de (seed, dimensões, nome)."""
    return seed + m * 1_000_003 + n * 97 + ord(nome[0])


def gerar_csv_numpy(caminho: str, m: int, n: int, seed_arquivo: int) -> None:
    rng = np.random.default_rng([seed_arquivo, m, n])
    bloco_linhas = 512
    with open(caminho, "w", buffering=1 << 20) as f:
        f.write(f"{m},{n}\n")
        for i0 in range(0, m, bloco_linhas):
            linhas = min(bloco_linhas, m - i0)
            bloco = rng.uniform(-1.0, 1.0, size=(linhas, n))
            np.savetxt(f, bloco, fmt="%.6f", delimiter=",")


def gerar_csv_padrao(caminho: str, m: int, n: int, seed_arquivo: int) -> None:
    rng = random.Random(seed_arquivo)
    with open(caminho, "w", buffering=1 << 20) as f:
        f.write(f"{m},{n}\n")
        for _ in range(m):
            f.write(",".join(f"{rng.uniform(-1.0, 1.0):.6f}" for _ in range(n)))
            f.write("\n")


def gerar_csv(caminho: str, m: int, n: int, nome: str, seed: int, forcar: bool) -> bool:
    """Gera o arquivo se necessário. Retorna True se (re)gerou."""
    if os.path.exists(caminho) and not forcar:
        print(f"[pula]   {caminho} (ja existe; use --forcar para refazer)")
        return False

    t0 = time.monotonic()
    seed_arquivo = semente_do_arquivo(seed, m, n, nome)
    if np is not None:
        gerar_csv_numpy(caminho, m, n, seed_arquivo)
    else:
        gerar_csv_padrao(caminho, m, n, seed_arquivo)
    dt = time.monotonic() - t0
    bytes_ = os.path.getsize(caminho)
    print(f"[gerado] {caminho}: {m}x{n}, {bytes_ / 1e6:.1f} MB, {dt:.1f} s")
    return True


def escrever_matriz_fixa(caminho: str, m: int, n: int, valores: list) -> None:
    with open(caminho, "w") as f:
        f.write(f"{m},{n}\n")
        for linha in valores:
            f.write(",".join(f"{v:.6f}" for v in linha))
            f.write("\n")


def gerar_fixtures(diretorio: str) -> None:
    os.makedirs(diretorio, exist_ok=True)
    for nome, (m, n, valores) in FIXTURES.items():
        caminho = os.path.join(diretorio, nome)
        escrever_matriz_fixa(caminho, m, n, valores)
        print(f"[fixture] {caminho}")


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--ordens", default="1000 2000 4000",
                        help="ordens das matrizes quadradas, separadas por espaço")
    parser.add_argument("--saida", default="dados/csv",
                        help="diretório de saída dos CSVs grandes")
    parser.add_argument("--seed", type=int, default=2026,
                        help="semente base (determinística por arquivo)")
    parser.add_argument("--fixtures", action="store_true",
                        help="gera as fixtures pequenas em dados/fixtures/")
    parser.add_argument("--fixtures-dir", default="dados/fixtures")
    parser.add_argument("--forcar", action="store_true",
                        help="regera arquivos já existentes")
    args = parser.parse_args()

    if args.fixtures:
        gerar_fixtures(args.fixtures_dir)

    ordens = [int(x) for x in args.ordens.split() if x]
    if ordens:
        os.makedirs(args.saida, exist_ok=True)
        print(f"# numpy: {'disponivel' if np is not None else 'AUSENTE (usando biblioteca padrao)'}")
        for ordem in ordens:
            for nome in ("A", "B"):
                caminho = os.path.join(args.saida, f"mat_{ordem}x{ordem}_{nome}.csv")
                gerar_csv(caminho, ordem, ordem, nome, args.seed, args.forcar)
    return 0


if __name__ == "__main__":
    sys.exit(main())
