WITH v1 AS (
  SELECT
    user_id,
    order_id,
    sum(revenue) AS sum_rev
  FROM
    sample.sales
  GROUP BY
    user_id,
    order_id
),
v2 AS (
  SELECT
    user_id,
    max(sum_rev) AS max_sum_rev
  FROM
    v1
  GROUP BY
    user_id
)
SELECT
  user_id,
  count(DISTINCT order_id) AS total_orders,
  sum(revenue) AS total_revenue,
  max(max_sum_rev) AS beggest_order,
  count(DISTINCT product_id) AS items
FROM
  sample.sales
  JOIN v2 USING (user_id)
GROUP BY
  user_id
HAVING
  total_orders >= 7
ORDER BY
  user_id
