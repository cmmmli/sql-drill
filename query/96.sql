SELECT
  cost,
  COUNT(*) AS number_of_products
FROM
  sample.products
WHERE
  cost < 500
GROUP BY
  cost
