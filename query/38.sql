SELECT
  date_time
FROM
  sample.web_log
WHERE
  media = "cpc"
ORDER BY
  date_time
LIMIT
  1
