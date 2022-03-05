SELECT
  *
FROM
  sample.sales
WHERE
  product_id IN (7,
    9,
    11)
  AND quantity >= 2
  AND is_proper IS FALSE
ORDER BY
  order_id
