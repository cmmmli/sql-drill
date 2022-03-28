SELECT
  user_id,
  max(name) AS name
FROM
  sample.sales
  INNER JOIN sample.customers USING (user_id)
GROUP BY
  order_id,
  user_id
HAVING
  count(product_id) != count(DISTINCT product_id)
ORDER BY
  user_id
