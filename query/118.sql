SELECT
  format_datetime("%B",
    date_time) AS month,
  COUNT(DISTINCT CONCAT(cid, session_count)) AS session
FROM
  sample.web_log
GROUP BY
  month
ORDER BY
  session DESC
LIMIT
  3
