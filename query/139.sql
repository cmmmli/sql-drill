SELECT
  c.prefecture,
  SUM(s.revenue) / SUM(quantity) AS avg_unit_price
FROM
  sample.sales AS s
INNER JOIN
  sample.customers AS c
USING
  (user_id)
GROUP BY
  c.prefecture
ORDER BY
  avg_unit_price DESC
LIMIT
  3
