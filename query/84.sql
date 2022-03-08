SELECT
  DATETIME_DIFF(MAX(date_time),
    MIN(date_time),
    DAY) AS days
FROM
  sample.web_log
