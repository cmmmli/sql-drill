WITH
  master AS (
  SELECT
    product_id,
    SUM(revenue) / SUM(quantity) AS avg_unit_price,
    SUM(revenue) AS sum_rev,
    SUM(quantity) AS sum_qty
  FROM
    sample.sales
  GROUP BY
    product_id )
SELECT
  MAX(
  IF
    (product_id = 1,
      avg_unit_price,
      0)) AS avg_unit_price_1,
  SUM(sum_rev) / SUM(sum_qty) AS avg_unit_price_all,
  MAX(
  IF
    (product_id = 1,
      avg_unit_price,
      0)) / (SUM(sum_rev) / SUM(sum_qty)) AS diff_percent
FROM
  master
