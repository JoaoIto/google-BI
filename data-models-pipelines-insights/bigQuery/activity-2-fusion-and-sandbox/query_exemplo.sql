-- Exemplo para Atividade 2: BigQuery Public Datasets
-- Consultando os 10 nomes de bebês mais populares nos EUA em 2023
-- Fonte: bigquery-public-data.usa_names.usa_1910_current

SELECT
  name,
  SUM(number) AS total
FROM
  `bigquery-public-data.usa_names.usa_1910_current`
WHERE
  year = 2023
GROUP BY
  name
ORDER BY
  total DESC
LIMIT 10;
