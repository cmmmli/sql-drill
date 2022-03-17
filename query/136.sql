WITH
  master AS (
  SELECT
    order_id,
    SUM(revenue) AS sum_rev
  FROM
    sample.sales
  GROUP BY
    order_id )
SELECT
  COUNT(DISTINCT order_id) AS count_orders,
  SUM(sum_rev) AS sum_rev,
  AVG(sum_rev) AS average_order_value
FROM
  master
