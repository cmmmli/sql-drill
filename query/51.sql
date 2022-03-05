SELECT
  datetime_diff(current_datetime("Asia/Tokyo"),
    birthday,
    YEAR) AS current_age
FROM
  sample.customers
WHERE
  birthday IS NOT NULL
ORDER BY
  birthday DESC
LIMIT
  1
