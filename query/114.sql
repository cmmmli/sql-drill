SELECT
  session_count,
  COUNT(DISTINCT cid) AS users
FROM
  sample.web_log
WHERE
  device = "mobile"
  AND session_count = 1
GROUP BY
  session_count
