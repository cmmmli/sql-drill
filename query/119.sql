SELECT
  COUNT(DISTINCT user_id) AS users,
  COUNT(DISTINCT order_id) AS orders,
  ROUND(COUNT(DISTINCT order_id) / COUNT(DISTINCT user_id), 2) AS avg_orders
FROM
  sample.sales
