SELECT
  media,
  COUNT(*) AS pageviews
FROM
  sample.web_log
WHERE
  page NOT LIKE "/prod/%"
GROUP BY
  media
ORDER BY
  pageviews DESC
