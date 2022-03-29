SELECT
  prefecture,
  SUM(IF(is_premium, 1, 0)) AS premium_users,
  COUNT(*) AS users,
  SUM(IF(is_premium, 1, 0)) / COUNT(*) AS premium_rate
FROM
  sample.customers
GROUP BY
  prefecture
ORDER BY
  premium_users DESC
LIMIT
  3
