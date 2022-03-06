SELECT
  page,
  REGEXP_EXTRACT(page, r"/prod/prod_id_(\d+)") AS product_id
FROM
  sample.web_log
WHERE
  STRPOS(page, "/prod/") > 0
ORDER BY
  date_time
LIMIT
  5
