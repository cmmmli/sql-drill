SELECT
  product_name,
  SUM(revenue) AS sum_rev
FROM
  sample.sales
INNER JOIN
  sample.customers
USING
  (user_id)
INNER JOIN
  sample.products
USING
  (product_id)
WHERE
  prefecture = "東京"
GROUP BY
  product_id, product_name
ORDER BY
  sum_rev DESC
LIMIT
  3
