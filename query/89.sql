SELECT
  page,
  COUNT(*) AS pageviews
FROM
  sample.web_log
GROUP BY
  page
ORDER BY
  pageviews DESC
LIMIT
  5
