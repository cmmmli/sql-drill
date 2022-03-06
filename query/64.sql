SELECT
  name,
  prefecture,
  register_date,
  DATE_ADD(register_date, INTERVAL 10 YEAR) AS aniversary10
FROM
  sample.customers
WHERE
  gender = 1
  AND prefecture = "千葉"
  AND register_date IS NOT NULL
ORDER BY
  register_date
