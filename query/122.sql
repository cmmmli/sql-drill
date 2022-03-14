SELECT
  CASE
    WHEN cost <= 300 THEN "300以下"
    WHEN cost <= 600 THEN "301-600"
    WHEN cost <= 900 THEN "601-900"
  ELSE
  "901以上"
END
  AS cost_category,
  COUNT(*) AS number_of_products
FROM
  sample.products
GROUP BY
  cost_category
ORDER BY
  cost_category
