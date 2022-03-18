WITH
  master AS (
  SELECT
    user_id,
    datetime_diff("2019-12-31",
      birthday,
      YEAR) AS age
  FROM
    sample.customers )
SELECT
  age,
  SUM(revenue) AS sum_rev
FROM
  sample.sales
INNER JOIN
  master
USING
  (user_id)
WHERE
  age IS NOT NULL
GROUP BY
  age
ORDER BY
  sum_rev DESC
LIMIT
  3
