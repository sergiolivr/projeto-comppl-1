#ifndef TRABALHO_PRATICO_CSV_H
#define TRABALHO_PRATICO_CSV_H

#include <stddef.h>
#include <stdint.h>
#include <stdio.h>

/*
 * Formato texto (enunciado, seção 2.1):
 *   linha 1 : "M,N\n" (inteiros positivos, sem espaços);
 *   linhas 2..M+1 : N floats separados por vírgula, sem espaços, "%.6f", terminados em "\n".
 *
 * Os três programas fixam setlocale(LC_ALL, "C") — o locale da máquina é
 * pt_BR.UTF-8, que usaria vírgula como separador decimal.
 */

/* Lê a linha de dimensões. Retorna 0 em sucesso, -1 em arquivo malformado. */
int csv_ler_dimensoes(FILE *f, uint64_t *m, uint64_t *n);

/* Lê uma linha com exatamente n floats. Retorna n em sucesso, -1 em erro. */
long csv_ler_linha(FILE *f, float *destino, uint64_t n);

/* Formata um float como "%.6f". Retorna o número de caracteres escritos. */
size_t csv_formatar_float(char *buf, size_t capacidade, float valor);

#endif /* TRABALHO_PRATICO_CSV_H */
