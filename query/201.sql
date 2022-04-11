WITH v1 AS (
  SELECT
    user_id,
    product_id
  FROM
    sample.sales
  GROUP BY
    user_id,
    product_id
)
SELECT
  prod_combi,
  COUNT(DISTINCT user_id) AS users
FROM
  (
    SELECT
      m1.user_id,
      m1.product_id AS prod1,
      m2.product_id AS prod2,
      concat(m1.product_id, "-", m2.product_id) AS prod_combi
    FROM
      MASTER AS m1
      INNER JOIN MASTER AS m2 ON m1.user_id = m2.user_id
      AND m1.product_id < m2.product_id
  )
GROUP BY
  prod_combi
ORDER BY
  2 DESC
LIMIT
  3
