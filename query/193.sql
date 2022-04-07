WITH v1 AS (
  SELECT
    user_id
  FROM
    sample.sales
  GROUP BY
    user_id
),
v2 AS (
  SELECT
    user_id
  FROM
    sample.web_log
  GROUP BY
    user_id
)
SELECT
  count(DISTINCT w_user_id) / count(DISTINCT s_user_id) AS web_usage_rate
FROM
  (
    SELECT
      v1.user_id AS s_user_id,
      v2.user_id AS w_user_id
    FROM
      v1
      LEFT JOIN v2 USING (user_id)
  )
