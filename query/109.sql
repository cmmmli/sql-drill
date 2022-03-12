SELECT
  format_datetime("%Y",
    date_time) AS year,
  ROUND(AVG(quantity), 2) AS avg_qty
FROM
  sample.sales
GROUP BY
  year
ORDER BY
  year
