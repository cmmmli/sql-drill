SELECT
  STDDEV_POP(revenue) AS stddev_2017,
  (
  SELECT
    STDDEV_POP(revenue)
  FROM
    sample.sales ) AS revenue_stddev
FROM
  sample.sales
WHERE
  EXTRACT(YEAR
  FROM
    date_time) = 2017
