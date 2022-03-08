SELECT
  device,
  COUNT(*) AS pageviews
FROM
  sample.web_log
GROUP BY
  device
ORDER BY
  pageviews DESC
