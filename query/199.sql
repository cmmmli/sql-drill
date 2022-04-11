WITH propers AS (
  SELECT
    product_id,
    sum(revenue) / sum(quantity) AS proper_unit_price
  FROM
    sample.sales
  WHERE
    is_proper IS TRUE
  GROUP BY
    product_id
)
SELECT
  sum(
    quantity * (proper_unit_price - (revenue / quantity))
  ) AS sum_discount
FROM
  sample.sales
  LEFT JOIN propers USING (product_id)
WHERE
  is_proper IS false
