WITH MASTER AS (
  SELECT
    user_id,
    gender,
    sum(revenue) AS sum_rev
  FROM
    sample.sales
    INNER JOIN sample.customers USING (user_id)
  GROUP BY
    user_id,
    gender
)
SELECT
  IF(gender = 1, "男性", "女性") AS gender_name,
  round(stddev_pop(sum_rev), 0) AS std_dev
FROM
  MASTER
GROUP BY
  gender
