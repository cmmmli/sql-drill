SELECT
  prefecture,
  SUM(quantity) AS sum_qty
FROM
  sample.customers
INNER JOIN
  sample.sales
USING
  (user_id)
GROUP BY
  prefecture
ORDER BY
  sum_qty
LIMIT
  3
