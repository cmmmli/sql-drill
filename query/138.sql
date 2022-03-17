SELECT
  format_datetime("%w-%A",
    date_time) AS day_of_week,
  COUNT(*) AS sum_pv
FROM
  sample.web_log
GROUP BY
  day_of_week
order by day_of_week
