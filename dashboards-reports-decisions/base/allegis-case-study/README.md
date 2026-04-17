# Estudo de Caso: Allegis Group - Visualização de Desempenho

O **Allegis Group**, empresa líder em soluções de talentos, enfrentou o desafio de monitorar a produtividade e eficácia de seus novos recrutadores. Este estudo demonstra como uma equipe de BI pode transformar perguntas complexas em visualizações acionáveis.

---

## Cenário e Questões de Negócio

A liderança queria desafiar suposições sobre o tempo necessário para que novas contratações atingissem metas de vendas. As perguntas centrais eram:

1. Como está o desempenho dos novos recrutadores ao longo do tempo?
2. Quais são os melhores meses do ano para contratar?
3. As metas de desempenho estão alinhadas à realidade?
4. Os novos recrutadores estão tendo sucesso mais rápido que os contratados há um ano?

---

## A Solução Técnica: Análise de Coorte

Para responder a essas perguntas, a equipe de BI utilizou uma **Análise de Coorte (Cohort Analysis)**.

### O Modelo Visual (Arranjo Triangular)
Em vez de gráficos tradicionais, a equipe optou por um modelo de projeto existente com um **arranjo triangular de caixas**:
- **Linhas**: Representam os dados dentro de uma mesma coorte (grupo de contratação).
- **Colunas**: Representam o tempo decorrido (mês relativo desde a contratação).
- **Cores**: Um gradiente de azul era usado para indicar a performance (tons mais escuros = maior receita).

Este design permitiu uma comparação visual rápida tanto horizontalmente (evolução do grupo) quanto verticalmente (desempenho comparado de diferentes grupos no mesmo estágio de maturidade).

> [!NOTE]
> Você pode consultar modelos similares no **Financial Times Visual Vocabulary**, que serve como uma fonte de inspiração ética e técnica para profissionais de BI.

---

## Lições Aprendidas e Desafios

### 1. Viés de Sobrevivência
A equipe descobriu que sua métrica inicial (*vendas por recrutadores que permanecem na empresa*) era enganosa. 
- **O Problema**: A métrica ignorava os recrutadores que saíram da empresa, focando apenas nos "sobreviventes" que, naturalmente, tendem a ser os de melhor desempenho.
- **A Solução**: Introduziram uma segunda métrica (*vendas por população inicial da coorte*) para eliminar a distorção e mostrar a realidade da retenção.

### 2. Colaboração e Adoção
A colaboração próxima com a equipe de recrutamento foi fundamental. Analisar cada visualização com o usuário final antes da produção garantiu que os insights fossem compreendidos e a ferramenta fosse adotada.

---

## Resultados
O painel proporcionou:
- **Flexibilidade**: Todas as perguntas de negócio respondidas em um único lugar.
- **Atualização Mensal**: Valor contínuo para a gestão.
- **Interatividade**: Comparação rápida de retenção e performance entre diferentes safras de contratação.

Este caso reforça que a **desenvoltura** (buscar inspiração em modelos existentes) e o **pensamento crítico** (identificar vieses nos dados) são habilidades tão importantes quanto o domínio técnico das ferramentas de BI.
