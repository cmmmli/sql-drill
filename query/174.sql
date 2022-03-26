SELECT
  COUNT(DISTINCT user_id) AS users
FROM
  (
    SELECT
      user_id
    FROM
      sample.sales
    WHERE
      product_id IN (1, 2)
    GROUP BY
      user_id
    HAVING
      MAX(product_id) + MIN(product_id) = 3
  )
