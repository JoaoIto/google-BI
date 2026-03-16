# Documento de Requisitos do Projeto (Project Requirements Document)

## 1. Finalidade do Projeto
Desenvolver uma ferramenta de Business Intelligence (painel interativo) para visualizar tendências de **chamadas repetidas dentro de uma janela de 7 dias**, visando otimizar a operação e aumentar a satisfação do cliente.

## 2. Entregas e Métricas Desejadas
1. **Métricas de Resolução:** Medir chamadas repetidas pela data do primeiro contato.
2. **Visualização Geográfica e Técnica:** Tabela/Gráfico cruzando **Mercado (City)** vs **Tipo de Problema (Tipo 1-5)**.
3. **Tendências Temporais:** Gráficos agregados por semana, mês, trimestre e ano.

## 3. Dependências e Premissas
*   **Dados:** Conjuntos de dados anonimizados contendo cidades, tipos de chamadas, contagem de contatos e datas.
*   **Ferramenta:** Suporte a requisitos de acessibilidade e extração de dados brutos.
*   **Premissa de Janela:** A janela de 7 dias (contatos `n` até `n+6`) é considerada suficiente para medir a eficácia da resolução inicial.

## 4. Cronograma Estimado (Marcos)
*   [ ] **Milestone 1:** Coleta e limpeza de dados.
*   [ ] **Milestone 2:** Design do dashboard (Acessibilidade).
*   [ ] **Milestone 3:** Validação com stakeholders.
*   [ ] **Milestone 4:** Entrega final e documentação.
