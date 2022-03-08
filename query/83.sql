SELECT
  SUM(revenue) / COUNT(DISTINCT user_id) AS avg_rev_by_user
FROM
  sample.sales
