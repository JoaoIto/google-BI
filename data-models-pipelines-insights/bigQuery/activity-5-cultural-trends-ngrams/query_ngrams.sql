-- Atividade 5: Google Books Ngrams
-- Comparando a popularidade de termos tecnológicos desde 1950

-- Se o projeto Google Cloud estiver configurado corretamente, 
-- você pode rodar esta query no BigQuery Studio.

SELECT
  term,
  y.year,
  SUM(y.term_frequency) AS total_occurrences
FROM
  `bigquery-public-data.google_books_ngrams_2020.chi_sim_1`,
  UNNEST(years) AS y
WHERE
  term IN ('data', 'science', 'technology')
  AND y.year >= 1950
GROUP BY
  term, y.year
ORDER BY
  y.year ASC, total_occurrences DESC;
