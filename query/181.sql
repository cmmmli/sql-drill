SELECT
  ROUND(SUM(
    IF
      (is_bounce,
        1,
        0)) / COUNT(*), 3) AS bounce_rate
FROM (
  SELECT
    cid,
    session_count,
    COUNT(*) = 1 AS is_bounce
  FROM
    sample.web_log
  GROUP BY
    cid,
    session_count )
