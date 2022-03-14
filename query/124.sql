SELECT
  MAX(customers.name) AS name,
  SUM(revenue) AS sum_rev
FROM
  sample.customers
INNER JOIN
  sample.sales
ON
  customers.user_id = sales.user_id
GROUP BY
  customers.user_id
ORDER BY
  sum_rev DESC
LIMIT
  3
