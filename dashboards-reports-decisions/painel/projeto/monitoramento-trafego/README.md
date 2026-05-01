# 🛣️ Projeto: Monitoramento de Tráfego (MnDOT)

Este documento detalha o ciclo de vida completo do projeto de Business Intelligence para o Departamento de Transportes de Minnesota. O objetivo é fornecer uma ferramenta de monitoramento dinâmico para otimização de infraestrutura rodoviária.

---

## 🎨 Parte 1: Planejamento e Design Thinking

### 1.1 Cenário de Negócio e Requisitos
O MnDOT identificou a necessidade de monitorar volumes de tráfego para prever o impacto de futuras construções. Os stakeholders (Camila e Jack Park) definiram os seguintes KPIs:
- Volume sazonal (Ano/Mês/Dia/Hora).
- Impacto de condições climáticas extremas.
- Comportamento do tráfego em feriados nacionais.

### 1.2 Mockup de Baixa Fidelidade (Layout Inicial)
Utilizamos uma abordagem de design iterativo, começando com um esboço para definir a hierarquia visual.
- **Destaque Superior**: Tendências de Longo Prazo.
- **Área Central**: Análises Contextuais (Clima/Feriados).
- **Lateral/Detalhe**: Fluxo Horário Granular.

![Mockup Inicial](assets/mockup_sketch.png)

---

## 📊 Parte 2: Construção das Visualizações Técnicas

### 2.1 Análise de Sazonalidade (Gráfico de Linhas)
- **Lógica**: Utilizar uma série temporal para identificar picos de tráfego recorrentes.
- **Configuração Técnica**:
    - **Colunas**: `YEAR(Date Time)` e `MONTH(Date Time)`.
    - **Linhas**: `SUM(Traffic Volume)`.
    - **Insight**: Permite visualizar se o volume de 2017 superou 2016 e em quais meses a demanda é crítica.
![Sazonalidade](assets/seasonality.png)

### 2.2 Impacto Climático (Gráfico de Barras)
- **Lógica**: Comparar médias de tráfego sob diferentes condições.
- **Configuração Técnica**:
    - **Eixo X**: `Weather Main` (Dimensão).
    - **Eixo Y**: `AVG(Traffic Volume)` (Medida Agregada).
    - **Refinamento**: Uso de cores divergentes para destacar climas que causam maior queda no volume.
![Clima](assets/weather.png)

### 2.3 Picos em Feriados (Gráfico de Bolhas / Calculated Fields)
- **Campo Calculado (`IS_HOLIDAY`)**: 
  ```sql
  IF [Holiday] != 'None' THEN [Traffic Volume] END
  ```
- **Configuração**: Arrastar `Holiday` para Rótulo e `SUM(Traffic Volume)` para Tamanho.
- **Por que Bolhas?**: Facilita a comparação visual de magnitude entre feriados específicos de forma intuitiva.
![Feriados](assets/holidays.png)

### 2.4 Fluxo Horário (Heat Map)
- **Lógica**: Identificar "Horas de Pico" cruzadas com dias da semana.
- **Configuração**: 
    - **Colunas**: `HOUR(Date Time)`.
    - **Linhas**: `WEEKDAY(Date Time)`.
    - **Cor**: `SUM(Traffic Volume)` em gradiente.
![Fluxo Horário](assets/hourly_heatmap.png)

---

## 🏗️ Parte 3: Dashboard e Iteração (Versão Final)

O painel foi montado no Tableau Public e refinado através de iterações baseadas em feedback direto.

### 3.1 Melhorias Solicitadas e Implementadas:
1.  **Filtros Interativos**: Implementação de menus suspensos para facilitar o uso por stakeholders não técnicos.
2.  **Botão de Download**: Inclusão de objeto de exportação para PDF/Imagem no topo do painel.
3.  **Filtro de Escopo (2017+)**: O dashboard foi configurado para exibir apenas dados recentes, garantindo performance e relevância.
4.  **Floating Tooltips**: Dicas de ferramentas configuradas para fornecer o valor exato e contexto ao passar o mouse sobre qualquer marca.

### Visualização Consolidada (Versão 2.0)
![Painel Final](assets/iterated_dashboard.png)

---

## 🏁 Auto-Avaliação e Conclusões Técnicas

### Avaliação vs. Exemplar do Curso:
- **Hierarquia Visual**: O gráfico de linhas no topo estabelece o contexto de "Visão Geral" antes do usuário mergulhar nos detalhes.
- **Consistência de Cores**: Implementamos uma paleta de cores consistente para os anos, facilitando a comparação entre gráficos diferentes.
- **Espaço Negativo**: O layout foi ajustado para evitar a sobrecarga visual, permitindo que cada insight seja "lido" claramente.

---

## ✍️ Respostas Detalhadas dos Desafios do Módulo

### Desafio 1: Criação de Gráficos
- **Pergunta 1**: Gráfico mais eficaz para feriados? **Gráfico de círculos (bolhas)**. Permite comparar magnitudes de forma rápida e visual.
- **Pergunta 2**: Elemento de acessibilidade? **Legendas (Captions)**. O Tableau gera descrições automáticas cruciais para leitores de tela.
- **Pergunta 3**: Gráficos que atendem ao MnDOT? Volumes por mês/ano, por hora, por clima e por feriados.

### Desafio 2: Organização do Painel
- **Práticas Recomendadas**: Organizar legendas próximas aos gráficos, usar tamanho/cor para criar fluxo lógico e priorizar o gráfico de maior ênfase.
- **Estratégia Lógica**: Agrupar por tópico e ordenar do mais importante para o menos importante (hierarquia descendente).

### Desafio 3: Iteração e Objetos
- **Tipos de Botões**: Imagens, Navegação e Download.
- **Blocos de Filtro**: Incentivam a visualização em diferentes escalas de tempo e auxiliam usuários que não conhecem o Tableau a manipular os dados com segurança.

---
## 📦 Arquivos e Referências
- 📄 [Relatório Técnico MnDOT (PDF Simulado)](assets/Minnesota_Interstate_Traffic_Volume.md)
- 📊 [Dataset: Metro Traffic Volume](data/metro-data.csv)
- 🧪 [Respostas Completas do Desafio (MD)](desafio-respostas-completas.md)

---
*Status: Projeto MnDOT Concluído e Documentado com Rigor Técnico.*
