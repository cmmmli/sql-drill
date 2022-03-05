SELECT
  *
FROM
  sample.customers
WHERE
  prefecture IN ("福岡", "長崎", "佐賀")
  AND is_premium IS TRUE
ORDER BY
  user_id
