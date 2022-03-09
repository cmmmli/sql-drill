SELECT
  sum(revenue) as sum_revenue_2019
FROM
  sample.sales
where
datetime_trunc(date_time, YEAR) = 2019
