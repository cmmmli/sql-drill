SELECT
  CONCAT(name,
  IF
    (gender = 1,
      "様",
      "さま")) AS nama_sama
FROM
  sample.customers
ORDER BY
  register_date DESC
LIMIT
  5
