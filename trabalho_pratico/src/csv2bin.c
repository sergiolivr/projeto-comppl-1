#ifndef _POSIX_C_SOURCE
#define _POSIX_C_SOURCE 200809L
#endif

#include <locale.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "bin.h"
#include "csv.h"
#include "matriz.h"

/*
 * csv2bin <entrada.csv> <saida.bin>
 *
 * Aloca um único buffer contíguo de 16 + M*N*4 bytes, grava o cabeçalho nos
 * primeiros 16 e preenche o payload a partir do offset 16 — a gravação em
 * disco é então UMA única fwrite, sem nenhuma cópia intermediária.
 */
int main(int argc, char **argv) {
    setlocale(LC_ALL, "C");

    if (argc != 3) {
        fprintf(stderr, "uso: %s <entrada.csv> <saida.bin>\n", argv[0]);
        return 2;
    }

    FILE *entrada = fopen(argv[1], "r");
    if (entrada == NULL) {
        fprintf(stderr, "csv2bin: nao foi possivel abrir '%s'\n", argv[1]);
        return 1;
    }

    uint64_t m = 0;
    uint64_t n = 0;
    if (csv_ler_dimensoes(entrada, &m, &n) != 0) {
        fclose(entrada);
        return 1;
    }
    if (!matriz_dimensoes_validas(m, n)) {
        fprintf(stderr, "csv2bin: dimensoes fora dos limites utilizaveis\n");
        fclose(entrada);
        return 1;
    }

    const size_t bytes_payload = (size_t)(m * n) * sizeof(float);
    if (bytes_payload > SIZE_MAX - 16u) {
        fprintf(stderr, "csv2bin: matriz grande demais\n");
        fclose(entrada);
        return 1;
    }
    const size_t bytes_total = 16u + bytes_payload;

    void *bloco = NULL;
    if (posix_memalign(&bloco, MATRIZ_ALINHAMENTO, bytes_total) != 0) {
        fprintf(stderr, "csv2bin: falha ao alocar %zu bytes\n", bytes_total);
        fclose(entrada);
        return 1;
    }

    memcpy(bloco, &m, sizeof(uint64_t));
    memcpy((char *)bloco + sizeof(uint64_t), &n, sizeof(uint64_t));
    float *dados = (float *)((char *)bloco + 16u);

    for (uint64_t i = 0; i < m; i++) {
        if (csv_ler_linha(entrada, dados + i * n, n) != (long)n) {
            fprintf(stderr, "csv2bin: erro na linha %llu de '%s'\n",
                    (unsigned long long)i + 2, argv[1]);
            free(bloco);
            fclose(entrada);
            return 1;
        }
    }

    /* Nada além de linhas em branco pode sobrar no arquivo. */
    int c;
    while ((c = fgetc(entrada)) != EOF) {
        if (c != '\n' && c != '\r') {
            fprintf(stderr, "csv2bin: conteudo em excesso em '%s'\n", argv[1]);
            free(bloco);
            fclose(entrada);
            return 1;
        }
    }
    fclose(entrada);

    if (bin_escrever_bloco(argv[2], bloco, bytes_total) != 0) {
        free(bloco);
        return 1;
    }

    free(bloco);
    return 0;
}
