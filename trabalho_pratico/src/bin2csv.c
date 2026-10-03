#ifndef _POSIX_C_SOURCE
#define _POSIX_C_SOURCE 200809L
#endif

#include <locale.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

#include "bin.h"
#include "csv.h"
#include "matriz.h"

/*
 * bin2csv <entrada.bin> <saida.csv>
 *
 * Lê o cabeçalho de 16 bytes, carrega o bloco contíguo e exporta no formato
 * texto padronizado. A formatação ("%.6f" por valor) é o custo dominante;
 * as linhas são montadas em um buffer de 1 MiB para amortizar as escritas.
 */
int main(int argc, char **argv) {
    setlocale(LC_ALL, "C");

    if (argc != 3) {
        fprintf(stderr, "uso: %s <entrada.bin> <saida.csv>\n", argv[0]);
        return 2;
    }

    Matriz mat = { NULL, 0, 0 };
    if (bin_ler_matriz(argv[1], &mat) != 0) {
        return 1;
    }

    FILE *saida = fopen(argv[2], "w");
    if (saida == NULL) {
        fprintf(stderr, "bin2csv: nao foi possivel criar '%s'\n", argv[2]);
        matriz_liberar(&mat);
        return 1;
    }

    if (fprintf(saida, "%llu,%llu\n",
                (unsigned long long)mat.m, (unsigned long long)mat.n) < 0) {
        fprintf(stderr, "bin2csv: falha ao escrever o cabecalho\n");
        fclose(saida);
        matriz_liberar(&mat);
        return 1;
    }

    const size_t CAP = 1u << 20; /* 1 MiB */
    char *buf = malloc(CAP);
    if (buf == NULL) {
        fprintf(stderr, "bin2csv: falha ao alocar buffer de linha\n");
        fclose(saida);
        matriz_liberar(&mat);
        return 1;
    }

    size_t usado = 0;
    for (uint64_t i = 0; i < mat.m; i++) {
        for (uint64_t j = 0; j < mat.n; j++) {
            /* "%.6f" de um float chega a ~46 caracteres no pior caso; a
             * margem de 64 garante espaço para o valor e o separador. */
            if (usado + 64 > CAP) {
                if (fwrite(buf, 1, usado, saida) != usado) {
                    fprintf(stderr, "bin2csv: falha de escrita\n");
                    free(buf);
                    fclose(saida);
                    matriz_liberar(&mat);
                    return 1;
                }
                usado = 0;
            }
            usado += csv_formatar_float(buf + usado, CAP - usado,
                                        mat.dados[i * mat.n + j]);
            buf[usado++] = (j + 1 < mat.n) ? ',' : '\n';
        }
    }

    if (usado > 0 && fwrite(buf, 1, usado, saida) != usado) {
        fprintf(stderr, "bin2csv: falha de escrita final\n");
        free(buf);
        fclose(saida);
        matriz_liberar(&mat);
        return 1;
    }
    if (fclose(saida) != 0) {
        fprintf(stderr, "bin2csv: falha ao fechar '%s'\n", argv[2]);
        free(buf);
        matriz_liberar(&mat);
        return 1;
    }

    free(buf);
    matriz_liberar(&mat);
    return 0;
}
