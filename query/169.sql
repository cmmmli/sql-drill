SELECT
  prefecture,
  ROUND(AVG(DATE_DIFF("2019-12-31", birthday, YEAR)), 1) AS avg_age
FROM
  sample.customers
GROUP BY
  prefecture
ORDER BY
  avg_age DESC
LIMIT
  3
