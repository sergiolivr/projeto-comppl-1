#ifndef TRABALHO_PRATICO_MATMUL_KERNEL_H
#define TRABALHO_PRATICO_MATMUL_KERNEL_H

#include "matriz.h"

/*
 * C = A x B, com A (M x K), B (K x N) e C (M x N) em float, row-major.
 *
 * Contrato: A->n == B->m; C alocada com A->m x B->n; buffers alinhados a
 * MATRIZ_ALINHAMENTO e sem sobreposição entre A, B e C.
 *
 * Função global (não-static, não-inline) de propósito: mantém o símbolo
 * "matmul_kernel" presente nos quatro binários, permitindo a inspeção
 * direta via `objdump --disassemble=matmul_kernel` (rastreabilidade).
 */
void matmul_kernel(const Matriz *A, const Matriz *B, Matriz *C);

#endif /* TRABALHO_PRATICO_MATMUL_KERNEL_H */
