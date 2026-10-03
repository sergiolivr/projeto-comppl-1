# ======================================================================
# Trabalho Prático — Otimização de Produto Matricial
#
# Alvos exigidos pelo enunciado (seção 5): matmul_base, matmul_o2,
# matmul_o3 e matmul_fast — o MESMO src/matmul.c compilado sob quatro
# configurações de flags do GCC. Cada configuração tem seu diretório
# próprio em build/, sem risco de mistura de objetos.
# ======================================================================

.DEFAULT_GOAL := all

CC       := gcc
SRCDIR   := src
BUILDDIR := build
DADOS    := dados
ALUNO    ?= aluno1
MAQ      := maquinas/$(ALUNO)

ORDENS ?= 1000 2000 4000
REPS   ?= 3

# Interpretador dos scripts Python. Se existir um .venv local (criado com
# `python3 -m venv .venv && .venv/bin/pip install matplotlib numpy`), ele é
# usado automaticamente; senão, o python3 do sistema.
PYTHON ?= $(shell if [ -x .venv/bin/python ]; then echo .venv/bin/python; else echo python3; fi)
# 4000^3 a -O0 custa minutos por execucao; uma repeticao ja e representativa.
REPS_ORDEM ?= 4000:base=1

# Flags comuns a todos os alvos: C11 estrito + POSIX (posix_memalign,
# getline, fileno) + contratação de FMA. Sem -ffp-contract=fast o modo ISO
# C11 desliga a fusão vmulps/vaddps em vfmadd*ps, contrariando a análise de
# assembly exigida no enunciado (seção 6.3.3).
CFLAGS_COMUNS := -std=c11 -D_POSIX_C_SOURCE=200809L -I$(SRCDIR) \
                 -Wall -Wextra -Wpedantic -ffp-contract=fast

# Flags literais do enunciado (seção 5).
FLAGS_base := -O0 -g0
FLAGS_o2   := -O2
FLAGS_o3   := -O3
FLAGS_fast := -O3 -march=native -ffast-math -funroll-loops

CABECALHOS := $(wildcard $(SRCDIR)/*.h)

FONTES_MATMUL  := $(SRCDIR)/matmul.c $(SRCDIR)/matriz.c $(SRCDIR)/bin.c
FONTES_CSV2BIN := $(SRCDIR)/csv2bin.c $(SRCDIR)/csv.c $(SRCDIR)/bin.c $(SRCDIR)/matriz.c
FONTES_BIN2CSV := $(SRCDIR)/bin2csv.c $(SRCDIR)/csv.c $(SRCDIR)/bin.c $(SRCDIR)/matriz.c

# ---------- utilitários de conversão (invocados como ./csv2bin) ----------
csv2bin: $(FONTES_CSV2BIN) $(CABECALHOS)
	$(CC) $(CFLAGS_COMUNS) -O2 $(FONTES_CSV2BIN) -o $@

bin2csv: $(FONTES_BIN2CSV) $(CABECALHOS)
	$(CC) $(CFLAGS_COMUNS) -O2 $(FONTES_BIN2CSV) -o $@

# ---------- motor matmul: quatro configurações do mesmo código-fonte ----------
$(BUILDDIR)/base/matmul: $(FONTES_MATMUL) $(CABECALHOS)
	@mkdir -p $(dir $@)
	$(CC) $(CFLAGS_COMUNS) $(FLAGS_base) $(FONTES_MATMUL) -o $@

$(BUILDDIR)/o2/matmul: $(FONTES_MATMUL) $(CABECALHOS)
	@mkdir -p $(dir $@)
	$(CC) $(CFLAGS_COMUNS) $(FLAGS_o2) $(FONTES_MATMUL) -o $@

$(BUILDDIR)/o3/matmul: $(FONTES_MATMUL) $(CABECALHOS)
	@mkdir -p $(dir $@)
	$(CC) $(CFLAGS_COMUNS) $(FLAGS_o3) $(FONTES_MATMUL) -o $@

$(BUILDDIR)/fast/matmul: $(FONTES_MATMUL) $(CABECALHOS)
	@mkdir -p $(dir $@)
	$(CC) $(CFLAGS_COMUNS) $(FLAGS_fast) $(FONTES_MATMUL) -o $@

# Variante -O0 -g usada apenas para gerar a desmontagem com fonte
# intercalada (objdump -S); as flags do enunciado usam -g0, que remove a
# informação de linha. Não vai para a entrega.
$(BUILDDIR)/base_g/matmul: $(FONTES_MATMUL) $(CABECALHOS)
	@mkdir -p $(dir $@)
	$(CC) $(CFLAGS_COMUNS) -O0 -g $(FONTES_MATMUL) -o $@

# ---------- instalação na árvore de entrega ----------
# Sem strip: o objdump precisa dos símbolos para -S e --disassemble=matmul_kernel.
$(MAQ)/bin/matmul_base: $(BUILDDIR)/base/matmul
	@mkdir -p $(MAQ)/bin
	install -m 0755 $< $@

$(MAQ)/bin/matmul_o2: $(BUILDDIR)/o2/matmul
	@mkdir -p $(MAQ)/bin
	install -m 0755 $< $@

$(MAQ)/bin/matmul_o3: $(BUILDDIR)/o3/matmul
	@mkdir -p $(MAQ)/bin
	install -m 0755 $< $@

$(MAQ)/bin/matmul_fast: $(BUILDDIR)/fast/matmul
	@mkdir -p $(MAQ)/bin
	install -m 0755 $< $@

all: csv2bin bin2csv $(MAQ)/bin/matmul_base $(MAQ)/bin/matmul_o2 \
     $(MAQ)/bin/matmul_o3 $(MAQ)/bin/matmul_fast

# ---------- artefatos e fluxos por máquina ----------
specs:
	scripts/coletar_specs.sh --aluno $(ALUNO)

asm: all $(BUILDDIR)/base_g/matmul
	scripts/gerar_asm.sh --aluno $(ALUNO)

dados:
	$(PYTHON) scripts/gerar_matrizes.py --ordens "$(ORDENS)" --saida $(DADOS)/csv

bench: all
	scripts/bench.sh --aluno $(ALUNO) --ordens "$(ORDENS)" --reps $(REPS) \
	                 --reps-ordem "$(REPS_ORDEM)"

graficos:
	$(PYTHON) scripts/gerar_graficos.py

entrega: all specs asm bench graficos

clean:
	rm -rf $(BUILDDIR) csv2bin bin2csv

limpar-dados:
	rm -rf $(DADOS)

distclean: clean limpar-dados
	rm -rf $(MAQ)/specs/* $(MAQ)/asm/* figuras/* tabelas/* $(MAQ)/benchmark_*.csv

ajuda:
	@echo "Alvos disponíveis:"
	@echo "  all            compila utilitários e os 4 binários do matmul (instalados em maquinas/)"
	@echo "  csv2bin bin2csv  utilitários de conversão"
	@echo "  specs          coleta lscpu/free/gcc em maquinas/\$$(ALUNO)/specs/"
	@echo "  asm            gera as desmontagens (objdump/gcc -S) em maquinas/\$$(ALUNO)/asm/"
	@echo "  dados          gera as matrizes de teste em dados/csv/ (ORDENS=\"...\")"
	@echo "  bench          executa o benchmark completo (ORDENS=\"...\" REPS=N)"
	@echo "  graficos       gera figuras/ e tabelas/ para o relatório"
	@echo "  entrega        all + specs + asm + bench + graficos"
	@echo "  clean          remove build/ e os executáveis da raiz"
	@echo "  limpar-dados   remove dados/ (matrizes de teste)"
	@echo "  distclean      clean + limpar-dados + artefatos gerados"

.PHONY: all specs asm dados bench graficos entrega clean limpar-dados distclean ajuda
