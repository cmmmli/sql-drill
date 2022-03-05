SELECT
  *
FROM
  sample.customers
WHERE
  format_datetime("%m-%d", birthday) = format_datetime("%m-%d", register_date)
