SELECT
  date_time
FROM
  sample.sales
WHERE
  is_proper IS false
ORDER BY
  date_time
LIMIT
  1
