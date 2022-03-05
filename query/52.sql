SELECT
  datetime_diff(date "2019-12-31",
    birthday,
    YEAR) AS youngest_age
FROM
  sample.customers
WHERE
  birthday IS NOT NULL
ORDER BY
  birthday DESC
LIMIT
  1
