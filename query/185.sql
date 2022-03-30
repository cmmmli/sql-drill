SELECT
  device,
  SUM(cv) AS cv,
  COUNT(*) AS session,
  ROUND(SUM(cv) / COUNT(*), 4) AS cvr
FROM (
  SELECT
    device,
    MAX(
    IF
      (PAGE = "/thank_you/",
        1,
        0)) AS cv
  FROM
    sample.web_log
  GROUP BY
    device,
    cid,
    session_count )
GROUP BY
  device
