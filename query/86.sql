SELECT
  COUNT(*) AS users
FROM
  sample.customers
WHERE
  prefecture != "東京"
