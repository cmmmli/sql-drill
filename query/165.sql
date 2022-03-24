SELECT
  sum(quantity) AS sum_qty_over_avg_rev
FROM
  sample.sales
WHERE
  is_proper IS TRUE
  AND revenue > (
    SELECT
      avg(revenue)
    FROM
      sample.sales
  )
