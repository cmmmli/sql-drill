SELECT
  date_time AS oldest_datetime
FROM
  sample.sales
ORDER BY
  date_time
LIMIT
  1
