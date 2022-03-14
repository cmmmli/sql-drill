SELECT
  product_category,
  SUM(quantity) AS sum_qty,
  SUM(revenue) AS sum_rev
FROM
  sample.products
INNER JOIN
  sample.sales
USING
  (product_id)
GROUP BY
  product_category
ORDER BY
  sum_rev DESC
