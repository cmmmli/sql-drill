SELECT
  format_datetime("%Y",
    date_time) AS year,
  COUNT(DISTINCT user_id) AS users
FROM
  sample.sales
GROUP BY
  year
ORDER BY
  year
