SELECT
  prefecture,
  COUNT(*) AS users
FROM
  sample.customers
WHERE
  register_date IS NULL
GROUP BY
  prefecture
ORDER BY
  users DESC
LIMIT
  3
