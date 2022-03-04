SELECT
  format_datetime("%Y-%m-%d", date_time) AS newest_date
FROM
  sample.sales
ORDER BY
  date_time DESC
LIMIT
  1
