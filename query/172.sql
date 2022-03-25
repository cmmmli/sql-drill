SELECT
  REGEXP_EXTRACT(name, r"\s(.+$)") AS first_name,
  count(*) as users
FROM
  sample.customers
WHERE
  gender = 2
GROUP BY
  first_name
HAVING
  COUNT(*) >= 3
