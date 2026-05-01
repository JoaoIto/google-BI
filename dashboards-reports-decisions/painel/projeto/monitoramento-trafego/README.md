# Documentação do Projeto: Monitoramento de Tráfego (MnDOT)

Este documento detalha o processo de planejamento e execução dos gráficos para o monitoramento de padrões de tráfego em Minnesota.

---

## 🎨 Parte 1: Planejamento (Mockup de Baixa Fidelidade)

![Mockup Inicial - Esboço de Baixa Fidelidade](assets/mockup_sketch.png)

---

## 📊 Parte 2: Criação dos Gráficos

### 1. Sazonalidade (Linhas)
![Gráfico de Sazonalidade](assets/seasonality.png)

### 2. Impacto Climático (Barras)
![Gráfico de Clima](assets/weather.png)

### 3. Picos em Feriados (Bolhas)
![Gráfico de Feriados](assets/holidays.png)

### 4. Volume por Hora e Dia (Mapa de Calor)
- **Objetivo**: Visualizar concentrações de tráfego em escalas detalhadas (semanal/diária).
- **Tipo**: Heat Map (Mapa de Calor).
![Mapa de Calor Horário](assets/hourly_heatmap.png)

---

## 🏗️ Parte 3: Montagem do Dashboard

![Painel Final MnDOT](assets/final_dashboard.png)

---

## 📝 Avaliação e Auto-Reflexão (Baseada no Exemplo Exemplar)

Ao comparar nossa implementação com o modelo ideal do curso, identificamos pontos fortes e oportunidades de refinamento:

### O que fizemos bem:
*   **Hierarquia de Prioridades**: Assim como no exemplo, colocamos o gráfico de sazonalidade (linhas) no topo por ser a métrica de maior interesse.
*   **Variedade de Estilos**: Utilizamos quatro estilos distintos (Linhas, Barras, Bolhas e Mapa de Calor) para responder a diferentes perguntas de negócio.
*   **Cálculos Personalizados**: A implementação do `IS_HOLIDAY` permitiu uma análise de feriados muito mais limpa.

### Onde podemos melhorar:
*   **Sincronização de Cores**: O exemplo sugere que as cores devem ser consistentes entre os gráficos (ex: Laranja sempre representando o ano de 2017). Devemos garantir que essa codificação de cores seja uniforme em todas as planilhas.
*   **Simplicidade e Limpeza**: Devemos filtrar os dados para focar nos últimos 3 anos para evitar "poluição visual" e lentidão no dashboard.
*   **Eliminação de Duplicatas**: Precisamos garantir que apenas uma legenda de cores global seja exibida, removendo as legendas automáticas que o Tableau gera para cada gráfico individual.
*   **Posicionamento do Mapa de Calor**: Como o Mapa de Calor contém muitos dados, o exemplo sugere que ele seja um dos maiores elementos no dashboard para facilitar a leitura.

---

## Documentação Relacionada
- [Respostas: Criação de Gráficos](desafio-graficos.md)
- [Respostas: Organização do Painel](desafio-dashboard.md)

---
*Status: Projeto MnDOT Refinado após Auto-Avaliação.*
