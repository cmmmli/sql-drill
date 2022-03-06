SELECT
  *
FROM
  sample.sales
WHERE
  format_datetime("%m-%d",
    date_time) = "01-01"
ORDER BY
  order_id
