WITH
  master AS (
  SELECT
    user_id,
    is_premium
  FROM
    sample.customers ),
  master2 AS (
  SELECT
    MAX(is_premium) AS is_premium,
    SUM(revenue) AS sum_rev
  FROM
    sample.sales
  INNER JOIN
    master
  USING
    (user_id)
  GROUP BY
    user_id )
SELECT
  is_premium,
  MAX(sum_rev) AS max_revenue_by_customer
FROM
  master2
GROUP BY
  is_premium
