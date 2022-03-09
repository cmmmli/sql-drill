SELECT
  COUNT(*) AS users
FROM
  sample.customers
WHERE
  register_date IS NULL
