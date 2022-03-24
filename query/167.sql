SELECT
  COUNT(*) AS users
FROM (
  SELECT
    user_id,
    COUNT(DISTINCT product_id) AS product_count
  FROM
    sample.sales
  GROUP BY
    user_id
  HAVING
    product_count > 1 )
