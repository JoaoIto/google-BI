# 📊 Guia de Dashboards e Relatórios de BI

Este diretório contém a documentação teórica e prática sobre o desenvolvimento de dashboards, explorando diferentes estilos e necessidades de negócio.

---

## 🔬 Fundamentos Teóricos e Técnicos

O desenvolvimento de um dashboard eficaz vai além da simples disposição de gráficos. Ele exige a aplicação de **Design Thinking** e uma compreensão clara da necessidade do usuário final.

### 1. Estilo Operacional / Monitoramento (Projeto MnDOT)
*   **Definição**: Painéis projetados para rastrear atividades em andamento e processos dinâmicos.
*   **Foco Técnico**:
    *   **Tracking Temporais**: Uso extensivo de escalas de tempo (Ano -> Hora) para capturar variações imediatas.
    *   **Contextualização de Filtros**: Implementação de filtros de "Data Relativa" para garantir que o monitoramento seja sempre sobre os dados mais recentes.
    *   **Alertas Visuais**: Uso de cores e formas para destacar "pontos de dor" ou anomalias que exigem ação imediata.
*   **Aplicação**: Monitoramento de tráfego, status de servidores, fluxos de produção.

### 2. Estilo Tático / Painel de Controle (Projeto Athens Airbnb)
*   **Definição**: Painéis projetados para análise exploratória e controle de métricas de desempenho em micro-mercados.
*   **Foco Técnico**:
    *   **Ações de Filtro (Action Filters)**: Transformação de gráficos em ferramentas de filtragem ativa (clicar em um elemento para filtrar o dashboard inteiro).
    *   **Cross-Filtering**: Conexão entre dimensões geográficas (mapas) e financeiras (preços médios).
    *   **Codificação de Tamanho e Cor**: Uso de legendas precisas para interpretar volume de propriedades (IDS) e densidade.
*   **Aplicação**: Análise de investimento imobiliário, dashboards de vendas regionais, controle de portfólio.

---

## 🏗️ Estrutura do Diretório

A organização segue um padrão profissional de BI, separando a lógica de dados dos ativos visuais:

*   📂 [**Projetos Práticos**](projeto/)
    *   🛣️ [**Monitoramento de Tráfego (MnDOT)**](projeto/monitoramento-trafego/README.md): Dashboard Operacional.
    *   🏠 [**Estudo de Caso: Airbnb Atenas**](projeto/athenas-airbnb/README.md): Dashboard Tático.
*   📖 [**Boas Práticas de Design**](visualizacao/design_principles.md)

---

## 🛠️ Princípios Aplicados
1.  **Hierarquia Visual**: O elemento mais importante (KPI primário) sempre ocupa o topo ou o maior quadrante.
2.  **Espaço Negativo**: Evitamos o "vômito de dados" (*data clutter*), garantindo que cada gráfico tenha "ar" para ser lido.
3.  **Acessibilidade**: Implementação de legendas automáticas e paletas de cores amigáveis para daltonismo.
4.  **Performance**: Pré-agregação de dados via SQL ou cálculos no Tableau para garantir fluidez na interação.
