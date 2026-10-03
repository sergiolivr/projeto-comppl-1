# Trabalho Prático: Otimização de Produto Matricial

## 1. Contexto e Objetivos

A multiplicação de matrizes densas em ponto flutuante ($C = A \times B$) é uma operação basilar da computação científica. Em arquiteturas contemporâneas, o desempenho prático dessa rotina transcende a complexidade assintótica $O(M \cdot K \cdot N)$, dependendo essencialmente de:

1. **Sobrecarga de Entrada e Saída (E/S):** O formato de persistência e a taxa de transferência na carga e descarga de dados.
2. **Localidade de Referência:** O alinhamento em memória e o padrão de acesso que maximiza o reuso de linhas da memória *cache*.
3. **Vetorização Explícita e Implícita (SIMD):** A capacidade do compilador de sintetizar instruções vetoriais a partir de diretivas estruturais e parâmetros de compilação (*flags*).
4. **Diversidade Arquitetural:** O impacto das extensões de hardware locais (`-march=native`) em diferentes microarquiteturas de CPU.

O trabalho consiste em desenvolver ferramentas para manipulação de matrizes, implementar o motor de multiplicação sob diferentes níveis de otimização e conduzir um estudo experimental aprofundado nos computadores pessoais de todos os integrantes do grupo.

---

## 2. Padronização Rigorosa dos Formatos de Arquivo

Para assegurar a correção funcional e a auditoria automatizada entre os grupos, os formatos abaixo devem ser estritamente respeitados.

### 2.1. Formato Texto (.csv)

Arquivo em texto puro (codificação UTF-8):

* **Linha 1 (Dimensões):** Dois inteiros estritamente positivos separados por vírgula, indicando linhas ($M$) e colunas ($N$). Exemplo: `M,N\n`
* **Linhas 2 até $M+1$:** Cada linha física do arquivo representa uma linha da matriz. Contém $N$ valores em ponto flutuante de precisão simples (`float`), separados por vírgula, sem espaços em branco, formatados com seis casas decimais (`%.6f`) e finalizados com `\n`.

### 2.2. Formato Binário Proprietário (.bin)

Arquivo serializado em bytes brutos, utilizando a ordem de bytes nativa da máquina (*host byte order* / *little-endian*):

* **Cabeçalho (Header — exatos 16 bytes):**
* Bytes 0 a 7: `uint64_t` contendo o número de linhas ($M$).
* Bytes 8 a 15: `uint64_t` contendo o número de colunas ($N$).


* **Carga Útil (Payload — $M \times N \times 4$ bytes):**
* Bloco contíguo contendo os valores em ponto flutuante IEEE 754 de precisão simples (`float`, 32 bits), dispostos em ordem linear contígua por linha (*row-major order*).



---

## 3. Utilitários Obrigatórios de Conversão

Os grupos devem fornecer dois utilitários independentes:

1. **`csv2bin`:**
```bash
./csv2bin <entrada.csv> <saida.bin>

```


* Lê o arquivo de texto, aloca um buffer contíguo e realiza a escrita binária direta em disco preferencialmente em uma única chamada de sistema (`fwrite`).


2. **`bin2csv`:**
```bash
./bin2csv <entrada.bin> <saida.csv>

```


* Lê o cabeçalho de 16 bytes, carrega o bloco contíguo via `fread` e exporta o conteúdo no formato `.csv` padronizado.



---

## 4. Motor de Multiplicação Matricial (`matmul`)

O programa principal opera **exclusivamente com arquivos binários**:

```bash
./matmul <matrizA.bin> <matrizB.bin> <resultado.bin>

```

### 4.1. Protocolo de Obtenção das Métricas de Execução

Para evitar distorções entre sistemas operacionais, a cronometragem e o cálculo de vazão computacional devem obedecer à metodologia descrita a seguir:

#### A. Medição Temporal Monotônica

Deve-se utilizar a função `clock_gettime` com o relógio `CLOCK_MONOTONIC` da biblioteca `<time.h>`:

```c
#include <time.h>

static inline double obter_tempo_segundos(void) {
    struct timespec ts;
    clock_gettime(CLOCK_MONOTONIC, &ts);
    return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
}

```

* **`TEMPO_IO`:** Soma do tempo de leitura dos arquivos `matrizA.bin` e `matrizB.bin` com o tempo de escrita do arquivo `resultado.bin`.
* **`TEMPO_COMP`:** Intervalo estrito de execução do algoritmo de multiplicação de matrizes ($C = A \times B$), medido imediatamente antes e depois do laço computacional, excluindo alocações e operações de disco.

#### B. Cálculo de Vazão ($\text{GFLOPS}$)

Dadas as matrizes $A \in \mathbb{R}^{M \times K}$ e $B \in \mathbb{R}^{K \times N}$, a multiplicação matricial clássica executa exatas $2 \cdot M \cdot K \cdot N$ operações em ponto flutuante (cada elemento do produto interno realiza uma multiplicação e uma adição acumulada — *multiply-accumulate*).

A taxa de desempenho em bilhões de operações por segundo ($\text{GFLOPS}$) é definida formalmente por:


$$\text{GFLOPS} = \frac{2 \times M \times K \times N}{\text{TEMPO\_COMP} \times 10^9}$$

#### C. Saída Padronizada (`stdout`)

O executável não deve imprimir mensagens decorativas. Deve emitir **estritamente uma única linha** no seguinte formato:

```
TEMPO_IO: <valor_em_segundos> | TEMPO_COMP: <valor_em_segundos> | GFLOPS: <valor>

```

* **Exemplo de saída:**
```text
TEMPO_IO: 0.042150 | TEMPO_COMP: 0.185200 | GFLOPS: 11.5432

```


*(Os valores devem ser exibidos com 6 casas decimais para tempo e 4 casas decimais para GFLOPS).*

---

## 5. Alvos do Makefile e Níveis de Otimização

O arquivo `Makefile` deve conter alvos que compilem o mesmo código-fonte sob quatro configurações de flags do GCC:

| Alvo | Flags do GCC | Finalidade Pedagógica |
| --- | --- | --- |
| `matmul_base` | `-O0 -g0` | Linha de base estrita; sem otimização de registradores, operações refletidas na pilha. |
| `matmul_o2` | `-O2` | Otimizações escalares universais, *inlining* moderado e reordenação de instruções. |
| `matmul_o3` | `-O3` | Ativação do laço de auto-vetorização (*tree-vectorize*) e desenrolamento de laços. |
| `matmul_fast` | `-O3 -march=native -ffast-math -funroll-loops` | Vetorização com o conjunto de instruções nativo da CPU local (AVX2/AVX-512), fusão FMA (`vfmadd`) e relaxamento associativo de ponto flutuante. |

---

## 6. Procedimento para Caracterização das Máquinas e Inspeção de Código de Máquina

Como este projeto é realizado em equipes, **cada integrante deve compilar, desmontar e executar os testes em seu próprio computador pessoal**, gerando um conjunto individual de artefatos.

### 6.1. Levantamento e Caracterização do Hardware

Cada membro deve extrair o perfil detalhado de sua máquina executando em terminal Linux (nativo ou WSL):

```bash
# 1. Identificação do processador, frequências e extensões suportadas
lscpu > cpu_info_alunoX.txt

# 2. Informações de hierarquia de cache (L1d, L1i, L2, L3)
lscpu -C >> cpu_info_alunoX.txt

# 3. Capacidade de memória RAM disponível
free -h > ram_info_alunoX.txt

# 4. Versão exata do compilador GCC utilizado
gcc --version > gcc_info_alunoX.txt

```

### 6.2. Inspeção e Desmontagem de Código de Máquina (*Disassembly*)

Cada aluno deve gerar a desmontagem comparativa entre a versão sem otimização (`matmul_base`) e a versão totalmente otimizada para o seu hardware (`matmul_fast`):

#### Método A: Desmontagem do Binário Compilado com Sintaxe Intel

```bash
objdump -d -M intel -S matmul_base > asm_base_alunoX.s
objdump -d -M intel -S matmul_fast > asm_fast_alunoX.s

```

#### Método B: Emissão de Código Assembly Anotado pelo GCC

```bash
# Geração do assembly com anotações de código C correspondente
gcc -O0 -S -masm=intel -fverbose-asm matmul.c -o asm_base_anotado_alunoX.s
gcc -O3 -march=native -ffast-math -funroll-loops -S -masm=intel -fverbose-asm matmul.c -o asm_fast_anotado_alunoX.s

```

### 6.3. O que Identificar e Analisar no Assembly

No relatório, cada aluno deve isolar o laço mais interno da multiplicação e demonstrar objetivamente:

1. **Uso da Pilha vs. Registradores:** No binário `-O0`, evidenciar os acessos contínuos à memória via instruções `mov [rbp - offset], reg` dentro do laço.
2. **Emissão de Instruções Vetoriais:** No binário `-march=native`, identificar o uso de registradores vetoriais (`ymm` em AVX2 ou `zmm` em AVX-512) e instruções de carga alinhada (`vmovaps`).
3. **Instruções Fused Multiply-Add (FMA):** Verificar se o compilador substituiu os pares convencionais de multiplicação (`vmulps`) e soma (`vaddps`) por uma única instrução `vfmadd213ps` ou `vfmadd231ps`.

---

## 7. Estrutura do Pacote de Entrega

O repositório do grupo deve conter a estrutura de diretórios organizada conforme o esquema abaixo:

```text
trabalho_pratico/
├── Makefile
├── src/
│   ├── csv2bin.c
│   ├── bin2csv.c
│   ├── matmul.c
│   └── ... (módulos auxiliares .c e .h)
├── relatorio.pdf
└── maquinas/
    ├── aluno1/
    │   ├── specs/ (cpu_info, ram_info, gcc_info)
    │   ├── asm/   (asm_base_aluno1.s, asm_fast_aluno1.s)
    │   ├── bin/   (matmul_base, matmul_o2, matmul_o3, matmul_fast)
    │   └── benchmark_aluno1.csv
    ├── aluno2/
    │   ├── specs/
    │   ├── asm/
    │   ├── bin/
    │   └── benchmark_aluno2.csv
    └── aluno3/
        ├── specs/
        ├── asm/
        ├── bin/
        └── benchmark_aluno3.csv

```

---

## 8. Conteúdo Obrigatório do Relatório Técnico

O relatório (PDF de 6 a 10 páginas) deve articular a análise cruzada dos resultados:

1. **Descrição da Implementação em C:** Apresentação da disposição linear contígua das matrizes, tratamento de alinhamento (`posix_memalign`, `__builtin_assume_aligned`) e justificativa da ordem de iteração dos laços ($i \to k \to j$).
2. **Comparativo de E/S (CSV vs. Binário):** Tabela e gráfico com tempos de carga e escrita para matrizes quadradas de ordens $1.000 \times 1.000$, $2.000 \times 2.000$ e $4.000 \times 4.000$.
3. **Análise Comparativa Multi-Hardware:**
* Tabela comparando as especificações técnicas das máquinas dos integrantes (microarquitetura, frequências base/boost, tamanhos de cache L1/L2/L3 e extensões vetoriais presentes: ex. SSE4.2, AVX2, AVX-512).
* Gráfico de barras comparando os $\text{GFLOPS}$ obtidos em cada máquina para os quatro alvos (`base`, `o2`, `o3`, `fast`).


4. **Dissecação do Código de Máquina:** Seção contendo trechos selecionados lado a lado dos arquivos assembly (`asm_base` vs. `asm_fast`), comentando tecnicamente a ação do otimizador do GCC na CPU de cada integrante.

---

## 9. Critérios de Avaliação

* **Conformidade de Interface e Métricas (20%):** Saída padronizada de E/S e precisão milimétrica nas métricas de tempo e GFLOPS em `stdout`.
* **Qualidade da Engenharia em C (25%):** Código limpo, ausência de vazamento de memória (`valgrind`), uso correto de `restrict`, alinhamento contíguo de dados e garantia de portabilidade.
* **Profundidade da Inspeção de Código de Máquina (25%):** Riqueza e rigor na análise dos arquivos de montagem (*assembly*) entregues individualmente por cada aluno.
* **Consistência Experimental e Análise Comparativa (30%):** Rastreabilidade dos binários entregues, caracterização correta das máquinas e discussão crítica sobre o impacto de `-march=native` em processadores distintos.
