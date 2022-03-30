SELECT
  user_id,
  DATE_DIFF("2019-12-31", birthday, YEAR) AS age
FROM
  sample.customers
WHERE
  DATE_DIFF("2019-12-31", birthday, YEAR) > (
  SELECT
    AVG(DATE_DIFF("2019-12-31", birthday, YEAR))
  FROM
    sample.customers )
  AND register_date IS NOT NULL
ORDER BY
  register_date
LIMIT
  3
