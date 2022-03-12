SELECT
  FORMAT_DATETIME("%Y-%p",
    date_time) AS sales_time,
  SUM(revenue) AS sum_rev
FROM
  sample.sales
GROUP BY
  sales_time
ORDER BY
  sales_time
