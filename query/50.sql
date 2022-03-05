SELECT
  *
FROM
  sample.products
WHERE
  product_category = "クッキー"
  AND product_name not like "%クッキー"
