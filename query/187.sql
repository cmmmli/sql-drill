SELECT
  COUNT(DISTINCT user_id) users
FROM
  (
    SELECT
      user_id,
    FROM
      sample.sales
    GROUP BY
      user_id
    HAVING
      MAX(IF(product_id = 1, 1, 0)) > 0
      AND MAX(IF(product_id = 2, 1, 0)) > 0
      AND MAX(IF(product_id = 15, 1, 0)) = 0
  )
