#ifndef TRABALHO_PRATICO_BIN_H
#define TRABALHO_PRATICO_BIN_H

#include <stddef.h>

#include "matriz.h"

/*
 * Formato binário proprietário (enunciado, seção 2.2):
 *   cabeçalho : 2 x uint64_t (M, N), 16 bytes, host byte order;
 *   payload   : M*N floats IEEE 754 de precisão simples, row-major contíguo.
 */

/* Lê e valida ('tamanho do arquivo == 16 + M*N*4') antes de alocar. 0 = sucesso. */
int bin_ler_matriz(const char *caminho, Matriz *saida);

/* Escreve cabeçalho + payload em duas fwrite (o payload sai direto do buffer
 * alinhado da matriz, sem cópia). 0 = sucesso. */
int bin_escrever_matriz(const char *caminho, const Matriz *mat);

/* Escreve um bloco já montado (cabeçalho + payload contíguos) em uma única
 * fwrite — usado pelo csv2bin, que constrói o bloco inteiro em um só buffer. */
int bin_escrever_bloco(const char *caminho, const void *bloco, size_t bytes);

#endif /* TRABALHO_PRATICO_BIN_H */
