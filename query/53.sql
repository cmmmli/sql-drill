SELECT
  CONCAT(product_category, "-", product_name) AS cat_prod,
  cost
FROM
  sample.products
ORDER BY
  cost DESC
LIMIT
  3
