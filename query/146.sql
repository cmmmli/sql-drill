WITH
  customers AS (
  SELECT
    user_id,
  IF
    (register_date IS NULL,
      "1916-4",
      FORMAT_DATE("%Y-%Q", register_date) ) AS register_quarter
  FROM
    sample.customers )
SELECT
  register_quarter,
  SUM(revenue) AS sum_rev
FROM
  sample.sales
INNER JOIN
  customers
USING
  (user_id)
GROUP BY
  register_quarter
ORDER BY
  sum_rev DESC
LIMIT
  3
