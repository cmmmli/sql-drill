SELECT
  SUM( revenue *
  IF
    (date_time < date "2019-10-1",
      1.08,
      1.1) ) as revenue_with_tax
FROM
  sample.sales
