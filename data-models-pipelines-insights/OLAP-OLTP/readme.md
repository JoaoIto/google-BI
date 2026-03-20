# Estrutura dos Bancos de Dados

### OLAP vs. OLTP
- **OLAP (Online Analytical Processing)**: Sistemas otimizados para análise de dados, permitindo acesso a dados de várias fontes e suporte à tomada de decisões.
- **OLTP (Online Transaction Processing)**: Sistemas otimizados para processamento de dados transacionais, usados por funcionários que atendem clientes e aplicações de autoatendimento.

### Row-based vs. Columnar
- **Row-based**: Organizados por linhas, usados em sistemas OLTP, permitindo escrita rápida e fácil otimização com indexação.
- **Columnar**: Organizados por colunas, usados em sistemas OLAP, permitindo leitura rápida e extração eficiente de dados necessários para análise.

### Distribuído vs. Single-homed
- **Distribuído**: Coleções de sistemas de dados em múltiplas localizações físicas, facilmente expansíveis e mais seguras.
- **Single-homed**: Dados armazenados em uma única localização, facilitando o acesso e a coordenação, além de reduzir a redundância.

### Armazenamento e Computação Separados vs. Combinados
- **Separados**: Sistemas onde dados menos relevantes são armazenados remotamente, permitindo consultas analíticas mais eficientes.
- **Combinados**: Sistemas que armazenam e analisam dados no mesmo local, facilitando o gerenciamento de recursos.

## Conclusão
Compreender as diferentes tecnologias de banco de dados é fundamental para a criação de sistemas de BI eficazes. Essa leitura fornece uma visão abrangente das várias abordagens e suas aplicações práticas.

---

## Tabela 1: OLAP vs. OLTP

| **Tecnologia de Banco de Dados** | **Descrição** | **Uso** |
|-----------------------------------|---------------|---------|
| **OLAP** | Sistemas otimizados para análise. | - Acesso a dados de várias fontes.<br>- Suporte à tomada de decisões.<br>- Análise de dados de múltiplos bancos de dados.<br>- Extração de insights acionáveis. |
| **OLTP** | Sistemas otimizados para processamento de dados. | - Armazenamento de dados transacionais.<br>- Usado por funcionários que atendem clientes ou aplicações de autoatendimento.<br>- Leitura, escrita e atualização de linhas únicas de dados.<br>- Fonte de sistemas que podem ser analisados. |

## Tabela 2: Row-based vs. Columnar

| **Tecnologia de Banco de Dados** | **Descrição** | **Uso** |
|-----------------------------------|---------------|---------|
| **Row-based** | Organizados por linhas. | - Organização tradicional, fácil de escrever, usada em sistemas OLTP.<br>- Escrita de dados muito rápida.<br>- Armazena todos os valores de uma linha juntos.<br>- Fácil otimização com indexação. |
| **Columnar** | Organizados por colunas. | - Forma mais nova de organização, usada em sistemas OLAP.<br>- Leitura de dados mais rápida, puxando apenas os dados necessários para análise.<br>- Armazena colunas de múltiplas linhas juntas. |

## Tabela 3: Distribuído vs. Single-homed

| **Tecnologia de Banco de Dados** | **Descrição** | **Uso** |
|-----------------------------------|---------------|---------|
| **Distribuído** | Coleções de sistemas de dados em múltiplas localizações. | - Fácil expansão para atender a necessidades de negócios maiores.<br>- Acesso de diferentes redes.<br>- Mais fácil de proteger do que um sistema single-homed. |
| **Single-homed** | Dados armazenados em uma única localização. | - Acesso e coordenação mais fáceis entre equipes.<br>- Reduz a redundância de dados.<br>- Mais barato de manter do que sistemas maiores e mais complexos. |

## Tabela 4: Armazenamento e Computação Separados vs. Combinados

| **Tecnologia de Banco de Dados** | **Descrição** | **Uso** |
|-----------------------------------|---------------|---------|
| **Separados** | Sistemas onde dados menos relevantes são armazenados remotamente. | - Consultas analíticas mais eficientes, processando apenas dados relevantes.<br>- Escalabilidade de recursos de computação e armazenamento separadamente. |
| **Combinados** | Sistemas que armazenam e analisam dados no mesmo local. | - Configuração tradicional que permite acesso a todos os dados de uma vez.<br>- Gerenciamento de recursos mais simples. |

---
