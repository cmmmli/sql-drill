SELECT
  SUM(quantity) AS sum_qty_14_15
FROM
  sample.sales
WHERE
  product_id IN (14,
    15)
