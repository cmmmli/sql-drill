WITH
  customers AS (
  SELECT
    user_id,
    gender
  FROM
    sample.customers )
SELECT
IF
  (c.gender = 1,
    "男性",
    "女性") AS gender,
  SUM(revenue) / COUNT(DISTINCT order_id) AS avg_order_value
FROM
  sample.sales AS s
INNER JOIN
  customers AS c
USING
  (user_id)
GROUP BY
  c.gender
