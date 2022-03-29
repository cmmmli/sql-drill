SELECT
  DATE_DIFF(register_date, birthday, YEAR) AS register_age,
  COUNT(*) AS users
FROM
  sample.customers
WHERE
  birthday IS NOT NULL
  AND register_date IS NOT NULL
GROUP BY
  register_age
ORDER BY
  users DESC
LIMIT
  3
