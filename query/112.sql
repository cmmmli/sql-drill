SELECT
  format_datetime("%H",
    date_time) AS hour,
  COUNT(*) AS pageviews
FROM
  sample.web_log
GROUP BY
  hour
ORDER BY
  pageviews DESC
LIMIT
  3
