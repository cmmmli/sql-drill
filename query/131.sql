SELECT
  datetime_diff("2019-12-31",
    birthday,
    YEAR) AS age,
  COUNT(*) AS users
FROM
  sample.customers
WHERE
  gender = 1
GROUP BY
  age
ORDER BY
  users DESC
LIMIT
  3
