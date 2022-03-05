SELECT
  name,
  birthday,
  register_date
FROM
  sample.customers
WHERE
  birthday IS NULL
  AND register_date IS NOT NULL
