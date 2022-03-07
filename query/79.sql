SELECT
  SUM(revenue) AS sum_revenue_1
FROM
  sample.sales
WHERE
  product_id = 1
