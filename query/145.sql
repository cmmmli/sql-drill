WITH
  customers AS (
  SELECT
    user_id,
    gender
  FROM
    sample.customers )
SELECT
IF
  (gender = 1,
    "男性",
    "女性") AS gender_cat,
  COUNT(DISTINCT order_id) AS sum_orders
FROM
  sample.sales
INNER JOIN
  customers
USING
  (user_id)
GROUP BY
  gender
ORDER BY
  sum_orders DESC
