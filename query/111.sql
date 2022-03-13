SELECT
  DATE(date_time) AS date,
  COUNT(*) AS pageviews
FROM
  sample.web_log
GROUP BY
  date
ORDER BY
  pageviews DESC
LIMIT
  3
