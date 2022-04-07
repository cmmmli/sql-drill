SELECT
  product_category,
  sum(revenue) - sum(quantity * cost) AS profit,
  (sum(revenue) - sum(quantity * cost)) / sum(revenue) AS profit_rate
FROM
  sample.sales
  INNER JOIN sample.products USING (product_id)
GROUP BY
  product_category
ORDER BY
  profit_rate DESC
