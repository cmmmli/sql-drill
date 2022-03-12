SELECT
  SUM(
  IF
    (product_id = 1
      AND quantity = 1
      AND is_proper = FALSE,
      2000,
      revenue)) AS modified_sum_rev
FROM
  sample.sales
