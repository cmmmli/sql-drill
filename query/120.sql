SELECT
  prefecture,
  COUNT(*) AS premium_or_male_users
FROM
  sample.customers
WHERE
  is_premium IS TRUE
  OR gender = 1
GROUP BY
  prefecture
ORDER BY
  premium_or_male_users DESC
LIMIT
  3
