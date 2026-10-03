#ifndef TRABALHO_PRATICO_MATRIZ_H
#define TRABALHO_PRATICO_MATRIZ_H

#include <stddef.h>
#include <stdint.h>

/*
 * Alinhamento dos buffers de matriz, em bytes: uma linha de cache x86-64.
 * Cobre a largura de AVX2 (32 B) e permite AVX-512 (64 B) em máquinas que
 * a tenham. O enunciado exige disposição linear contígua row-major.
 */
#define MATRIZ_ALINHAMENTO 64u

typedef struct {
    float   *dados;  /* m*n floats contíguos, row-major, alinhados a MATRIZ_ALINHAMENTO */
    uint64_t m;      /* número de linhas  */
    uint64_t n;      /* número de colunas */
} Matriz;

/* Aloca mat->dados com alinhamento de MATRIZ_ALINHAMENTO. Retorna 0 em sucesso, -1 em erro. */
int matriz_alocar(Matriz *mat, uint64_t m, uint64_t n);

/* Libera o buffer e zera os campos. Seguro para matriz já liberada/vazia. */
void matriz_liberar(Matriz *mat);

/* Verifica m > 0, n > 0 e m*n*sizeof(float) sem overflow de size_t. */
int matriz_dimensoes_validas(uint64_t m, uint64_t n);

/* Tamanho do payload em bytes (m*n*4). */
size_t matriz_bytes_payload(const Matriz *mat);

#endif /* TRABALHO_PRATICO_MATRIZ_H */
