SELECT
  CONCAT(product_category, "-", product_name) AS cat_prod,
  LENGTH( CONCAT(product_category, "-", product_name)) AS length
FROM
  sample.products
ORDER BY
  length DESC
LIMIT
  3
