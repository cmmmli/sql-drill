SELECT
  SUM(revenue) - SUM(cost * quantity) AS sum_profit,
  (SUM(revenue) - SUM(cost * quantity)) / SUM(revenue) AS profit_rate
FROM
  sample.sales AS sales
INNER JOIN
  sample.products AS products
USING
  (product_id)
