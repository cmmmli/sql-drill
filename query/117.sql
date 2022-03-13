SELECT
  REGEXP_EXTRACT(name, r"(^.*)\s") AS last_name,
  COUNT(*) AS users
FROM
  sample.customers
WHERE
  gender = 2
GROUP BY
  last_name
HAVING
  users >= 3
