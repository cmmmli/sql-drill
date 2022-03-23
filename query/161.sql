SELECT
  order_id,
  product_id,
  revenue,
  revenue / (
  SELECT
    SUM(revenue)
  FROM
    sample.sales) AS revenue_percentage
FROM
  sample.sales
ORDER BY
  revenue DESC
