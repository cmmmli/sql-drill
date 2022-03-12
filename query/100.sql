SELECT
  COUNT(DISTINCT user_id) AS users
FROM
  sample.customers
WHERE
  format_datetime("%Y",
    birthday) LIKE "198%"
