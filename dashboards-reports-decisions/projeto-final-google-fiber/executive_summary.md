# 📑 Resumo Executivo: Otimização do Atendimento Google Fiber

**Objetivo**: Analisar tendências de chamadas repetidas para aumentar a eficácia da resolução no primeiro contato (FCR) e reduzir o esforço do cliente.

---

## 1. Contexto e Necessidades de Negócio
A equipe de atendimento ao cliente do Google Fiber identificou um volume significativo de reincidências (clientes ligando várias vezes para o mesmo problema). A liderança necessita de uma ferramenta que quantifique a frequência dessas chamadas e identifique os "gargalos" técnicos ou de processo por mercado e tipo de problema.

---

## 2. Metodologia de Business Intelligence

### 2.1 Integração de Dados (Data Pipeline)
O projeto consolidou três fontes de dados principais através de operações de `JOIN`:
- **Tabela de Contatos**: Registro de logs de chamadas.
- **Tabela de Mercados**: Segmentação geográfica das três cidades de operação.
- **Tabela de Tipos de Problema**: Categorização das solicitações dos clientes.

### 2.2 Lógica Técnica e Transformação
- **Cálculo de Reincidência**: Definido como qualquer chamada subsequente dentro de uma janela de **7 dias** após o contato inicial (Dia 0).
- **Métrica de Cadência**: Comparação da frequência de retorno (ex: Dia 1 vs. Dia 7) para entender a persistência do problema.
- **Normalização**: Cálculo da porcentagem de primeiros contatos por dia da semana para equilibrar a escala entre diferentes volumes diários.

---

## 3. Arquitetura do Dashboard e Funcionalidades
O painel foi projetado no Tableau utilizando os seguintes componentes:
- **Filtros Globais**: Seleção de Mercado (Cidade) e Período (Mês/Ano).
- **Abas de Navegação**:
    - *Visão Temporal*: Gráficos de barras para tendências mensais e semanais.
    - *Drill-down de Tabelas*: Visão tabular detalhada por data e tipo de problema.
    - *Análise Q1*: Comparação consolidada do primeiro trimestre para metas de curto prazo.

---

## 🔍 4. Análise de Insights (Simulação do Exemplar)

Baseado no exemplar técnico do Google Fiber, identificamos os seguintes padrões críticos:

### 4.1 Padrão de Reincidência Imediata
- **Descoberta**: Em Janeiro, observou-se que **1.636 clientes** ligaram novamente apenas um dia após o contato inicial, enquanto apenas **575** ligaram no sétimo dia.
- **Insight Técnico**: A maior parte da frustração do cliente ocorre nas primeiras 24-48 horas. Isso sugere que a solução fornecida no Dia 0 falhou imediatamente ou o cliente não conseguiu implementar a instrução recebida.

### 4.2 O "Efeito Segunda-Feira"
- **Descoberta**: Apenas **8,71%** dos primeiros contatos ocorrem aos Domingos, com a grande maioria concentrada na Segunda-Feira.
- **Recomendação**: Alocação agressiva de staff nas Segundas-Feiras não apenas para novos chamados, mas para prevenir a onda de reincidências que se seguirá nos dias subsequentes (Terça e Quarta).

### 4.3 Diferenciação por Mercado e Tipo
- **Descoberta**: Certos mercados (ex: Cidade A) apresentam maior volume de chamadas repetidas sobre "Configuração de Roteador".
- **Ação Estratégica**: Criar vídeos tutoriais específicos para esse mercado ou automatizar o diagnóstico de configuração via app para reduzir a carga da central.

---

## 5. Próximos Passos e Evolução
Para levar este projeto ao próximo nível (Fase Preditiva):
- Integrar dados de satisfação do cliente (CSAT) após chamadas repetidas.
- Implementar alertas automáticos quando um "Tipo de Problema" específico atingir um limite crítico de reincidência em um determinado mercado.

---
*Assinado,*
*João Ito / Antigravity BI Specialist*
