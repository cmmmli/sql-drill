SELECT
  MAX(sum_rev) AS max_sum_rev,
  MIN(sum_rev)AS min_sum_rev,
  AVG(sum_rev) AS avg_sum_rev
FROM (
  SELECT
    SUM(revenue) AS sum_rev
  FROM
    sample.sales
  GROUP BY
    user_id )
