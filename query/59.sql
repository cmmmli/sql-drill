SELECT
  product_name,
  REGEXP_REPLACE(product_name, r".*ゼリー$", "ジュレ") AS modified_name
FROM
  sample.products
WHERE
  REGEXP_CONTAINS(product_name, r".*ゼリー$")
