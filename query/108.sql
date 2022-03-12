SELECT
  SUM(revenue) AS sum_revenue_5_2019
FROM
  sample.sales
WHERE
  format_datetime("%Y",
    date_time) = "2019"
  AND product_id = 5
