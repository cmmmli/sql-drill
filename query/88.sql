SELECT
  COUNT(DISTINCT format_datetime("%F",
      date_Time)) AS unique_days
FROM
  sample.web_log
