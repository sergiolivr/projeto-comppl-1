#!/usr/bin/env python3
"""Compara duas matrizes no formato .bin do trabalho e reporta a divergência.

Base numérica para o relatório: quantifica o efeito do -ffast-math (FMA +
reassociação) entre alvos de otimização, dentro de tolerâncias explícitas.

Uso: comparar_saidas.py A.bin B.bin [--rtol 1e-4] [--atol 1e-3]
Sai com 0 se todos os elementos satisfazem |dif| <= atol + rtol*|ref|.

Sobre o atol: a acumulação de K termos em precisão simples tem erro absoluto
da ordem de K*eps*|termo|; para K = 4000 o desvio observado base x fast fica
em ~5e-5, enquanto elementos próximos de zero tornam a tolerância puramente
relativa sem sentido. O padrão atol=1e-3 cobre as ordens do trabalho; para
checagens exatas em matrizes pequenas use --atol 1e-6.
"""

import argparse
import array
import random
import struct
import sys

CABECALHO = struct.Struct("<QQ")  # host byte order (little-endian)


def ler_cabecalho(caminho: str):
    with open(caminho, "rb") as f:
        dados = f.read(CABECALHO.size)
    if len(dados) != CABECALHO.size:
        raise ValueError(f"'{caminho}': cabecalho truncado")
    m, n = CABECALHO.unpack(dados)
    return m, n


def carregar(caminho: str):
    m, n = ler_cabecalho(caminho)
    total = m * n
    esperado = CABECALHO.size + total * 4
    with open(caminho, "rb") as f:
        f.seek(0, 2)
        if f.tell() != esperado:
            raise ValueError(f"'{caminho}': tamanho {f.tell()} != esperado {esperado}")
        f.seek(CABECALHO.size)
        dados = array.array("f")
        dados.frombytes(f.read(total * 4))
    return m, n, dados


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("referencia")
    parser.add_argument("alvo")
    parser.add_argument("--rtol", type=float, default=1e-4)
    parser.add_argument("--atol", type=float, default=1e-3)
    parser.add_argument("--amostra-max", type=int, default=2_000_000,
                        help="limite de elementos avaliados por amostragem aleatória")
    args = parser.parse_args()

    m_ref, n_ref, ref = carregar(args.referencia)
    m_alvo, n_alvo, alvo = carregar(args.alvo)
    if (m_ref, n_ref) != (m_alvo, n_alvo):
        print(f"dimensoes diferentes: {m_ref}x{n_ref} vs {m_alvo}x{n_alvo}", file=sys.stderr)
        return 2

    total = m_ref * n_ref
    if total <= args.amostra_max:
        indices = range(total)
        amostrado = False
    else:
        rng = random.Random(1)
        indices = [rng.randrange(total) for _ in range(args.amostra_max)]
        amostrado = True

    max_abs = 0.0
    max_rel = 0.0
    violacoes = 0
    for i in indices:
        r = ref[i]
        d = abs(alvo[i] - r)
        limite = args.atol + args.rtol * abs(r)
        if d > max_abs:
            max_abs = d
        if abs(r) > 0.0 and d / abs(r) > max_rel:
            max_rel = d / abs(r)
        if d > limite:
            violacoes += 1

    n_aval = len(indices)
    print(f"referencia : {args.referencia} ({m_ref}x{n_ref})")
    print(f"alvo       : {args.alvo}")
    print(f"elementos  : {n_aval}{' (amostra aleatoria)' if amostrado else ''}")
    print(f"max|dif|   : {max_abs:.3e}")
    print(f"max|dif|/|ref|: {max_rel:.3e}")
    print(f"tolerancia : atol={args.atol:.1e} rtol={args.rtol:.1e}")
    print(f"violacoes  : {violacoes}")
    if violacoes == 0:
        print("RESULTADO  : DENTRO DA TOLERANCIA")
        return 0
    print("RESULTADO  : FORA DA TOLERANCIA", file=sys.stderr)
    return 1


if __name__ == "__main__":
    sys.exit(main())
