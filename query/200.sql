SELECT
  product_name,
  sum(revenue) / sum(quantity) AS avg_rev,
  max(cost) AS unit_cost,
  sum(quantity) AS sum_qty,
  sum(revenue) AS sum_rev,
  sum(cost * quantity) AS sum_cost,
  (sum(revenue) / sum(quantity) - max(cost)) * sum(quantity) AS sum_profit,
  (
    (sum(revenue) / sum(quantity) - max(cost)) * sum(quantity)
  ) / sum(revenue) AS avg_profit_rate
FROM
  sample.sales
  JOIN sample.products USING (product_id)
GROUP BY
  product_name
ORDER BY
  avg_profit_rate DESC
LIMIT
  3
