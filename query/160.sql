SELECT
  name,
  birthday
FROM
  sample.customers
WHERE
  birthday IN (
  SELECT
    birthday
  FROM
    sample.customers
  GROUP BY
    birthday
  HAVING
    COUNT(*) >= 2 )
ORDER BY
  birthday
