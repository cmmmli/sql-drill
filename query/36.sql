SELECT
  order_id,
  user_id,
  revenue
FROM
  sample.sales
ORDER BY
  revenue DESC
LIMIT
  1
