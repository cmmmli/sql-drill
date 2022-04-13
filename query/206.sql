WITH sales AS (
  SELECT
    user_id,
    SUM(revenue) AS sum_rev
  FROM
    sample.sales
  GROUP BY
    user_id
),
web AS (
  SELECT
    user_id
  FROM
    sample.web_log
  GROUP BY
    user_id
  HAVING
    user_id IS NOT NULL
)
SELECT
  web_usage,
  SUM(sum_rev) AS sum_rev,
  SUM(sum_rev) / COUNT(DISTINCT user_id) AS avg_rev_by_user
FROM
  (
    SELECT
      s.user_id,
      sum_rev,
      IF(w.user_id IS NOT NULL, "Web利用あり顧客", "Web利用なし顧客") AS web_usage
    FROM
      sales AS s
      LEFT JOIN web AS w ON s.user_id = w.user_id
  )
GROUP BY
  web_usage
ORDER BY
  sum_rev DESC
