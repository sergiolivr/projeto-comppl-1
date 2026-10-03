#ifndef _POSIX_C_SOURCE
#define _POSIX_C_SOURCE 200809L
#endif

#include "bin.h"

#include <errno.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <sys/stat.h>

int bin_ler_matriz(const char *caminho, Matriz *saida) {
    FILE *f = fopen(caminho, "rb");
    if (f == NULL) {
        fprintf(stderr, "bin: nao foi possivel abrir '%s': %s\n", caminho, strerror(errno));
        return -1;
    }

    uint64_t cabecalho[2];
    if (fread(cabecalho, sizeof(uint64_t), 2, f) != 2) {
        fprintf(stderr, "bin: '%s' truncado no cabecalho (esperados 16 bytes)\n", caminho);
        fclose(f);
        return -1;
    }
    const uint64_t m = cabecalho[0];
    const uint64_t n = cabecalho[1];

    if (!matriz_dimensoes_validas(m, n)) {
        fprintf(stderr, "bin: '%s' com dimensoes invalidas (%llu x %llu)\n",
                caminho, (unsigned long long)m, (unsigned long long)n);
        fclose(f);
        return -1;
    }

    /* Valida o tamanho real do arquivo antes de alocar: pega cabeçalho
     * corrompido e arquivo truncado sem tentar reservar memória absurda. */
    struct stat st;
    if (fstat(fileno(f), &st) != 0) {
        fprintf(stderr, "bin: falha em fstat('%s'): %s\n", caminho, strerror(errno));
        fclose(f);
        return -1;
    }
    const uint64_t esperado = 16u + m * n * 4u;
    if ((uint64_t)st.st_size != esperado) {
        fprintf(stderr, "bin: '%s' tem %lld bytes; esperado %llu (%llu x %llu)\n",
                caminho, (long long)st.st_size, (unsigned long long)esperado,
                (unsigned long long)m, (unsigned long long)n);
        fclose(f);
        return -1;
    }

    if (matriz_alocar(saida, m, n) != 0) {
        fclose(f);
        return -1;
    }

    const size_t total = (size_t)(m * n);
    if (fread(saida->dados, sizeof(float), total, f) != total) {
        fprintf(stderr, "bin: falha ao ler o payload de '%s'\n", caminho);
        matriz_liberar(saida);
        fclose(f);
        return -1;
    }

    fclose(f);
    return 0;
}

int bin_escrever_matriz(const char *caminho, const Matriz *mat) {
    FILE *f = fopen(caminho, "wb");
    if (f == NULL) {
        fprintf(stderr, "bin: nao foi possivel criar '%s': %s\n", caminho, strerror(errno));
        return -1;
    }

    const uint64_t cabecalho[2] = { mat->m, mat->n };
    if (fwrite(cabecalho, sizeof(uint64_t), 2, f) != 2) {
        fprintf(stderr, "bin: falha ao escrever o cabecalho de '%s'\n", caminho);
        fclose(f);
        return -1;
    }

    const size_t total = (size_t)(mat->m * mat->n);
    if (fwrite(mat->dados, sizeof(float), total, f) != total) {
        fprintf(stderr, "bin: falha ao escrever o payload de '%s'\n", caminho);
        fclose(f);
        return -1;
    }

    if (fclose(f) != 0) {
        fprintf(stderr, "bin: falha ao fechar '%s': %s\n", caminho, strerror(errno));
        return -1;
    }
    return 0;
}

int bin_escrever_bloco(const char *caminho, const void *bloco, size_t bytes) {
    FILE *f = fopen(caminho, "wb");
    if (f == NULL) {
        fprintf(stderr, "bin: nao foi possivel criar '%s': %s\n", caminho, strerror(errno));
        return -1;
    }

    if (fwrite(bloco, 1, bytes, f) != bytes) {
        fprintf(stderr, "bin: falha ao escrever %zu bytes em '%s'\n", bytes, caminho);
        fclose(f);
        return -1;
    }

    if (fclose(f) != 0) {
        fprintf(stderr, "bin: falha ao fechar '%s': %s\n", caminho, strerror(errno));
        return -1;
    }
    return 0;
}
