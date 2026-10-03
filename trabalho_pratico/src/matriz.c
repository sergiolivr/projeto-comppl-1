#ifndef _POSIX_C_SOURCE
#define _POSIX_C_SOURCE 200809L
#endif

#include "matriz.h"

#include <stdio.h>
#include <stdlib.h>

int matriz_dimensoes_validas(uint64_t m, uint64_t n) {
    if (m == 0 || n == 0) {
        return 0;
    }
    /* m*n <= SIZE_MAX/sizeof(float), sem overflow: equivale a m*n*4 <= SIZE_MAX. */
    const uint64_t limite = (uint64_t)(SIZE_MAX / sizeof(float));
    return m <= limite / n;
}

size_t matriz_bytes_payload(const Matriz *mat) {
    return (size_t)(mat->m * mat->n) * sizeof(float);
}

int matriz_alocar(Matriz *mat, uint64_t m, uint64_t n) {
    mat->dados = NULL;
    mat->m = 0;
    mat->n = 0;

    if (!matriz_dimensoes_validas(m, n)) {
        fprintf(stderr, "matriz: dimensoes invalidas (%llu x %llu)\n",
                (unsigned long long)m, (unsigned long long)n);
        return -1;
    }

    const size_t bytes = (size_t)(m * n) * sizeof(float);
    void *p = NULL;
    if (posix_memalign(&p, MATRIZ_ALINHAMENTO, bytes) != 0) {
        fprintf(stderr, "matriz: falha ao alocar %zu bytes (%llu x %llu)\n",
                bytes, (unsigned long long)m, (unsigned long long)n);
        return -1;
    }

    mat->dados = (float *)p;
    mat->m = m;
    mat->n = n;
    return 0;
}

void matriz_liberar(Matriz *mat) {
    free(mat->dados);
    mat->dados = NULL;
    mat->m = 0;
    mat->n = 0;
}
