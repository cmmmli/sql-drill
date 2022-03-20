WITH
  web_log AS (
  SELECT
    CAST(REGEXP_EXTRACT(page, r"^/prod/prod_id_(\d+)/") AS int64) AS product_id,
    COUNT(*) AS pageviews
  FROM
    sample.web_log
  GROUP BY
    product_id ),
  sales AS (
  SELECT
    product_id,
    SUM(quantity) AS sum_qty,
    SUM(revenue) AS sum_rev
  FROM
    sample.sales
  GROUP BY
    product_id)
SELECT
  product_id,
  sales.sum_qty,
  sales.sum_rev,
  web_log.pageviews
FROM
  web_log
INNER JOIN
  sales
USING
  (product_id)
ORDER BY
  pageviews DESC
LIMIT
  3
