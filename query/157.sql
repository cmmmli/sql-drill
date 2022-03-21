SELECT
  count(DISTINCT user_id) AS users
FROM
  sample.sales
WHERE
  product_id = 7
