SELECT
  COUNT(*) AS cv
FROM (
  SELECT
    cid
  FROM
    sample.web_log
  WHERE
    page = "/thank_you/"
  GROUP BY
    cid,
    session_count)
