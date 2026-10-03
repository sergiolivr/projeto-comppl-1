#ifndef _POSIX_C_SOURCE
#define _POSIX_C_SOURCE 200809L
#endif

#include "csv.h"

#include <ctype.h>
#include <stdio.h>
#include <stdlib.h>

int csv_ler_dimensoes(FILE *f, uint64_t *m, uint64_t *n) {
    char *linha = NULL;
    size_t cap = 0;
    if (getline(&linha, &cap, f) < 0) {
        fprintf(stderr, "csv: arquivo vazio (falta a linha de dimensoes)\n");
        free(linha);
        return -1;
    }

    if (!isdigit((unsigned char)linha[0])) {
        fprintf(stderr, "csv: linha de dimensoes malformada\n");
        free(linha);
        return -1;
    }

    char *fim = NULL;
    const unsigned long long valor_m = strtoull(linha, &fim, 10);
    if (*fim != ',') {
        fprintf(stderr, "csv: linha de dimensoes malformada (esperado 'M,N')\n");
        free(linha);
        return -1;
    }

    const char *p = fim + 1;
    if (!isdigit((unsigned char)*p)) {
        fprintf(stderr, "csv: linha de dimensoes malformada (coluna invalida)\n");
        free(linha);
        return -1;
    }
    const unsigned long long valor_n = strtoull(p, &fim, 10);
    if (*fim == '\r') {
        fim++;
    }
    if (*fim != '\n' && *fim != '\0') {
        fprintf(stderr, "csv: conteudo em excesso na linha de dimensoes\n");
        free(linha);
        return -1;
    }
    if (valor_m == 0 || valor_n == 0) {
        fprintf(stderr, "csv: dimensoes devem ser estritamente positivas\n");
        free(linha);
        return -1;
    }

    *m = (uint64_t)valor_m;
    *n = (uint64_t)valor_n;
    free(linha);
    return 0;
}

long csv_ler_linha(FILE *f, float *destino, uint64_t n) {
    char *linha = NULL;
    size_t cap = 0;
    if (getline(&linha, &cap, f) < 0) {
        free(linha);
        return -1;
    }

    const char *p = linha;
    for (uint64_t j = 0; j < n; j++) {
        char *fim = NULL;
        const float valor = strtof(p, &fim);
        if (fim == p) {
            fprintf(stderr, "csv: valor invalido na coluna %llu\n", (unsigned long long)j + 1);
            free(linha);
            return -1;
        }
        destino[j] = valor;
        p = fim;

        if (j + 1 < n) {
            if (*p != ',') {
                fprintf(stderr, "csv: esperado ',' apos a coluna %llu\n", (unsigned long long)j + 1);
                free(linha);
                return -1;
            }
            p++;
        }
    }

    if (*p == '\r') {
        p++;
    }
    if (*p != '\n' && *p != '\0') {
        fprintf(stderr, "csv: valores em excesso na linha (esperados %llu)\n",
                (unsigned long long)n);
        free(linha);
        return -1;
    }

    free(linha);
    return (long)n;
}

size_t csv_formatar_float(char *buf, size_t capacidade, float valor) {
    const int escritos = snprintf(buf, capacidade, "%.6f", (double)valor);
    return (escritos > 0) ? (size_t)escritos : 0;
}
