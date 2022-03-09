SELECT
  order_id,
  SUM(revenue) AS sum_rev
FROM
  sample.sales
GROUP BY
  order_id
ORDER BY
  sum_rev DESC
LIMIT
  1
