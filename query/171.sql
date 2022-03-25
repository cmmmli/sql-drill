SELECT
  avg(date_diff("2019-12-31", birthday, YEAR)) AS avg_age
FROM
  sample.customers
WHERE
  date_diff("2019-12-31", birthday, YEAR) > (
    SELECT
      avg(date_diff("2019-12-31", birthday, YEAR))
    FROM
      sample.customers
    WHERE
      birthday IS NOT NULL
  )
