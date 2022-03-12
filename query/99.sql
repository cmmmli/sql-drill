SELECT
  COUNT(DISTINCT order_id) AS orders
FROM
  sample.sales
WHERE
  format_datetime("%m",
    date_time) IN ("01",
    "12")
