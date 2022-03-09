SELECT
  COUNT(*) AS pageviews_8
FROM
  sample.web_log
WHERE
  REGEXP_REPLACE(page, r"\?.*$", "") = "/prod/prod_id_8/"
