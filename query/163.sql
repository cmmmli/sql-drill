SELECT
  COUNT(*) AS orders_over_avg_rev
FROM
  sample.sales
WHERE
  is_proper IS TRUE
  AND revenue > (
    SELECT
      AVG(revenue) AS avg_rev
    FROM
      sample.sales
    WHERE
      is_proper IS TRUE
  )
