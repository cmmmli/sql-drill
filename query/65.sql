SELECT
  user_id,
  name,
  birthday,
  register_date,
  DATE_DIFF(register_date, birthday, YEAR) AS register_age
FROM
  sample.customers
WHERE
  birthday IS NOT NULL
  AND register_date IS NOT NULL
ORDER BY
  register_age
LIMIT
  1
