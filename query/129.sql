SELECT
  MAX(prefecture) AS prefecture,
  SUM(revenue) AS sum_rev
FROM
  sample.sales
INNER JOIN
  sample.customers
USING
  (user_id)
GROUP BY
  sales.user_id
ORDER BY
  sum_rev DESC
LIMIT
  1
