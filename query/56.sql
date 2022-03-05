SELECT
  name AS user_name,
  birthday
FROM
  sample.customers
WHERE
  name LIKE "川%"
ORDER BY
  birthday
LIMIT
  3
