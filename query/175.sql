WITH MASTER AS (
  SELECT
    order_id,
    SUM(revenue) AS sum_rev,
  FROM
    sample.sales
  GROUP BY
    order_id
)
SELECT
  order_id,
  SUM(revenue) AS sum_rev,
  SUM(revenue) / (
    SELECT
      MAX(sum_rev) AS max_sum_rev
    FROM
      MASTER
  ) AS percentage_against_max_revenue
FROM
  sample.sales
GROUP BY
  order_id
ORDER BY
  sum_rev DESC
LIMIT
  5
