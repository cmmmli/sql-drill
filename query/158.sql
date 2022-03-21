WITH proper_sales AS (
  SELECT
    order_id
  FROM
    sample.sales
  WHERE
    is_proper IS TRUE
),
discounted_sales AS (
  SELECT
    order_id
  FROM
    sample.sales
  WHERE
    is_proper IS false
)
SELECT
  count(*)
FROM
  (
    SELECT
      order_id
    FROM
      proper_sales
    INTERSECT
    DISTINCT
    SELECT
      order_id
    FROM
      discounted_sales
  )
