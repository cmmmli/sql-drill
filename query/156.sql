WITH MASTER AS (
  SELECT
    FORMAT_DATETIME("%Y", date_time) AS year,
    user_id,
    SUM(revenue) AS sum_rev
  FROM
    sample.sales
  GROUP BY
    year,
    user_id
)
SELECT
  *,
  (sum_rev_17 + sum_rev_18 + sum_rev_19) AS ttl_sum_rev
FROM
  (
    SELECT
      user_id,
      MAX(sum_rev_17) AS sum_rev_17,
      MAX(sum_rev_18) AS sum_rev_18,
      MAX(sum_rev_19) AS sum_rev_19
    FROM
      sample.sales
      LEFT JOIN (
        SELECT
          user_id,
          IF(year = "2017", sum_rev, 0) AS sum_rev_17
        FROM
          MASTER
      ) USING (user_id)
      LEFT JOIN (
        SELECT
          user_id,
          IF(year = "2018", sum_rev, 0) AS sum_rev_18
        FROM
          MASTER
      ) USING (user_id)
      LEFT JOIN (
        SELECT
          user_id,
          IF(year = "2019", sum_rev, 0) AS sum_rev_19
        FROM
          MASTER
      ) USING (user_id)
    GROUP BY
      user_id
  )
WHERE
  sum_rev_18 > sum_rev_17
  AND sum_rev_19 > sum_rev_18
ORDER BY
  ttl_sum_rev DESC
LIMIT
  3
