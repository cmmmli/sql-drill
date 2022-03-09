SELECT
  TRUNC(SUM(revenue) / COUNT(DISTINCT order_id), -2) AS avg_rev_by_order
FROM
  sample.sales
