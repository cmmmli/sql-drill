SELECT
  product_category,
  CAST(AVG(cost) AS int64) AS avg_cost
FROM
  sample.products
GROUP BY
  product_category
ORDER BY
  avg_cost DESC
