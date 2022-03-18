WITH
  master AS (
  SELECT
    user_id,
  FROM
    sample.customers
  WHERE
    datetime_diff("2019-12-31",
      birthday,
      YEAR) >= 50 )
SELECT
  product_id,
  SUM(revenue) AS sum_rev
FROM
  sample.sales
INNER JOIN
  master
USING
  (user_id)
GROUP BY
  product_id
ORDER BY
  sum_rev DESC
LIMIT
  3
