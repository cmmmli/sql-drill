SELECT
  prefecture,
  COUNT(*) AS premium_users
FROM
  sample.customers
WHERE
  is_premium IS TRUE
GROUP BY
  prefecture
ORDER BY
  premium_users DESC
LIMIT
  3
