SELECT
  SUM(sum_rev) AS sum_rev
FROM (
  SELECT
    order_id,
    SUM(revenue) AS sum_rev,
    MIN(is_proper) AS proper_flag
  FROM
    sample.sales
  GROUP BY
    order_id
  HAVING
    proper_flag IS TRUE )
