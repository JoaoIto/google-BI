# Atividade: Criar uma Tabela de Destino no BigQuery

Esta atividade faz parte do processo de aprendizado sobre o estágio de **Extração** em um pipeline de BI. O objetivo foi utilizar o Google BigQuery para extrair dados de um conjunto de dados público sobre árvores de rua em São Francisco e armazená-los em uma nova tabela de destino.

---

## 1. Contexto da Atividade
Como profissional de BI, você usará ferramentas como BigQuery e Dataflow para mover e analisar dados. Nesta tarefa, o foco foi extrair dados de uma fonte pública e organizá-los em uma tabela personalizada para análise posterior.

---

## 2. A Consulta SQL
Abaixo está a consulta utilizada para gerar a tabela de destino:

```sql
SELECT
    address,
    COUNT(address) AS number_of_trees
FROM
    `bigquery-public-data.san_francisco_trees.street_trees`
WHERE
    address != "null"
GROUP BY address
ORDER BY number_of_trees DESC
LIMIT 10;
```

### Explicação das Cláusulas:
*   **SELECT & COUNT**: Selecionamos os endereços e contamos quantas árvores existem em cada um. O resultado da contagem é renomeado para `number_of_trees`.
*   **FROM**: Especifica a tabela de origem `street_trees` dentro do conjunto público do BigQuery.
*   **WHERE**: Filtra os dados para garantir que apenas linhas com endereços válidos (não nulos) sejam incluídas.
*   **GROUP BY**: Agrupa os registros pelo endereço, permitindo que a função `COUNT` funcione corretamente para cada local.
*   **ORDER BY**: Organiza os resultados em ordem decrescente (`DESC`), trazendo os locais com mais árvores para o topo.
*   **LIMIT**: Restringe o resultado aos 10 primeiros registros para otimizar o tempo de processamento.

---

## 3. Resultados Esperados
Se a consulta for executada corretamente, os resultados devem corresponder aos dados armazenados em `bigQuery/data/dataBigQuery.csv`.

**Top 5 Endereços:**
1.  **100x Cargo Way**: 135 árvores
2.  **700 Junipero Serra Blvd**: 125 árvores
3.  **1000 San Jose Ave**: 113 árvores
4.  **1200 Sunset Blvd**: 110 árvores
5.  **1600 Sunset Blvd**: 102 árvores

---

## 4. Integração com Python (Google Colab)
Para automatizar ou analisar esses dados de forma programática, você pode usar o script `bigquery_demo.ipynb` disponível nesta pasta.

### O que o script faz:
1.  **Autenticação**: Conecta sua conta do Google ao ambiente do Colab.
2.  **Extração**: Envia a consulta SQL para a API do BigQuery.
3.  **Conversão**: Transforma os resultados em um DataFrame do Pandas para fácil manipulação.
4.  **Visualização**: Gera um gráfico de barras horizontal com os dados obtidos.

---
> [!IMPORTANT]
> As tabelas de destino são fundamentais no estágio de Extração. Uma vez que os dados estão nela, você pode prosseguir para as fases de **Transformação** e **Carregamento** em sistemas de relatórios ou dashboards.
