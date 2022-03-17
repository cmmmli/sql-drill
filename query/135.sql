WITH
  master AS (
  SELECT
    MAX(
    IF
      (page = "/cart/",
        1,
        0)) AS carts,
    MAX(
    IF
      (page = "/thank_you/",
        1,
        0)) AS thanks
  FROM
    sample.web_log
  GROUP BY
    cid,
    session_count )
SELECT
  SUM(thanks) / SUM(carts)
FROM
  master
