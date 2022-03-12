SELECT
  CEIL(SUM(revenue) / COUNT(DISTINCT DATE(date_time)) / 100) * 100 AS avg_rev_by_day
FROM
  sample.sales
