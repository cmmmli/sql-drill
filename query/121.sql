SELECT
  format_datetime("%A",
    date_time) AS day_of_week,
  format_datetime("%H",
    date_time) AS hour,
  COUNT(*) AS pageviews
FROM
  sample.web_log
GROUP BY
  day_of_week,
  hour
HAVING
  pageviews >= 60
ORDER BY
  pageviews DESC
