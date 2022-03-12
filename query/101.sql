SELECT
  prefecture,
  COUNT(*) AS users
FROM
  sample.customers
GROUP BY
  prefecture
ORDER BY
  users DESC
LIMIT
  3
