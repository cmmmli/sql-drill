SELECT
  birthday
FROM
  sample.customers
WHERE
  birthday IS NOT NULL
ORDER BY
  birthday
LIMIT
  1
