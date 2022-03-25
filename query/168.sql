SELECT
  COUNT(DISTINCT user_id) AS users
FROM (
  SELECT
    MAX(user_id) AS user_id
  FROM
    sample.sales
  GROUP BY
    order_id
  HAVING
    COUNT(DISTINCT product_id) > 1)
