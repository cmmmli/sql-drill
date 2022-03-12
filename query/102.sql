SELECT
  COUNT(*) AS users
FROM
  sample.customers
WHERE
  datetime_TRUNC(register_date,
    QUARTER) = datetime "2019-01-01"
