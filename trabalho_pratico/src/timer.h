#ifndef TRABALHO_PRATICO_TIMER_H
#define TRABALHO_PRATICO_TIMER_H

#include <time.h>

/*
 * Retorna o tempo monotônico em segundos (precisão de nanossegundos).
 *
 * É exatamente a função exigida no enunciado (seção 4.1.A): relógio
 * CLOCK_MONOTONIC, imune a ajustes de hora do sistema.
 */
static inline double obter_tempo_segundos(void) {
    struct timespec ts;
    clock_gettime(CLOCK_MONOTONIC, &ts);
    return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
}

#endif /* TRABALHO_PRATICO_TIMER_H */
