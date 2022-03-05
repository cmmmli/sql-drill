SELECT
  user_id,
  name,
  birthday
FROM
  sample.customers
WHERE
  EXTRACT(DAYOFWEEK
  FROM
    birthday) = 2
ORDER BY
  birthday
LIMIT
  1
