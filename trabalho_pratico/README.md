# Trabalho Prático — Otimização de Produto Matricial

Implementação completa do trabalho: utilitários de conversão CSV ↔ binário,
motor `matmul` (multiplicação de matrizes densas em `float`) compilado sob
quatro níveis de otimização, coleta automatizada de artefatos por máquina e
geração das figuras/tabelas do relatório.

## Estrutura

```
trabalho_pratico/
├── Makefile              alvos do enunciado + fluxos (specs/asm/bench/graficos)
├── src/
│   ├── timer.h           obter_tempo_segundos() — CLOCK_MONOTONIC (enunciado, §4.1.A)
│   ├── matriz.h/.c       struct Matriz, alocação alinhada (posix_memalign, 64 B)
│   ├── bin.h/.c          leitura/escrita do formato .bin (§2.2), com validação de tamanho
│   ├── csv.h/.c          leitura/escrita do formato .csv (§2.1)
│   ├── matmul_kernel.h   contrato do kernel (símbolo global p/ objdump)
│   ├── matmul.c          kernel i→k→j + main com métricas
│   ├── csv2bin.c         utilitário CSV → binário (uma única fwrite)
│   └── bin2csv.c         utilitário binário → CSV
├── scripts/
│   ├── gerar_matrizes.py gera CSVs de teste + fixtures de verificação
│   ├── coletar_specs.sh  lscpu/free/gcc → maquinas/<aluno>/specs/
│   ├── gerar_asm.sh      objdump/gcc -S → maquinas/<aluno>/asm/ + contagens
│   ├── bench.sh          benchmark completo → maquinas/<aluno>/benchmark_<aluno>.csv
│   ├── comparar_saidas.py comparação com tolerância entre dois .bin
│   ├── gerar_graficos.py figuras/ e tabelas/ do relatório
│   └── gerar_relatorio.sh  relatorio.pdf a partir de relatorio/relatorio.html
├── relatorio/            fonte do relatório (HTML + CSS de impressão)
├── relatorio.pdf         relatório final (gerado)
├── dados/                matrizes de teste (gerado; `make limpar-dados`)
├── figuras/              figuras do relatório (gerado)
├── tabelas/              tabelas-base do relatório (gerado)
└── maquinas/aluno1/      artefatos de entrega por máquina
    ├── specs/  asm/  bin/  benchmark_aluno1.csv
```

## Requisitos

- GCC e `make`; Linux (nativo ou WSL).
- Python 3 (scripts). Para as figuras, matplotlib + numpy, de duas formas:
  - sistema: `sudo dnf install -y python3-matplotlib python3-numpy`; ou
  - sem root (usado neste repositório): `python3 -m venv .venv &&
    .venv/bin/pip install matplotlib numpy` — o Makefile detecta o `.venv`
    automaticamente (`make graficos` passa a usar `.venv/bin/python`).
- Para `make relatorio`: Google Chrome/Chromium (headless; usado via
  `--print-to-pdf`) ou LibreOffice como alternativa.
- Opcional: `valgrind` (verificação de vazamentos), `taskset` (fixação de CPU
  no benchmark — usado automaticamente quando disponível).

## Compilação

```bash
make            # utilitários + os 4 binários (instalados em maquinas/aluno1/bin/)
make all        # idem
make ajuda      # lista todos os alvos
```

Alvos do enunciado (§5), o mesmo `src/matmul.c` sob quatro configurações:

| Alvo | Flags | Binário |
|---|---|---|
| `matmul_base` | `-O0 -g0` | `maquinas/aluno1/bin/matmul_base` |
| `matmul_o2` | `-O2` | `maquinas/aluno1/bin/matmul_o2` |
| `matmul_o3` | `-O3` | `maquinas/aluno1/bin/matmul_o3` |
| `matmul_fast` | `-O3 -march=native -ffast-math -funroll-loops` | `maquinas/aluno1/bin/matmul_fast` |

Comuns a todos: `-std=c11 -D_POSIX_C_SOURCE=200809L -Wall -Wextra -Wpedantic`
e `-ffp-contract=fast` — sem esta última o modo ISO C11 desliga a fusão
`vmulps`+`vaddps` em `vfmadd*ps`, contrariando a análise de assembly do
enunciado (§6.3.3).

## Uso

```bash
./csv2bin <entrada.csv> <saida.bin>
./bin2csv <entrada.bin> <saida.csv>
./maquinas/aluno1/bin/matmul_base <matrizA.bin> <matrizB.bin> <resultado.bin>
```

O `matmul` emite **exatamente uma linha** em `stdout`:

```
TEMPO_IO: <%.6f> | TEMPO_COMP: <%.6f> | GFLOPS: <%.4f>
```

Erros (arquivo inválido, dimensões incompatíveis `A.n != B.m`, uso incorreto)
vão para `stderr` com código de saída ≠ 0, sem tocar em `stdout`.

## Fluxo completo de medição

```bash
make specs          # perfil da máquina  → maquinas/aluno1/specs/
make asm            # desmontagens        → maquinas/aluno1/asm/
make bench          # benchmark           → maquinas/aluno1/benchmark_aluno1.csv
make graficos       # figuras e tabelas   → figuras/ e tabelas/
make relatorio      # relatorio.pdf       (Chrome/Chromium headless; LibreOffice como alternativa)
make entrega        # tudo acima, em ordem
```

`make bench` aceita `ORDENS`, `REPS` e `REPS_ORDEM`:

```bash
make bench ORDENS="1000 2000" REPS=1                  # rodada rápida
make bench REPS_ORDEM="4000:base=1,4000:o2=2"         # repetições por ordem:alvo
scripts/bench.sh --rapido --ordens "500 1000"         # smoke test do pipeline
```

### Metodologia do benchmark (para o relatório)

- Repetições **intercaladas** por alvo/ordem (`base, o2, o3, fast` em sequência,
  repetindo), para diluir efeitos de turbo/térmica de CPUs móveis.
- Uma passada de **aquecimento descartada** (cache de página e de instruções).
- Execuções fixadas em uma CPU com `taskset -c 2` (ajuste com `--pin N` ou
  desligue com `--sem-pin`).
- `sync` antes de cada medição (fora do intervalo cronometrado): descarga o
  writeback pendente do btrfs, que de outra forma domina a variância do
  `TEMPO_IO` com commits de transação e throttling de páginas sujas.
- Todas as repetições vão para o CSV; a **mediana** é calculada na análise.
- `make bench` usa `REPS_ORDEM="4000:base=1"` por padrão porque 4000³ a `-O0`
  custa minutos por execução.

## Verificação

```bash
python3 scripts/gerar_matrizes.py --fixtures        # fixtures com resultado exato

# Round-trip byte-idêntico (%.6f → bin → %.6f):
./csv2bin dados/fixtures/a_4x3.csv dados/fixtures/a.bin
./bin2csv dados/fixtures/a.bin dados/fixtures/a_volta.csv
diff dados/fixtures/a_4x3.csv dados/fixtures/a_volta.csv

# Multiplicação exata A(4x3) x B(3x2) = [[4,5],[10,11],[16,17],[22,23]]:
./csv2bin dados/fixtures/b_3x2.csv dados/fixtures/b.bin
maquinas/aluno1/bin/matmul_fast dados/fixtures/a.bin dados/fixtures/b.bin dados/fixtures/c.bin
./bin2csv dados/fixtures/c.bin dados/fixtures/c_volta.csv
diff dados/fixtures/c_esperado_4x2.csv dados/fixtures/c_volta.csv

# Divergência do -ffast-math dentro da tolerância (após make bench):
python3 scripts/comparar_saidas.py dados/out/c_1000_base.bin dados/out/c_1000_fast.bin --rtol 1e-4

# Vazamentos (opcional): valgrind --leak-check=full --error-exitcode=1 <programa> ...
```

## Notas para o relatório

- **`objdump -S` e o `-g0`**: as flags do enunciado para `matmul_base` usam
  `-g0`, então o `objdump -S` não tem linhas de fonte para intercalar (só o
  assembly). O método B (`gcc -S -fverbose-asm`) cobre a leitura anotada; com
  `scripts/gerar_asm.sh --extras` há ainda uma variante compilada com `-g`
  (`build/base_g/`) e o laço isolado (`objdump --disassemble=matmul_kernel`).
- **`-march=native`**: `matmul_fast` só roda na máquina em que foi compilado —
  por isso o binário fica arquivado em `maquinas/<aluno>/bin/` para
  rastreabilidade. O ponto de comparação portável é o `matmul_o3` (SSE2).
- **Locale**: a máquina é `pt_BR.UTF-8` (vírgula decimal). Os programas fazem
  `setlocale(LC_ALL, "C")` e os scripts usam `LC_ALL=C`, garantindo ponto
  decimal no CSV e na saída — verifique com
  `LC_ALL=pt_BR.UTF-8 ./matmul_o3 ... | grep 'TEMPO_IO: 0\.'`.
- **Zeragem de `C`**: o `memset` do acumulador fica dentro do `TEMPO_COMP`
  (~0,2% em 4000³), subestimando levemente os GFLOPS — escolha conservadora.
- **E/S medida com cache quente** (page cache): é a definição convencional de
  "tempo de carga/escrita" adotada e é comparável entre os alvos.
- **Divergência numérica do `-ffast-math`**: `base`, `o2` e `o3` produzem
  resultados **bit-idênticos** (a vetorização do laço interno não reassocia a
  acumulação); `fast` difere de `base` em no máximo ~5e-5 absoluto nas matrizes
  4000² (valores típicos ~14), com desvio relativo relevante apenas em
  elementos próximos de zero — efeito esperado de FMA + reassociação.

## Limpeza

```bash
make clean          # remove build/ e os executáveis da raiz
make limpar-dados   # remove dados/ (matrizes de teste, ~900 MB)
make distclean      # tudo acima + artefatos gerados (specs/asm/figuras/tabelas)
```
