SELECT
  var_pop(cost) AS var_cost
FROM
  sample.products
WHERE
  product_category != "ゼリー"
