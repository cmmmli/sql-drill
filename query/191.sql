WITH v1 AS (
  SELECT
    user_id,
    SUM(revenue) AS sum_rev,
    IF (gender = 1, "男性", "女性") AS gender_name
  FROM
    sample.sales
    INNER JOIN sample.customers USING (user_id)
  GROUP BY
    user_id,
    gender
)
SELECT
  gender_name,
  MAX(sum_rev) AS max_sum_rev
FROM
  v1
GROUP BY
  gender_name
