#ifndef _POSIX_C_SOURCE
#define _POSIX_C_SOURCE 200809L
#endif

#include <locale.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "bin.h"
#include "matmul_kernel.h"
#include "matriz.h"
#include "timer.h"

/*
 * Motor de multiplicação matricial (enunciado, seção 4).
 *
 * Ordem dos laços: i -> k -> j. O laço mais interno percorre a linha de C
 * e a linha correspondente de B com passo 1, e não é uma redução — cada
 * C[i][j] acumula de forma independente —, o que o torna vetorizável pelo
 * GCC sem exigir reassociação de ponto flutuante (-ffast-math). O escalar
 * aik sai da memória uma única vez por (i, k) e alimenta N multiplicações.
 */
void matmul_kernel(const Matriz *A, const Matriz *B, Matriz *C) {
    const uint64_t M = A->m;
    const uint64_t K = A->n;
    const uint64_t N = B->n;

    const float *restrict a = __builtin_assume_aligned(A->dados, MATRIZ_ALINHAMENTO);
    const float *restrict b = __builtin_assume_aligned(B->dados, MATRIZ_ALINHAMENTO);
    float       *restrict c = __builtin_assume_aligned(C->dados, MATRIZ_ALINHAMENTO);

    /* C é acumulador: a zeragem faz parte do algoritmo e fica dentro do
     * TEMPO_COMP (~0,2% do custo em 4000³; escolha conservadora). */
    memset(c, 0, (size_t)(M * N) * sizeof(float));

    for (uint64_t i = 0; i < M; i++) {
        const float *restrict ai = a + i * K;
        float       *restrict ci = c + i * N;

        for (uint64_t k = 0; k < K; k++) {
            const float aik = ai[k];
            const float *restrict bk = b + k * N;

            /* Prólogo: avança ci até a fronteira de 32 bytes. Como N é
             * dinâmico, o GCC não consegue provar o alinhamento de cada
             * linha de C; este peeling garante que o corpo principal use
             * cargas alinhadas (vmovaps) sem abrir mão da correção para
             * qualquer N (inclusive ímpar). */
            const size_t prologo =
                (size_t)((32u - ((uintptr_t)ci & 31u)) & 31u) / sizeof(float);
            size_t j = 0;
            for (; j < prologo && j < N; j++) {
                ci[j] += aik * bk[j];
            }

            float       *restrict cj = __builtin_assume_aligned(ci + j, 32);
            const float *restrict bj = bk + j;
            for (uint64_t r = 0; j + r < N; r++) {
                cj[r] += aik * bj[r];
            }
        }
    }
}

int main(int argc, char **argv) {
    /* O locale da máquina é pt_BR.UTF-8 (vírgula decimal); fixar "C" garante
     * ponto decimal tanto no parse quanto na impressão dos tempos. */
    setlocale(LC_ALL, "C");

    if (argc != 4) {
        fprintf(stderr, "uso: %s <matrizA.bin> <matrizB.bin> <resultado.bin>\n", argv[0]);
        return 2;
    }

    Matriz A = { NULL, 0, 0 };
    Matriz B = { NULL, 0, 0 };
    Matriz C = { NULL, 0, 0 };

    /* TEMPO_IO = leitura de A + leitura de B + escrita de C (alocação fica fora). */
    const double t0 = obter_tempo_segundos();
    if (bin_ler_matriz(argv[1], &A) != 0) {
        return 1;
    }
    const double t1 = obter_tempo_segundos();
    if (bin_ler_matriz(argv[2], &B) != 0) {
        matriz_liberar(&A);
        return 1;
    }
    const double t2 = obter_tempo_segundos();

    if (A.n != B.m) {
        fprintf(stderr, "matmul: dimensoes incompativeis: A %llux%llu, B %llux%llu\n",
                (unsigned long long)A.m, (unsigned long long)A.n,
                (unsigned long long)B.m, (unsigned long long)B.n);
        matriz_liberar(&A);
        matriz_liberar(&B);
        return 1;
    }

    if (matriz_alocar(&C, A.m, B.n) != 0) {
        matriz_liberar(&A);
        matriz_liberar(&B);
        return 1;
    }

    /* TEMPO_COMP = intervalo estrito do laço computacional. */
    const double t3 = obter_tempo_segundos();
    matmul_kernel(&A, &B, &C);
    const double t4 = obter_tempo_segundos();

    if (bin_escrever_matriz(argv[3], &C) != 0) {
        matriz_liberar(&A);
        matriz_liberar(&B);
        matriz_liberar(&C);
        return 1;
    }
    const double t5 = obter_tempo_segundos();

    const double tempo_io = (t1 - t0) + (t2 - t1) + (t5 - t4);
    const double tempo_comp = t4 - t3;
    const double gflops =
        2.0 * (double)A.m * (double)A.n * (double)B.n / (tempo_comp * 1e9);

    /* Saída padronizada: exatamente uma linha, nada decorativo. */
    printf("TEMPO_IO: %.6f | TEMPO_COMP: %.6f | GFLOPS: %.4f\n",
           tempo_io, tempo_comp, gflops);

    matriz_liberar(&A);
    matriz_liberar(&B);
    matriz_liberar(&C);
    return 0;
}
