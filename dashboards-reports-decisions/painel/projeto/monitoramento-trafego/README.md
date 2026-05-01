# Documentação do Projeto: Monitoramento de Tráfego (MnDOT)

Este documento detalha o processo de planejamento e execução dos gráficos para o monitoramento de padrões de tráfego em Minnesota.

---

## 🎨 Parte 1: Planejamento (Mockup de Baixa Fidelidade)

Antes de iniciar no Tableau, foi desenvolvido um **mockup de baixa fidelidade** para organizar a hierarquia visual e garantir que todas as perguntas de negócio fossem respondidas.

![Mockup Inicial - Esboço de Baixa Fidelidade](assets/mockup_sketch.png)

### Estratégia de Layout:
- **Topo (Prioridade Máxima)**: Gráfico de linhas para Sazonalidade (Volume ao longo do tempo).
- **Esquerda**: Gráfico de barras para Impacto Climático.
- **Direita**: Gráfico de bolhas para Picos em Feriados.
- **Interatividade**: Área reservada para filtros de data e clima.

---

## 📊 Parte 2: Criação dos Gráficos

Abaixo, detalhamos a configuração de cada visualização para atender às necessidades das partes interessadas.

### 1. Sazonalidade e Tendências Temporais
- **Objetivo**: Visualizar o volume em várias escalas (Ano, Mês, Dia, Hora).
- **Configuração**:
    - **Colunas**: `YEAR(Date Time)`, `MONTH(Date Time)` (configuráveis via clique direito).
    - **Linhas**: `SUM(Traffic Volume)`.
    - **Tipo**: Gráfico de Linhas (ideal para continuidade temporal).
- **Visualização**:
![Gráfico de Sazonalidade](assets/seasonality.png)

### 2. Análise por Condições Climáticas
- **Objetivo**: Entender como o clima afeta o trânsito.
- **Configuração**:
    - **Colunas**: `Weather Main`.
    - **Linhas**: `AVG(Traffic Volume)`.
    - **Cores**: Esquema de cores divergentes para destacar climas extremos.
- **Tipo**: Gráfico de Barras.
- **Visualização**:
![Gráfico de Clima](assets/weather.png)

### 3. Picos em Feriados (Campo Calculado)
- **Objetivo**: Comparar o volume entre feriados específicos.
- **Técnica Utilizada**: Criação do campo calculado `IS_HOLIDAY`.
- **Configuração**:
    - **Marcas**: Arrastar `Holiday` para o rótulo e `SUM(Traffic Volume)` para o tamanho.
- **Tipo**: Gráfico de Círculos (Bolhas).
- **Visualização**:
![Gráfico de Feriados](assets/holidays.png)

---

## 🛠️ Resultados e Refinamentos

### Acessibilidade e Detalhes
- **Legendas (Captions)**: Habilitadas em todos os gráficos para fornecer contexto automático.
- **Títulos Descritivos**: Substituídos títulos genéricos por perguntas de negócio.
- **Filtros Relativos**: Filtro de `Date Time` configurado para "Últimos 7 dias".

---
## Documentação Relacionada
- [Respostas do Desafio de Gráficos](desafio-graficos.md)

---
*Status: Gráficos concluídos e organizados em assets.*
