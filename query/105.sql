SELECT
  AVG(DATE_DIFF("2019-12-31", birthday, YEAR)) AS avg_age
FROM
  sample.customers
WHERE
  prefecture = "千葉"
  AND gender = 2
