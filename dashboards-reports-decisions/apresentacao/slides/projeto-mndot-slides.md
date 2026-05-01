# 🖼️ Apresentação de Projeto: Monitoramento MnDOT (Slide Deck)

Este documento simula a estrutura de uma apresentação de slides profissional para o projeto do Departamento de Transportes de Minnesota.

---

## Slide 1: Introdução
**Título**: Otimização de Infraestrutura Rodoviária: Monitoramento Interestadual de Minnesota  
**Apresentado por**: João Ito / Equipe Antigravity BI  
**Data**: Maio de 2026  

---

## Slide 2: O Problema de Negócio
**O Desafio**:  
- O MnDOT enfrenta dificuldades em planejar obras sem causar congestionamentos severos.  
- **Perguntas Chave**:  
    - Quais meses e horas têm maior volume?  
    - Como o clima e os feriados impactam o fluxo?  
- **Objetivo**: Fornecer uma ferramenta de monitoramento que guie o cronograma de manutenção preventiva.

---

## Slide 3: Metodologia e Processamento
**Abordagem Técnica**:  
- **Pipeline**: Limpeza de dados históricos e criação de campos calculados (ex: `IS_HOLIDAY`).  
- **Visualização**: Implementação no **Tableau Public** com foco em hierarquia visual.  
- **Seleção de Gráficos**:  
    - *Linhas* para sazonalidade anual.  
    - *Barras* para impacto climático.  
    - *Heat Map* para detalhamento horário/semanal.  

---

## Slide 4: Principais Percepções (Insights)
**Descobertas Críticas**:  
1.  **Tendência Anual**: O tráfego em **2017** foi consistentemente superior a 2016, indicando crescimento da demanda.  
2.  **Padrão Horário**: Picos de tráfego ocorrem entre 7h-9h e 16h-18h nos dias úteis.  
3.  **Feriados**: O **Dia do Trabalho (Labor Day)** registrou volumes atípicos, superando as médias de fins de semana comuns.  

---

## Slide 5: Recomendações e Próximos Passos
**Ação Recomendada**:  
- **Cronograma de Obras**: Evitar manutenções de grande porte nos meses de pico identificados (Verão/Outono).  
- **Automação**: Expandir o painel para ingestão de dados em tempo real via API para monitoramento 24/7.  

---
*Status: Deck de slides estruturado e pronto para apresentação executiva.*
