SELECT
  COUNT(*) AS pageviews_prod
FROM
  sample.web_log
WHERE
  REGEXP_CONTAINS(page, r"^/prod/prod_id_\d.*/$")
