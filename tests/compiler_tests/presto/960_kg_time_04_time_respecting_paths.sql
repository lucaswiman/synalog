DROP TABLE IF EXISTS synalog_test.ReachedBy_sn_delta;
CREATE TABLE synalog_test.ReachedBy_sn_delta AS WITH t_1_HandedOver AS (SELECT * FROM (
  
    SELECT
      'a' AS source,
      'b' AS target,
      '2024-01-01' AS valid_from,
      '2024-03-01' AS valid_to
   UNION ALL
  
    SELECT
      'b' AS source,
      'c' AS target,
      '2024-02-01' AS valid_from,
      '2024-04-01' AS valid_to
   UNION ALL
  
    SELECT
      'c' AS source,
      'd' AS target,
      '2024-05-01' AS valid_from,
      '2024-06-01' AS valid_to
   UNION ALL
  
    SELECT
      'a' AS source,
      'c' AS target,
      '2024-03-15' AS valid_from,
      '2024-04-15' AS valid_to
  
) AS UNUSED_TABLE_NAME  ),
t_0_ReachedBy_MultBodyAggAux_f2 AS (SELECT * FROM (
  
    SELECT
      HandedOver.source AS source,
      HandedOver.target AS target,
      HandedOver.valid_from AS valid_from,
      HandedOver.valid_to AS valid_to
    FROM
      t_1_HandedOver AS HandedOver
  
) AS UNUSED_TABLE_NAME  )
SELECT
  ReachedBy_MultBodyAggAux_f2.source AS source,
  ReachedBy_MultBodyAggAux_f2.target AS target,
  ReachedBy_MultBodyAggAux_f2.valid_from AS valid_from,
  ReachedBy_MultBodyAggAux_f2.valid_to AS valid_to
FROM
  t_0_ReachedBy_MultBodyAggAux_f2 AS ReachedBy_MultBodyAggAux_f2
GROUP BY 1, 2, 3, 4;

-- Interacting with table synalog_test.ReachedBy_sn_delta

DROP TABLE IF EXISTS synalog_test.ReachedBy_sn_t0;
CREATE TABLE synalog_test.ReachedBy_sn_t0 AS SELECT
  ReachedBy_sn_delta.source AS source,
  ReachedBy_sn_delta.target AS target,
  ReachedBy_sn_delta.valid_from AS valid_from,
  ReachedBy_sn_delta.valid_to AS valid_to
FROM
  synalog_test.ReachedBy_sn_delta AS ReachedBy_sn_delta
WHERE
  (1 = 0);

-- Interacting with table synalog_test.ReachedBy_sn_t0

DROP TABLE IF EXISTS synalog_test.ReachedBy_sn_t1;
CREATE TABLE synalog_test.ReachedBy_sn_t1 AS WITH t_1_HandedOver AS (SELECT * FROM (
  
    SELECT
      'a' AS source,
      'b' AS target,
      '2024-01-01' AS valid_from,
      '2024-03-01' AS valid_to
   UNION ALL
  
    SELECT
      'b' AS source,
      'c' AS target,
      '2024-02-01' AS valid_from,
      '2024-04-01' AS valid_to
   UNION ALL
  
    SELECT
      'c' AS source,
      'd' AS target,
      '2024-05-01' AS valid_from,
      '2024-06-01' AS valid_to
   UNION ALL
  
    SELECT
      'a' AS source,
      'c' AS target,
      '2024-03-15' AS valid_from,
      '2024-04-15' AS valid_to
  
) AS UNUSED_TABLE_NAME  ),
t_1_ReachedBy_MultBodyAggAux_f3 AS (SELECT * FROM (
  
    SELECT
      HandedOver.source AS source,
      HandedOver.target AS target,
      HandedOver.valid_from AS valid_from,
      HandedOver.valid_to AS valid_to
    FROM
      t_1_HandedOver AS HandedOver
   UNION ALL
  
    SELECT
      ReachedBy_sn_t0.source AS source,
      t_2_HandedOver.target AS target,
      CASE WHEN (ReachedBy_sn_t0.valid_from > t_2_HandedOver.valid_from) THEN ReachedBy_sn_t0.valid_from ELSE t_2_HandedOver.valid_from END AS valid_from,
      CASE WHEN (ReachedBy_sn_t0.valid_to < t_2_HandedOver.valid_to) THEN ReachedBy_sn_t0.valid_to ELSE t_2_HandedOver.valid_to END AS valid_to
    FROM
      synalog_test.ReachedBy_sn_t0 AS ReachedBy_sn_t0, t_1_HandedOver AS t_2_HandedOver
    WHERE
      (CASE WHEN (ReachedBy_sn_t0.valid_from > t_2_HandedOver.valid_from) THEN ReachedBy_sn_t0.valid_from ELSE t_2_HandedOver.valid_from END < CASE WHEN (ReachedBy_sn_t0.valid_to < t_2_HandedOver.valid_to) THEN ReachedBy_sn_t0.valid_to ELSE t_2_HandedOver.valid_to END) AND
      (t_2_HandedOver.source IS NOT DISTINCT FROM ReachedBy_sn_t0.target)
  
) AS UNUSED_TABLE_NAME  ),
t_0_ReachedBy_sn_r1 AS (SELECT
  ReachedBy_MultBodyAggAux_f3.source AS source,
  ReachedBy_MultBodyAggAux_f3.target AS target,
  ReachedBy_MultBodyAggAux_f3.valid_from AS valid_from,
  ReachedBy_MultBodyAggAux_f3.valid_to AS valid_to
FROM
  t_1_ReachedBy_MultBodyAggAux_f3 AS ReachedBy_MultBodyAggAux_f3
GROUP BY 1, 2, 3, 4)
SELECT
  ReachedBy_sn_r1.source AS source,
  ReachedBy_sn_r1.target AS target,
  ReachedBy_sn_r1.valid_from AS valid_from,
  ReachedBy_sn_r1.valid_to AS valid_to
FROM
  t_0_ReachedBy_sn_r1 AS ReachedBy_sn_r1
WHERE
  (1 = 0);

-- Interacting with table synalog_test.ReachedBy_sn_t1

DROP TABLE IF EXISTS synalog_test.ReachedBy_sn_t2;
CREATE TABLE synalog_test.ReachedBy_sn_t2 AS WITH t_1_HandedOver AS (SELECT * FROM (
  
    SELECT
      'a' AS source,
      'b' AS target,
      '2024-01-01' AS valid_from,
      '2024-03-01' AS valid_to
   UNION ALL
  
    SELECT
      'b' AS source,
      'c' AS target,
      '2024-02-01' AS valid_from,
      '2024-04-01' AS valid_to
   UNION ALL
  
    SELECT
      'c' AS source,
      'd' AS target,
      '2024-05-01' AS valid_from,
      '2024-06-01' AS valid_to
   UNION ALL
  
    SELECT
      'a' AS source,
      'c' AS target,
      '2024-03-15' AS valid_from,
      '2024-04-15' AS valid_to
  
) AS UNUSED_TABLE_NAME  ),
t_1_ReachedBy_MultBodyAggAux_f4 AS (SELECT * FROM (
  
    SELECT
      HandedOver.source AS source,
      HandedOver.target AS target,
      HandedOver.valid_from AS valid_from,
      HandedOver.valid_to AS valid_to
    FROM
      t_1_HandedOver AS HandedOver
   UNION ALL
  
    SELECT
      ReachedBy_sn_t1.source AS source,
      t_2_HandedOver.target AS target,
      CASE WHEN (ReachedBy_sn_t1.valid_from > t_2_HandedOver.valid_from) THEN ReachedBy_sn_t1.valid_from ELSE t_2_HandedOver.valid_from END AS valid_from,
      CASE WHEN (ReachedBy_sn_t1.valid_to < t_2_HandedOver.valid_to) THEN ReachedBy_sn_t1.valid_to ELSE t_2_HandedOver.valid_to END AS valid_to
    FROM
      synalog_test.ReachedBy_sn_t1 AS ReachedBy_sn_t1, t_1_HandedOver AS t_2_HandedOver
    WHERE
      (CASE WHEN (ReachedBy_sn_t1.valid_from > t_2_HandedOver.valid_from) THEN ReachedBy_sn_t1.valid_from ELSE t_2_HandedOver.valid_from END < CASE WHEN (ReachedBy_sn_t1.valid_to < t_2_HandedOver.valid_to) THEN ReachedBy_sn_t1.valid_to ELSE t_2_HandedOver.valid_to END) AND
      (t_2_HandedOver.source IS NOT DISTINCT FROM ReachedBy_sn_t1.target)
  
) AS UNUSED_TABLE_NAME  ),
t_0_ReachedBy_sn_r2 AS (SELECT
  ReachedBy_MultBodyAggAux_f4.source AS source,
  ReachedBy_MultBodyAggAux_f4.target AS target,
  ReachedBy_MultBodyAggAux_f4.valid_from AS valid_from,
  ReachedBy_MultBodyAggAux_f4.valid_to AS valid_to
FROM
  t_1_ReachedBy_MultBodyAggAux_f4 AS ReachedBy_MultBodyAggAux_f4
GROUP BY 1, 2, 3, 4)
SELECT
  ReachedBy_sn_r2.source AS source,
  ReachedBy_sn_r2.target AS target,
  ReachedBy_sn_r2.valid_from AS valid_from,
  ReachedBy_sn_r2.valid_to AS valid_to
FROM
  t_0_ReachedBy_sn_r2 AS ReachedBy_sn_r2
WHERE
  (1 = 0);

-- Interacting with table synalog_test.ReachedBy_sn_t2

DROP TABLE IF EXISTS synalog_test.ReachedBy_sn_t3;
CREATE TABLE synalog_test.ReachedBy_sn_t3 AS WITH t_1_HandedOver AS (SELECT * FROM (
  
    SELECT
      'a' AS source,
      'b' AS target,
      '2024-01-01' AS valid_from,
      '2024-03-01' AS valid_to
   UNION ALL
  
    SELECT
      'b' AS source,
      'c' AS target,
      '2024-02-01' AS valid_from,
      '2024-04-01' AS valid_to
   UNION ALL
  
    SELECT
      'c' AS source,
      'd' AS target,
      '2024-05-01' AS valid_from,
      '2024-06-01' AS valid_to
   UNION ALL
  
    SELECT
      'a' AS source,
      'c' AS target,
      '2024-03-15' AS valid_from,
      '2024-04-15' AS valid_to
  
) AS UNUSED_TABLE_NAME  ),
t_1_ReachedBy_MultBodyAggAux_f5 AS (SELECT * FROM (
  
    SELECT
      HandedOver.source AS source,
      HandedOver.target AS target,
      HandedOver.valid_from AS valid_from,
      HandedOver.valid_to AS valid_to
    FROM
      t_1_HandedOver AS HandedOver
   UNION ALL
  
    SELECT
      ReachedBy_sn_t2.source AS source,
      t_2_HandedOver.target AS target,
      CASE WHEN (ReachedBy_sn_t2.valid_from > t_2_HandedOver.valid_from) THEN ReachedBy_sn_t2.valid_from ELSE t_2_HandedOver.valid_from END AS valid_from,
      CASE WHEN (ReachedBy_sn_t2.valid_to < t_2_HandedOver.valid_to) THEN ReachedBy_sn_t2.valid_to ELSE t_2_HandedOver.valid_to END AS valid_to
    FROM
      synalog_test.ReachedBy_sn_t2 AS ReachedBy_sn_t2, t_1_HandedOver AS t_2_HandedOver
    WHERE
      (CASE WHEN (ReachedBy_sn_t2.valid_from > t_2_HandedOver.valid_from) THEN ReachedBy_sn_t2.valid_from ELSE t_2_HandedOver.valid_from END < CASE WHEN (ReachedBy_sn_t2.valid_to < t_2_HandedOver.valid_to) THEN ReachedBy_sn_t2.valid_to ELSE t_2_HandedOver.valid_to END) AND
      (t_2_HandedOver.source IS NOT DISTINCT FROM ReachedBy_sn_t2.target)
  
) AS UNUSED_TABLE_NAME  ),
t_0_ReachedBy_sn_r3 AS (SELECT
  ReachedBy_MultBodyAggAux_f5.source AS source,
  ReachedBy_MultBodyAggAux_f5.target AS target,
  ReachedBy_MultBodyAggAux_f5.valid_from AS valid_from,
  ReachedBy_MultBodyAggAux_f5.valid_to AS valid_to
FROM
  t_1_ReachedBy_MultBodyAggAux_f5 AS ReachedBy_MultBodyAggAux_f5
GROUP BY 1, 2, 3, 4)
SELECT
  ReachedBy_sn_r3.source AS source,
  ReachedBy_sn_r3.target AS target,
  ReachedBy_sn_r3.valid_from AS valid_from,
  ReachedBy_sn_r3.valid_to AS valid_to
FROM
  t_0_ReachedBy_sn_r3 AS ReachedBy_sn_r3
WHERE
  (1 = 0);

-- Interacting with table synalog_test.ReachedBy_sn_t3

DROP TABLE IF EXISTS synalog_test.ReachedBy_sn_t4;
CREATE TABLE synalog_test.ReachedBy_sn_t4 AS WITH t_1_HandedOver AS (SELECT * FROM (
  
    SELECT
      'a' AS source,
      'b' AS target,
      '2024-01-01' AS valid_from,
      '2024-03-01' AS valid_to
   UNION ALL
  
    SELECT
      'b' AS source,
      'c' AS target,
      '2024-02-01' AS valid_from,
      '2024-04-01' AS valid_to
   UNION ALL
  
    SELECT
      'c' AS source,
      'd' AS target,
      '2024-05-01' AS valid_from,
      '2024-06-01' AS valid_to
   UNION ALL
  
    SELECT
      'a' AS source,
      'c' AS target,
      '2024-03-15' AS valid_from,
      '2024-04-15' AS valid_to
  
) AS UNUSED_TABLE_NAME  ),
t_1_ReachedBy_MultBodyAggAux_f6 AS (SELECT * FROM (
  
    SELECT
      HandedOver.source AS source,
      HandedOver.target AS target,
      HandedOver.valid_from AS valid_from,
      HandedOver.valid_to AS valid_to
    FROM
      t_1_HandedOver AS HandedOver
   UNION ALL
  
    SELECT
      ReachedBy_sn_t3.source AS source,
      t_2_HandedOver.target AS target,
      CASE WHEN (ReachedBy_sn_t3.valid_from > t_2_HandedOver.valid_from) THEN ReachedBy_sn_t3.valid_from ELSE t_2_HandedOver.valid_from END AS valid_from,
      CASE WHEN (ReachedBy_sn_t3.valid_to < t_2_HandedOver.valid_to) THEN ReachedBy_sn_t3.valid_to ELSE t_2_HandedOver.valid_to END AS valid_to
    FROM
      synalog_test.ReachedBy_sn_t3 AS ReachedBy_sn_t3, t_1_HandedOver AS t_2_HandedOver
    WHERE
      (CASE WHEN (ReachedBy_sn_t3.valid_from > t_2_HandedOver.valid_from) THEN ReachedBy_sn_t3.valid_from ELSE t_2_HandedOver.valid_from END < CASE WHEN (ReachedBy_sn_t3.valid_to < t_2_HandedOver.valid_to) THEN ReachedBy_sn_t3.valid_to ELSE t_2_HandedOver.valid_to END) AND
      (t_2_HandedOver.source IS NOT DISTINCT FROM ReachedBy_sn_t3.target)
  
) AS UNUSED_TABLE_NAME  ),
t_0_ReachedBy_sn_r4 AS (SELECT
  ReachedBy_MultBodyAggAux_f6.source AS source,
  ReachedBy_MultBodyAggAux_f6.target AS target,
  ReachedBy_MultBodyAggAux_f6.valid_from AS valid_from,
  ReachedBy_MultBodyAggAux_f6.valid_to AS valid_to
FROM
  t_1_ReachedBy_MultBodyAggAux_f6 AS ReachedBy_MultBodyAggAux_f6
GROUP BY 1, 2, 3, 4)
SELECT
  ReachedBy_sn_r4.source AS source,
  ReachedBy_sn_r4.target AS target,
  ReachedBy_sn_r4.valid_from AS valid_from,
  ReachedBy_sn_r4.valid_to AS valid_to
FROM
  t_0_ReachedBy_sn_r4 AS ReachedBy_sn_r4
WHERE
  (1 = 0);

-- Interacting with table synalog_test.ReachedBy_sn_t4

DROP TABLE IF EXISTS synalog_test.ReachedBy_sn_t5;
CREATE TABLE synalog_test.ReachedBy_sn_t5 AS WITH t_1_HandedOver AS (SELECT * FROM (
  
    SELECT
      'a' AS source,
      'b' AS target,
      '2024-01-01' AS valid_from,
      '2024-03-01' AS valid_to
   UNION ALL
  
    SELECT
      'b' AS source,
      'c' AS target,
      '2024-02-01' AS valid_from,
      '2024-04-01' AS valid_to
   UNION ALL
  
    SELECT
      'c' AS source,
      'd' AS target,
      '2024-05-01' AS valid_from,
      '2024-06-01' AS valid_to
   UNION ALL
  
    SELECT
      'a' AS source,
      'c' AS target,
      '2024-03-15' AS valid_from,
      '2024-04-15' AS valid_to
  
) AS UNUSED_TABLE_NAME  ),
t_1_ReachedBy_MultBodyAggAux_f7 AS (SELECT * FROM (
  
    SELECT
      HandedOver.source AS source,
      HandedOver.target AS target,
      HandedOver.valid_from AS valid_from,
      HandedOver.valid_to AS valid_to
    FROM
      t_1_HandedOver AS HandedOver
   UNION ALL
  
    SELECT
      ReachedBy_sn_t4.source AS source,
      t_2_HandedOver.target AS target,
      CASE WHEN (ReachedBy_sn_t4.valid_from > t_2_HandedOver.valid_from) THEN ReachedBy_sn_t4.valid_from ELSE t_2_HandedOver.valid_from END AS valid_from,
      CASE WHEN (ReachedBy_sn_t4.valid_to < t_2_HandedOver.valid_to) THEN ReachedBy_sn_t4.valid_to ELSE t_2_HandedOver.valid_to END AS valid_to
    FROM
      synalog_test.ReachedBy_sn_t4 AS ReachedBy_sn_t4, t_1_HandedOver AS t_2_HandedOver
    WHERE
      (CASE WHEN (ReachedBy_sn_t4.valid_from > t_2_HandedOver.valid_from) THEN ReachedBy_sn_t4.valid_from ELSE t_2_HandedOver.valid_from END < CASE WHEN (ReachedBy_sn_t4.valid_to < t_2_HandedOver.valid_to) THEN ReachedBy_sn_t4.valid_to ELSE t_2_HandedOver.valid_to END) AND
      (t_2_HandedOver.source IS NOT DISTINCT FROM ReachedBy_sn_t4.target)
  
) AS UNUSED_TABLE_NAME  ),
t_0_ReachedBy_sn_r5 AS (SELECT
  ReachedBy_MultBodyAggAux_f7.source AS source,
  ReachedBy_MultBodyAggAux_f7.target AS target,
  ReachedBy_MultBodyAggAux_f7.valid_from AS valid_from,
  ReachedBy_MultBodyAggAux_f7.valid_to AS valid_to
FROM
  t_1_ReachedBy_MultBodyAggAux_f7 AS ReachedBy_MultBodyAggAux_f7
GROUP BY 1, 2, 3, 4)
SELECT
  ReachedBy_sn_r5.source AS source,
  ReachedBy_sn_r5.target AS target,
  ReachedBy_sn_r5.valid_from AS valid_from,
  ReachedBy_sn_r5.valid_to AS valid_to
FROM
  t_0_ReachedBy_sn_r5 AS ReachedBy_sn_r5
WHERE
  (1 = 0);

-- Interacting with table synalog_test.ReachedBy_sn_t5

DROP TABLE IF EXISTS synalog_test.ReachedBy_sn_t6;
CREATE TABLE synalog_test.ReachedBy_sn_t6 AS WITH t_1_HandedOver AS (SELECT * FROM (
  
    SELECT
      'a' AS source,
      'b' AS target,
      '2024-01-01' AS valid_from,
      '2024-03-01' AS valid_to
   UNION ALL
  
    SELECT
      'b' AS source,
      'c' AS target,
      '2024-02-01' AS valid_from,
      '2024-04-01' AS valid_to
   UNION ALL
  
    SELECT
      'c' AS source,
      'd' AS target,
      '2024-05-01' AS valid_from,
      '2024-06-01' AS valid_to
   UNION ALL
  
    SELECT
      'a' AS source,
      'c' AS target,
      '2024-03-15' AS valid_from,
      '2024-04-15' AS valid_to
  
) AS UNUSED_TABLE_NAME  ),
t_1_ReachedBy_MultBodyAggAux_f8 AS (SELECT * FROM (
  
    SELECT
      HandedOver.source AS source,
      HandedOver.target AS target,
      HandedOver.valid_from AS valid_from,
      HandedOver.valid_to AS valid_to
    FROM
      t_1_HandedOver AS HandedOver
   UNION ALL
  
    SELECT
      ReachedBy_sn_t5.source AS source,
      t_2_HandedOver.target AS target,
      CASE WHEN (ReachedBy_sn_t5.valid_from > t_2_HandedOver.valid_from) THEN ReachedBy_sn_t5.valid_from ELSE t_2_HandedOver.valid_from END AS valid_from,
      CASE WHEN (ReachedBy_sn_t5.valid_to < t_2_HandedOver.valid_to) THEN ReachedBy_sn_t5.valid_to ELSE t_2_HandedOver.valid_to END AS valid_to
    FROM
      synalog_test.ReachedBy_sn_t5 AS ReachedBy_sn_t5, t_1_HandedOver AS t_2_HandedOver
    WHERE
      (CASE WHEN (ReachedBy_sn_t5.valid_from > t_2_HandedOver.valid_from) THEN ReachedBy_sn_t5.valid_from ELSE t_2_HandedOver.valid_from END < CASE WHEN (ReachedBy_sn_t5.valid_to < t_2_HandedOver.valid_to) THEN ReachedBy_sn_t5.valid_to ELSE t_2_HandedOver.valid_to END) AND
      (t_2_HandedOver.source IS NOT DISTINCT FROM ReachedBy_sn_t5.target)
  
) AS UNUSED_TABLE_NAME  ),
t_0_ReachedBy_sn_r6 AS (SELECT
  ReachedBy_MultBodyAggAux_f8.source AS source,
  ReachedBy_MultBodyAggAux_f8.target AS target,
  ReachedBy_MultBodyAggAux_f8.valid_from AS valid_from,
  ReachedBy_MultBodyAggAux_f8.valid_to AS valid_to
FROM
  t_1_ReachedBy_MultBodyAggAux_f8 AS ReachedBy_MultBodyAggAux_f8
GROUP BY 1, 2, 3, 4)
SELECT
  ReachedBy_sn_r6.source AS source,
  ReachedBy_sn_r6.target AS target,
  ReachedBy_sn_r6.valid_from AS valid_from,
  ReachedBy_sn_r6.valid_to AS valid_to
FROM
  t_0_ReachedBy_sn_r6 AS ReachedBy_sn_r6
WHERE
  (1 = 0);

-- Interacting with table synalog_test.ReachedBy_sn_t6

DROP TABLE IF EXISTS synalog_test.ReachedBy_sn_t7;
CREATE TABLE synalog_test.ReachedBy_sn_t7 AS WITH t_1_HandedOver AS (SELECT * FROM (
  
    SELECT
      'a' AS source,
      'b' AS target,
      '2024-01-01' AS valid_from,
      '2024-03-01' AS valid_to
   UNION ALL
  
    SELECT
      'b' AS source,
      'c' AS target,
      '2024-02-01' AS valid_from,
      '2024-04-01' AS valid_to
   UNION ALL
  
    SELECT
      'c' AS source,
      'd' AS target,
      '2024-05-01' AS valid_from,
      '2024-06-01' AS valid_to
   UNION ALL
  
    SELECT
      'a' AS source,
      'c' AS target,
      '2024-03-15' AS valid_from,
      '2024-04-15' AS valid_to
  
) AS UNUSED_TABLE_NAME  ),
t_1_ReachedBy_MultBodyAggAux_f9 AS (SELECT * FROM (
  
    SELECT
      HandedOver.source AS source,
      HandedOver.target AS target,
      HandedOver.valid_from AS valid_from,
      HandedOver.valid_to AS valid_to
    FROM
      t_1_HandedOver AS HandedOver
   UNION ALL
  
    SELECT
      ReachedBy_sn_t6.source AS source,
      t_2_HandedOver.target AS target,
      CASE WHEN (ReachedBy_sn_t6.valid_from > t_2_HandedOver.valid_from) THEN ReachedBy_sn_t6.valid_from ELSE t_2_HandedOver.valid_from END AS valid_from,
      CASE WHEN (ReachedBy_sn_t6.valid_to < t_2_HandedOver.valid_to) THEN ReachedBy_sn_t6.valid_to ELSE t_2_HandedOver.valid_to END AS valid_to
    FROM
      synalog_test.ReachedBy_sn_t6 AS ReachedBy_sn_t6, t_1_HandedOver AS t_2_HandedOver
    WHERE
      (CASE WHEN (ReachedBy_sn_t6.valid_from > t_2_HandedOver.valid_from) THEN ReachedBy_sn_t6.valid_from ELSE t_2_HandedOver.valid_from END < CASE WHEN (ReachedBy_sn_t6.valid_to < t_2_HandedOver.valid_to) THEN ReachedBy_sn_t6.valid_to ELSE t_2_HandedOver.valid_to END) AND
      (t_2_HandedOver.source IS NOT DISTINCT FROM ReachedBy_sn_t6.target)
  
) AS UNUSED_TABLE_NAME  ),
t_0_ReachedBy_sn_r7 AS (SELECT
  ReachedBy_MultBodyAggAux_f9.source AS source,
  ReachedBy_MultBodyAggAux_f9.target AS target,
  ReachedBy_MultBodyAggAux_f9.valid_from AS valid_from,
  ReachedBy_MultBodyAggAux_f9.valid_to AS valid_to
FROM
  t_1_ReachedBy_MultBodyAggAux_f9 AS ReachedBy_MultBodyAggAux_f9
GROUP BY 1, 2, 3, 4)
SELECT
  ReachedBy_sn_r7.source AS source,
  ReachedBy_sn_r7.target AS target,
  ReachedBy_sn_r7.valid_from AS valid_from,
  ReachedBy_sn_r7.valid_to AS valid_to
FROM
  t_0_ReachedBy_sn_r7 AS ReachedBy_sn_r7
WHERE
  (1 = 0);

-- Interacting with table synalog_test.ReachedBy_sn_t7

DROP TABLE IF EXISTS synalog_test.ReachedBy_sn_t8;
CREATE TABLE synalog_test.ReachedBy_sn_t8 AS WITH t_1_HandedOver AS (SELECT * FROM (
  
    SELECT
      'a' AS source,
      'b' AS target,
      '2024-01-01' AS valid_from,
      '2024-03-01' AS valid_to
   UNION ALL
  
    SELECT
      'b' AS source,
      'c' AS target,
      '2024-02-01' AS valid_from,
      '2024-04-01' AS valid_to
   UNION ALL
  
    SELECT
      'c' AS source,
      'd' AS target,
      '2024-05-01' AS valid_from,
      '2024-06-01' AS valid_to
   UNION ALL
  
    SELECT
      'a' AS source,
      'c' AS target,
      '2024-03-15' AS valid_from,
      '2024-04-15' AS valid_to
  
) AS UNUSED_TABLE_NAME  ),
t_1_ReachedBy_MultBodyAggAux_f10 AS (SELECT * FROM (
  
    SELECT
      HandedOver.source AS source,
      HandedOver.target AS target,
      HandedOver.valid_from AS valid_from,
      HandedOver.valid_to AS valid_to
    FROM
      t_1_HandedOver AS HandedOver
   UNION ALL
  
    SELECT
      ReachedBy_sn_t7.source AS source,
      t_2_HandedOver.target AS target,
      CASE WHEN (ReachedBy_sn_t7.valid_from > t_2_HandedOver.valid_from) THEN ReachedBy_sn_t7.valid_from ELSE t_2_HandedOver.valid_from END AS valid_from,
      CASE WHEN (ReachedBy_sn_t7.valid_to < t_2_HandedOver.valid_to) THEN ReachedBy_sn_t7.valid_to ELSE t_2_HandedOver.valid_to END AS valid_to
    FROM
      synalog_test.ReachedBy_sn_t7 AS ReachedBy_sn_t7, t_1_HandedOver AS t_2_HandedOver
    WHERE
      (CASE WHEN (ReachedBy_sn_t7.valid_from > t_2_HandedOver.valid_from) THEN ReachedBy_sn_t7.valid_from ELSE t_2_HandedOver.valid_from END < CASE WHEN (ReachedBy_sn_t7.valid_to < t_2_HandedOver.valid_to) THEN ReachedBy_sn_t7.valid_to ELSE t_2_HandedOver.valid_to END) AND
      (t_2_HandedOver.source IS NOT DISTINCT FROM ReachedBy_sn_t7.target)
  
) AS UNUSED_TABLE_NAME  ),
t_0_ReachedBy_sn_r8 AS (SELECT
  ReachedBy_MultBodyAggAux_f10.source AS source,
  ReachedBy_MultBodyAggAux_f10.target AS target,
  ReachedBy_MultBodyAggAux_f10.valid_from AS valid_from,
  ReachedBy_MultBodyAggAux_f10.valid_to AS valid_to
FROM
  t_1_ReachedBy_MultBodyAggAux_f10 AS ReachedBy_MultBodyAggAux_f10
GROUP BY 1, 2, 3, 4)
SELECT
  ReachedBy_sn_r8.source AS source,
  ReachedBy_sn_r8.target AS target,
  ReachedBy_sn_r8.valid_from AS valid_from,
  ReachedBy_sn_r8.valid_to AS valid_to
FROM
  t_0_ReachedBy_sn_r8 AS ReachedBy_sn_r8
WHERE
  (1 = 0);

-- Interacting with table synalog_test.ReachedBy_sn_t8

DROP TABLE IF EXISTS synalog_test.ReachedBy_sn_t9;
CREATE TABLE synalog_test.ReachedBy_sn_t9 AS WITH t_1_HandedOver AS (SELECT * FROM (
  
    SELECT
      'a' AS source,
      'b' AS target,
      '2024-01-01' AS valid_from,
      '2024-03-01' AS valid_to
   UNION ALL
  
    SELECT
      'b' AS source,
      'c' AS target,
      '2024-02-01' AS valid_from,
      '2024-04-01' AS valid_to
   UNION ALL
  
    SELECT
      'c' AS source,
      'd' AS target,
      '2024-05-01' AS valid_from,
      '2024-06-01' AS valid_to
   UNION ALL
  
    SELECT
      'a' AS source,
      'c' AS target,
      '2024-03-15' AS valid_from,
      '2024-04-15' AS valid_to
  
) AS UNUSED_TABLE_NAME  ),
t_1_ReachedBy_MultBodyAggAux_f11 AS (SELECT * FROM (
  
    SELECT
      HandedOver.source AS source,
      HandedOver.target AS target,
      HandedOver.valid_from AS valid_from,
      HandedOver.valid_to AS valid_to
    FROM
      t_1_HandedOver AS HandedOver
   UNION ALL
  
    SELECT
      ReachedBy_sn_t8.source AS source,
      t_2_HandedOver.target AS target,
      CASE WHEN (ReachedBy_sn_t8.valid_from > t_2_HandedOver.valid_from) THEN ReachedBy_sn_t8.valid_from ELSE t_2_HandedOver.valid_from END AS valid_from,
      CASE WHEN (ReachedBy_sn_t8.valid_to < t_2_HandedOver.valid_to) THEN ReachedBy_sn_t8.valid_to ELSE t_2_HandedOver.valid_to END AS valid_to
    FROM
      synalog_test.ReachedBy_sn_t8 AS ReachedBy_sn_t8, t_1_HandedOver AS t_2_HandedOver
    WHERE
      (CASE WHEN (ReachedBy_sn_t8.valid_from > t_2_HandedOver.valid_from) THEN ReachedBy_sn_t8.valid_from ELSE t_2_HandedOver.valid_from END < CASE WHEN (ReachedBy_sn_t8.valid_to < t_2_HandedOver.valid_to) THEN ReachedBy_sn_t8.valid_to ELSE t_2_HandedOver.valid_to END) AND
      (t_2_HandedOver.source IS NOT DISTINCT FROM ReachedBy_sn_t8.target)
  
) AS UNUSED_TABLE_NAME  ),
t_0_ReachedBy_sn_r9 AS (SELECT
  ReachedBy_MultBodyAggAux_f11.source AS source,
  ReachedBy_MultBodyAggAux_f11.target AS target,
  ReachedBy_MultBodyAggAux_f11.valid_from AS valid_from,
  ReachedBy_MultBodyAggAux_f11.valid_to AS valid_to
FROM
  t_1_ReachedBy_MultBodyAggAux_f11 AS ReachedBy_MultBodyAggAux_f11
GROUP BY 1, 2, 3, 4)
SELECT
  ReachedBy_sn_r9.source AS source,
  ReachedBy_sn_r9.target AS target,
  ReachedBy_sn_r9.valid_from AS valid_from,
  ReachedBy_sn_r9.valid_to AS valid_to
FROM
  t_0_ReachedBy_sn_r9 AS ReachedBy_sn_r9
WHERE
  (1 = 0);

-- Interacting with table synalog_test.ReachedBy_sn_t9

DROP TABLE IF EXISTS synalog_test.ReachedBy_sn_full;
CREATE TABLE synalog_test.ReachedBy_sn_full AS SELECT * FROM (
  
    SELECT
      ReachedBy_sn_delta.source AS source,
      ReachedBy_sn_delta.target AS target,
      ReachedBy_sn_delta.valid_from AS valid_from,
      ReachedBy_sn_delta.valid_to AS valid_to
    FROM
      synalog_test.ReachedBy_sn_delta AS ReachedBy_sn_delta
   UNION ALL
  
    SELECT
      ReachedBy_sn_t1.source AS source,
      ReachedBy_sn_t1.target AS target,
      ReachedBy_sn_t1.valid_from AS valid_from,
      ReachedBy_sn_t1.valid_to AS valid_to
    FROM
      synalog_test.ReachedBy_sn_t1 AS ReachedBy_sn_t1
   UNION ALL
  
    SELECT
      ReachedBy_sn_t2.source AS source,
      ReachedBy_sn_t2.target AS target,
      ReachedBy_sn_t2.valid_from AS valid_from,
      ReachedBy_sn_t2.valid_to AS valid_to
    FROM
      synalog_test.ReachedBy_sn_t2 AS ReachedBy_sn_t2
   UNION ALL
  
    SELECT
      ReachedBy_sn_t3.source AS source,
      ReachedBy_sn_t3.target AS target,
      ReachedBy_sn_t3.valid_from AS valid_from,
      ReachedBy_sn_t3.valid_to AS valid_to
    FROM
      synalog_test.ReachedBy_sn_t3 AS ReachedBy_sn_t3
   UNION ALL
  
    SELECT
      ReachedBy_sn_t4.source AS source,
      ReachedBy_sn_t4.target AS target,
      ReachedBy_sn_t4.valid_from AS valid_from,
      ReachedBy_sn_t4.valid_to AS valid_to
    FROM
      synalog_test.ReachedBy_sn_t4 AS ReachedBy_sn_t4
   UNION ALL
  
    SELECT
      ReachedBy_sn_t5.source AS source,
      ReachedBy_sn_t5.target AS target,
      ReachedBy_sn_t5.valid_from AS valid_from,
      ReachedBy_sn_t5.valid_to AS valid_to
    FROM
      synalog_test.ReachedBy_sn_t5 AS ReachedBy_sn_t5
   UNION ALL
  
    SELECT
      ReachedBy_sn_t6.source AS source,
      ReachedBy_sn_t6.target AS target,
      ReachedBy_sn_t6.valid_from AS valid_from,
      ReachedBy_sn_t6.valid_to AS valid_to
    FROM
      synalog_test.ReachedBy_sn_t6 AS ReachedBy_sn_t6
   UNION ALL
  
    SELECT
      ReachedBy_sn_t7.source AS source,
      ReachedBy_sn_t7.target AS target,
      ReachedBy_sn_t7.valid_from AS valid_from,
      ReachedBy_sn_t7.valid_to AS valid_to
    FROM
      synalog_test.ReachedBy_sn_t7 AS ReachedBy_sn_t7
   UNION ALL
  
    SELECT
      ReachedBy_sn_t8.source AS source,
      ReachedBy_sn_t8.target AS target,
      ReachedBy_sn_t8.valid_from AS valid_from,
      ReachedBy_sn_t8.valid_to AS valid_to
    FROM
      synalog_test.ReachedBy_sn_t8 AS ReachedBy_sn_t8
   UNION ALL
  
    SELECT
      ReachedBy_sn_t9.source AS source,
      ReachedBy_sn_t9.target AS target,
      ReachedBy_sn_t9.valid_from AS valid_from,
      ReachedBy_sn_t9.valid_to AS valid_to
    FROM
      synalog_test.ReachedBy_sn_t9 AS ReachedBy_sn_t9
  
) AS UNUSED_TABLE_NAME  ;

-- Interacting with table synalog_test.ReachedBy_sn_full

DROP TABLE IF EXISTS synalog_test.ReachedBy_sn_new;
CREATE TABLE synalog_test.ReachedBy_sn_new AS WITH t_1_HandedOver AS (SELECT * FROM (
  
    SELECT
      'a' AS source,
      'b' AS target,
      '2024-01-01' AS valid_from,
      '2024-03-01' AS valid_to
   UNION ALL
  
    SELECT
      'b' AS source,
      'c' AS target,
      '2024-02-01' AS valid_from,
      '2024-04-01' AS valid_to
   UNION ALL
  
    SELECT
      'c' AS source,
      'd' AS target,
      '2024-05-01' AS valid_from,
      '2024-06-01' AS valid_to
   UNION ALL
  
    SELECT
      'a' AS source,
      'c' AS target,
      '2024-03-15' AS valid_from,
      '2024-04-15' AS valid_to
  
) AS UNUSED_TABLE_NAME  ),
t_3_ReachedBy_MultBodyAggAux_f12 AS (SELECT * FROM (
  
    SELECT
      HandedOver.source AS source,
      HandedOver.target AS target,
      HandedOver.valid_from AS valid_from,
      HandedOver.valid_to AS valid_to
    FROM
      t_1_HandedOver AS HandedOver
   UNION ALL
  
    SELECT
      ReachedBy_sn_delta.source AS source,
      t_4_HandedOver.target AS target,
      CASE WHEN (ReachedBy_sn_delta.valid_from > t_4_HandedOver.valid_from) THEN ReachedBy_sn_delta.valid_from ELSE t_4_HandedOver.valid_from END AS valid_from,
      CASE WHEN (ReachedBy_sn_delta.valid_to < t_4_HandedOver.valid_to) THEN ReachedBy_sn_delta.valid_to ELSE t_4_HandedOver.valid_to END AS valid_to
    FROM
      synalog_test.ReachedBy_sn_delta AS ReachedBy_sn_delta, t_1_HandedOver AS t_4_HandedOver
    WHERE
      (CASE WHEN (ReachedBy_sn_delta.valid_from > t_4_HandedOver.valid_from) THEN ReachedBy_sn_delta.valid_from ELSE t_4_HandedOver.valid_from END < CASE WHEN (ReachedBy_sn_delta.valid_to < t_4_HandedOver.valid_to) THEN ReachedBy_sn_delta.valid_to ELSE t_4_HandedOver.valid_to END) AND
      (t_4_HandedOver.source IS NOT DISTINCT FROM ReachedBy_sn_delta.target)
  
) AS UNUSED_TABLE_NAME  ),
t_2_ReachedBy_sn_step AS (SELECT
  ReachedBy_MultBodyAggAux_f12.source AS source,
  ReachedBy_MultBodyAggAux_f12.target AS target,
  ReachedBy_MultBodyAggAux_f12.valid_from AS valid_from,
  ReachedBy_MultBodyAggAux_f12.valid_to AS valid_to
FROM
  t_3_ReachedBy_MultBodyAggAux_f12 AS ReachedBy_MultBodyAggAux_f12
GROUP BY 1, 2, 3, 4),
t_1_ReachedBy_sn_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      ReachedBy_sn_step.source AS source,
      ReachedBy_sn_step.target AS target,
      ReachedBy_sn_step.valid_from AS valid_from,
      ReachedBy_sn_step.valid_to AS valid_to,
      0 AS synalog_sn_in_full
    FROM
      t_2_ReachedBy_sn_step AS ReachedBy_sn_step
   UNION ALL
  
    SELECT
      ReachedBy_sn_full.source AS source,
      ReachedBy_sn_full.target AS target,
      ReachedBy_sn_full.valid_from AS valid_from,
      ReachedBy_sn_full.valid_to AS valid_to,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.ReachedBy_sn_full AS ReachedBy_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_ReachedBy_sn_seen AS (SELECT
  ReachedBy_sn_seen_MultBodyAggAux.source AS source,
  ReachedBy_sn_seen_MultBodyAggAux.target AS target,
  ReachedBy_sn_seen_MultBodyAggAux.valid_from AS valid_from,
  ReachedBy_sn_seen_MultBodyAggAux.valid_to AS valid_to,
  MAX(ReachedBy_sn_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_ReachedBy_sn_seen_MultBodyAggAux AS ReachedBy_sn_seen_MultBodyAggAux
GROUP BY 1, 2, 3, 4)
SELECT
  ReachedBy_sn_seen.source AS source,
  ReachedBy_sn_seen.target AS target,
  ReachedBy_sn_seen.valid_from AS valid_from,
  ReachedBy_sn_seen.valid_to AS valid_to
FROM
  t_0_ReachedBy_sn_seen AS ReachedBy_sn_seen
WHERE
  (ReachedBy_sn_seen.synalog_sn_in_full = 0)
GROUP BY 1, 2, 3, 4;

INSERT INTO synalog_test.ReachedBy_sn_full SELECT * FROM synalog_test.ReachedBy_sn_new;

DROP TABLE IF EXISTS synalog_test.ReachedBy_sn_delta;
CREATE TABLE synalog_test.ReachedBy_sn_delta AS WITH t_1_HandedOver AS (SELECT * FROM (
  
    SELECT
      'a' AS source,
      'b' AS target,
      '2024-01-01' AS valid_from,
      '2024-03-01' AS valid_to
   UNION ALL
  
    SELECT
      'b' AS source,
      'c' AS target,
      '2024-02-01' AS valid_from,
      '2024-04-01' AS valid_to
   UNION ALL
  
    SELECT
      'c' AS source,
      'd' AS target,
      '2024-05-01' AS valid_from,
      '2024-06-01' AS valid_to
   UNION ALL
  
    SELECT
      'a' AS source,
      'c' AS target,
      '2024-03-15' AS valid_from,
      '2024-04-15' AS valid_to
  
) AS UNUSED_TABLE_NAME  ),
t_3_ReachedBy_MultBodyAggAux_f1 AS (SELECT * FROM (
  
    SELECT
      HandedOver.source AS source,
      HandedOver.target AS target,
      HandedOver.valid_from AS valid_from,
      HandedOver.valid_to AS valid_to
    FROM
      t_1_HandedOver AS HandedOver
   UNION ALL
  
    SELECT
      ReachedBy_sn_new.source AS source,
      t_4_HandedOver.target AS target,
      CASE WHEN (ReachedBy_sn_new.valid_from > t_4_HandedOver.valid_from) THEN ReachedBy_sn_new.valid_from ELSE t_4_HandedOver.valid_from END AS valid_from,
      CASE WHEN (ReachedBy_sn_new.valid_to < t_4_HandedOver.valid_to) THEN ReachedBy_sn_new.valid_to ELSE t_4_HandedOver.valid_to END AS valid_to
    FROM
      synalog_test.ReachedBy_sn_new AS ReachedBy_sn_new, t_1_HandedOver AS t_4_HandedOver
    WHERE
      (CASE WHEN (ReachedBy_sn_new.valid_from > t_4_HandedOver.valid_from) THEN ReachedBy_sn_new.valid_from ELSE t_4_HandedOver.valid_from END < CASE WHEN (ReachedBy_sn_new.valid_to < t_4_HandedOver.valid_to) THEN ReachedBy_sn_new.valid_to ELSE t_4_HandedOver.valid_to END) AND
      (t_4_HandedOver.source IS NOT DISTINCT FROM ReachedBy_sn_new.target)
  
) AS UNUSED_TABLE_NAME  ),
t_2_ReachedBy_sn_back_step AS (SELECT
  ReachedBy_MultBodyAggAux_f1.source AS source,
  ReachedBy_MultBodyAggAux_f1.target AS target,
  ReachedBy_MultBodyAggAux_f1.valid_from AS valid_from,
  ReachedBy_MultBodyAggAux_f1.valid_to AS valid_to
FROM
  t_3_ReachedBy_MultBodyAggAux_f1 AS ReachedBy_MultBodyAggAux_f1
GROUP BY 1, 2, 3, 4),
t_1_ReachedBy_sn_back_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      ReachedBy_sn_back_step.source AS source,
      ReachedBy_sn_back_step.target AS target,
      ReachedBy_sn_back_step.valid_from AS valid_from,
      ReachedBy_sn_back_step.valid_to AS valid_to,
      0 AS synalog_sn_in_full
    FROM
      t_2_ReachedBy_sn_back_step AS ReachedBy_sn_back_step
   UNION ALL
  
    SELECT
      ReachedBy_sn_full.source AS source,
      ReachedBy_sn_full.target AS target,
      ReachedBy_sn_full.valid_from AS valid_from,
      ReachedBy_sn_full.valid_to AS valid_to,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.ReachedBy_sn_full AS ReachedBy_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_ReachedBy_sn_back_seen AS (SELECT
  ReachedBy_sn_back_seen_MultBodyAggAux.source AS source,
  ReachedBy_sn_back_seen_MultBodyAggAux.target AS target,
  ReachedBy_sn_back_seen_MultBodyAggAux.valid_from AS valid_from,
  ReachedBy_sn_back_seen_MultBodyAggAux.valid_to AS valid_to,
  MAX(ReachedBy_sn_back_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_ReachedBy_sn_back_seen_MultBodyAggAux AS ReachedBy_sn_back_seen_MultBodyAggAux
GROUP BY 1, 2, 3, 4)
SELECT
  ReachedBy_sn_back_seen.source AS source,
  ReachedBy_sn_back_seen.target AS target,
  ReachedBy_sn_back_seen.valid_from AS valid_from,
  ReachedBy_sn_back_seen.valid_to AS valid_to
FROM
  t_0_ReachedBy_sn_back_seen AS ReachedBy_sn_back_seen
WHERE
  (ReachedBy_sn_back_seen.synalog_sn_in_full = 0)
GROUP BY 1, 2, 3, 4;

INSERT INTO synalog_test.ReachedBy_sn_full SELECT * FROM synalog_test.ReachedBy_sn_delta;

DROP TABLE IF EXISTS synalog_test.ReachedBy_sn_new;
CREATE TABLE synalog_test.ReachedBy_sn_new AS WITH t_1_HandedOver AS (SELECT * FROM (
  
    SELECT
      'a' AS source,
      'b' AS target,
      '2024-01-01' AS valid_from,
      '2024-03-01' AS valid_to
   UNION ALL
  
    SELECT
      'b' AS source,
      'c' AS target,
      '2024-02-01' AS valid_from,
      '2024-04-01' AS valid_to
   UNION ALL
  
    SELECT
      'c' AS source,
      'd' AS target,
      '2024-05-01' AS valid_from,
      '2024-06-01' AS valid_to
   UNION ALL
  
    SELECT
      'a' AS source,
      'c' AS target,
      '2024-03-15' AS valid_from,
      '2024-04-15' AS valid_to
  
) AS UNUSED_TABLE_NAME  ),
t_3_ReachedBy_MultBodyAggAux_f12 AS (SELECT * FROM (
  
    SELECT
      HandedOver.source AS source,
      HandedOver.target AS target,
      HandedOver.valid_from AS valid_from,
      HandedOver.valid_to AS valid_to
    FROM
      t_1_HandedOver AS HandedOver
   UNION ALL
  
    SELECT
      ReachedBy_sn_delta.source AS source,
      t_4_HandedOver.target AS target,
      CASE WHEN (ReachedBy_sn_delta.valid_from > t_4_HandedOver.valid_from) THEN ReachedBy_sn_delta.valid_from ELSE t_4_HandedOver.valid_from END AS valid_from,
      CASE WHEN (ReachedBy_sn_delta.valid_to < t_4_HandedOver.valid_to) THEN ReachedBy_sn_delta.valid_to ELSE t_4_HandedOver.valid_to END AS valid_to
    FROM
      synalog_test.ReachedBy_sn_delta AS ReachedBy_sn_delta, t_1_HandedOver AS t_4_HandedOver
    WHERE
      (CASE WHEN (ReachedBy_sn_delta.valid_from > t_4_HandedOver.valid_from) THEN ReachedBy_sn_delta.valid_from ELSE t_4_HandedOver.valid_from END < CASE WHEN (ReachedBy_sn_delta.valid_to < t_4_HandedOver.valid_to) THEN ReachedBy_sn_delta.valid_to ELSE t_4_HandedOver.valid_to END) AND
      (t_4_HandedOver.source IS NOT DISTINCT FROM ReachedBy_sn_delta.target)
  
) AS UNUSED_TABLE_NAME  ),
t_2_ReachedBy_sn_step AS (SELECT
  ReachedBy_MultBodyAggAux_f12.source AS source,
  ReachedBy_MultBodyAggAux_f12.target AS target,
  ReachedBy_MultBodyAggAux_f12.valid_from AS valid_from,
  ReachedBy_MultBodyAggAux_f12.valid_to AS valid_to
FROM
  t_3_ReachedBy_MultBodyAggAux_f12 AS ReachedBy_MultBodyAggAux_f12
GROUP BY 1, 2, 3, 4),
t_1_ReachedBy_sn_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      ReachedBy_sn_step.source AS source,
      ReachedBy_sn_step.target AS target,
      ReachedBy_sn_step.valid_from AS valid_from,
      ReachedBy_sn_step.valid_to AS valid_to,
      0 AS synalog_sn_in_full
    FROM
      t_2_ReachedBy_sn_step AS ReachedBy_sn_step
   UNION ALL
  
    SELECT
      ReachedBy_sn_full.source AS source,
      ReachedBy_sn_full.target AS target,
      ReachedBy_sn_full.valid_from AS valid_from,
      ReachedBy_sn_full.valid_to AS valid_to,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.ReachedBy_sn_full AS ReachedBy_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_ReachedBy_sn_seen AS (SELECT
  ReachedBy_sn_seen_MultBodyAggAux.source AS source,
  ReachedBy_sn_seen_MultBodyAggAux.target AS target,
  ReachedBy_sn_seen_MultBodyAggAux.valid_from AS valid_from,
  ReachedBy_sn_seen_MultBodyAggAux.valid_to AS valid_to,
  MAX(ReachedBy_sn_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_ReachedBy_sn_seen_MultBodyAggAux AS ReachedBy_sn_seen_MultBodyAggAux
GROUP BY 1, 2, 3, 4)
SELECT
  ReachedBy_sn_seen.source AS source,
  ReachedBy_sn_seen.target AS target,
  ReachedBy_sn_seen.valid_from AS valid_from,
  ReachedBy_sn_seen.valid_to AS valid_to
FROM
  t_0_ReachedBy_sn_seen AS ReachedBy_sn_seen
WHERE
  (ReachedBy_sn_seen.synalog_sn_in_full = 0)
GROUP BY 1, 2, 3, 4;

INSERT INTO synalog_test.ReachedBy_sn_full SELECT * FROM synalog_test.ReachedBy_sn_new;

DROP TABLE IF EXISTS synalog_test.ReachedBy_sn_delta;
CREATE TABLE synalog_test.ReachedBy_sn_delta AS WITH t_1_HandedOver AS (SELECT * FROM (
  
    SELECT
      'a' AS source,
      'b' AS target,
      '2024-01-01' AS valid_from,
      '2024-03-01' AS valid_to
   UNION ALL
  
    SELECT
      'b' AS source,
      'c' AS target,
      '2024-02-01' AS valid_from,
      '2024-04-01' AS valid_to
   UNION ALL
  
    SELECT
      'c' AS source,
      'd' AS target,
      '2024-05-01' AS valid_from,
      '2024-06-01' AS valid_to
   UNION ALL
  
    SELECT
      'a' AS source,
      'c' AS target,
      '2024-03-15' AS valid_from,
      '2024-04-15' AS valid_to
  
) AS UNUSED_TABLE_NAME  ),
t_3_ReachedBy_MultBodyAggAux_f1 AS (SELECT * FROM (
  
    SELECT
      HandedOver.source AS source,
      HandedOver.target AS target,
      HandedOver.valid_from AS valid_from,
      HandedOver.valid_to AS valid_to
    FROM
      t_1_HandedOver AS HandedOver
   UNION ALL
  
    SELECT
      ReachedBy_sn_new.source AS source,
      t_4_HandedOver.target AS target,
      CASE WHEN (ReachedBy_sn_new.valid_from > t_4_HandedOver.valid_from) THEN ReachedBy_sn_new.valid_from ELSE t_4_HandedOver.valid_from END AS valid_from,
      CASE WHEN (ReachedBy_sn_new.valid_to < t_4_HandedOver.valid_to) THEN ReachedBy_sn_new.valid_to ELSE t_4_HandedOver.valid_to END AS valid_to
    FROM
      synalog_test.ReachedBy_sn_new AS ReachedBy_sn_new, t_1_HandedOver AS t_4_HandedOver
    WHERE
      (CASE WHEN (ReachedBy_sn_new.valid_from > t_4_HandedOver.valid_from) THEN ReachedBy_sn_new.valid_from ELSE t_4_HandedOver.valid_from END < CASE WHEN (ReachedBy_sn_new.valid_to < t_4_HandedOver.valid_to) THEN ReachedBy_sn_new.valid_to ELSE t_4_HandedOver.valid_to END) AND
      (t_4_HandedOver.source IS NOT DISTINCT FROM ReachedBy_sn_new.target)
  
) AS UNUSED_TABLE_NAME  ),
t_2_ReachedBy_sn_back_step AS (SELECT
  ReachedBy_MultBodyAggAux_f1.source AS source,
  ReachedBy_MultBodyAggAux_f1.target AS target,
  ReachedBy_MultBodyAggAux_f1.valid_from AS valid_from,
  ReachedBy_MultBodyAggAux_f1.valid_to AS valid_to
FROM
  t_3_ReachedBy_MultBodyAggAux_f1 AS ReachedBy_MultBodyAggAux_f1
GROUP BY 1, 2, 3, 4),
t_1_ReachedBy_sn_back_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      ReachedBy_sn_back_step.source AS source,
      ReachedBy_sn_back_step.target AS target,
      ReachedBy_sn_back_step.valid_from AS valid_from,
      ReachedBy_sn_back_step.valid_to AS valid_to,
      0 AS synalog_sn_in_full
    FROM
      t_2_ReachedBy_sn_back_step AS ReachedBy_sn_back_step
   UNION ALL
  
    SELECT
      ReachedBy_sn_full.source AS source,
      ReachedBy_sn_full.target AS target,
      ReachedBy_sn_full.valid_from AS valid_from,
      ReachedBy_sn_full.valid_to AS valid_to,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.ReachedBy_sn_full AS ReachedBy_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_ReachedBy_sn_back_seen AS (SELECT
  ReachedBy_sn_back_seen_MultBodyAggAux.source AS source,
  ReachedBy_sn_back_seen_MultBodyAggAux.target AS target,
  ReachedBy_sn_back_seen_MultBodyAggAux.valid_from AS valid_from,
  ReachedBy_sn_back_seen_MultBodyAggAux.valid_to AS valid_to,
  MAX(ReachedBy_sn_back_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_ReachedBy_sn_back_seen_MultBodyAggAux AS ReachedBy_sn_back_seen_MultBodyAggAux
GROUP BY 1, 2, 3, 4)
SELECT
  ReachedBy_sn_back_seen.source AS source,
  ReachedBy_sn_back_seen.target AS target,
  ReachedBy_sn_back_seen.valid_from AS valid_from,
  ReachedBy_sn_back_seen.valid_to AS valid_to
FROM
  t_0_ReachedBy_sn_back_seen AS ReachedBy_sn_back_seen
WHERE
  (ReachedBy_sn_back_seen.synalog_sn_in_full = 0)
GROUP BY 1, 2, 3, 4;

INSERT INTO synalog_test.ReachedBy_sn_full SELECT * FROM synalog_test.ReachedBy_sn_delta;

DROP TABLE IF EXISTS synalog_test.ReachedBy_sn_new;
CREATE TABLE synalog_test.ReachedBy_sn_new AS WITH t_1_HandedOver AS (SELECT * FROM (
  
    SELECT
      'a' AS source,
      'b' AS target,
      '2024-01-01' AS valid_from,
      '2024-03-01' AS valid_to
   UNION ALL
  
    SELECT
      'b' AS source,
      'c' AS target,
      '2024-02-01' AS valid_from,
      '2024-04-01' AS valid_to
   UNION ALL
  
    SELECT
      'c' AS source,
      'd' AS target,
      '2024-05-01' AS valid_from,
      '2024-06-01' AS valid_to
   UNION ALL
  
    SELECT
      'a' AS source,
      'c' AS target,
      '2024-03-15' AS valid_from,
      '2024-04-15' AS valid_to
  
) AS UNUSED_TABLE_NAME  ),
t_3_ReachedBy_MultBodyAggAux_f12 AS (SELECT * FROM (
  
    SELECT
      HandedOver.source AS source,
      HandedOver.target AS target,
      HandedOver.valid_from AS valid_from,
      HandedOver.valid_to AS valid_to
    FROM
      t_1_HandedOver AS HandedOver
   UNION ALL
  
    SELECT
      ReachedBy_sn_delta.source AS source,
      t_4_HandedOver.target AS target,
      CASE WHEN (ReachedBy_sn_delta.valid_from > t_4_HandedOver.valid_from) THEN ReachedBy_sn_delta.valid_from ELSE t_4_HandedOver.valid_from END AS valid_from,
      CASE WHEN (ReachedBy_sn_delta.valid_to < t_4_HandedOver.valid_to) THEN ReachedBy_sn_delta.valid_to ELSE t_4_HandedOver.valid_to END AS valid_to
    FROM
      synalog_test.ReachedBy_sn_delta AS ReachedBy_sn_delta, t_1_HandedOver AS t_4_HandedOver
    WHERE
      (CASE WHEN (ReachedBy_sn_delta.valid_from > t_4_HandedOver.valid_from) THEN ReachedBy_sn_delta.valid_from ELSE t_4_HandedOver.valid_from END < CASE WHEN (ReachedBy_sn_delta.valid_to < t_4_HandedOver.valid_to) THEN ReachedBy_sn_delta.valid_to ELSE t_4_HandedOver.valid_to END) AND
      (t_4_HandedOver.source IS NOT DISTINCT FROM ReachedBy_sn_delta.target)
  
) AS UNUSED_TABLE_NAME  ),
t_2_ReachedBy_sn_step AS (SELECT
  ReachedBy_MultBodyAggAux_f12.source AS source,
  ReachedBy_MultBodyAggAux_f12.target AS target,
  ReachedBy_MultBodyAggAux_f12.valid_from AS valid_from,
  ReachedBy_MultBodyAggAux_f12.valid_to AS valid_to
FROM
  t_3_ReachedBy_MultBodyAggAux_f12 AS ReachedBy_MultBodyAggAux_f12
GROUP BY 1, 2, 3, 4),
t_1_ReachedBy_sn_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      ReachedBy_sn_step.source AS source,
      ReachedBy_sn_step.target AS target,
      ReachedBy_sn_step.valid_from AS valid_from,
      ReachedBy_sn_step.valid_to AS valid_to,
      0 AS synalog_sn_in_full
    FROM
      t_2_ReachedBy_sn_step AS ReachedBy_sn_step
   UNION ALL
  
    SELECT
      ReachedBy_sn_full.source AS source,
      ReachedBy_sn_full.target AS target,
      ReachedBy_sn_full.valid_from AS valid_from,
      ReachedBy_sn_full.valid_to AS valid_to,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.ReachedBy_sn_full AS ReachedBy_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_ReachedBy_sn_seen AS (SELECT
  ReachedBy_sn_seen_MultBodyAggAux.source AS source,
  ReachedBy_sn_seen_MultBodyAggAux.target AS target,
  ReachedBy_sn_seen_MultBodyAggAux.valid_from AS valid_from,
  ReachedBy_sn_seen_MultBodyAggAux.valid_to AS valid_to,
  MAX(ReachedBy_sn_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_ReachedBy_sn_seen_MultBodyAggAux AS ReachedBy_sn_seen_MultBodyAggAux
GROUP BY 1, 2, 3, 4)
SELECT
  ReachedBy_sn_seen.source AS source,
  ReachedBy_sn_seen.target AS target,
  ReachedBy_sn_seen.valid_from AS valid_from,
  ReachedBy_sn_seen.valid_to AS valid_to
FROM
  t_0_ReachedBy_sn_seen AS ReachedBy_sn_seen
WHERE
  (ReachedBy_sn_seen.synalog_sn_in_full = 0)
GROUP BY 1, 2, 3, 4;

INSERT INTO synalog_test.ReachedBy_sn_full SELECT * FROM synalog_test.ReachedBy_sn_new;

DROP TABLE IF EXISTS synalog_test.ReachedBy_sn_delta;
CREATE TABLE synalog_test.ReachedBy_sn_delta AS WITH t_1_HandedOver AS (SELECT * FROM (
  
    SELECT
      'a' AS source,
      'b' AS target,
      '2024-01-01' AS valid_from,
      '2024-03-01' AS valid_to
   UNION ALL
  
    SELECT
      'b' AS source,
      'c' AS target,
      '2024-02-01' AS valid_from,
      '2024-04-01' AS valid_to
   UNION ALL
  
    SELECT
      'c' AS source,
      'd' AS target,
      '2024-05-01' AS valid_from,
      '2024-06-01' AS valid_to
   UNION ALL
  
    SELECT
      'a' AS source,
      'c' AS target,
      '2024-03-15' AS valid_from,
      '2024-04-15' AS valid_to
  
) AS UNUSED_TABLE_NAME  ),
t_3_ReachedBy_MultBodyAggAux_f1 AS (SELECT * FROM (
  
    SELECT
      HandedOver.source AS source,
      HandedOver.target AS target,
      HandedOver.valid_from AS valid_from,
      HandedOver.valid_to AS valid_to
    FROM
      t_1_HandedOver AS HandedOver
   UNION ALL
  
    SELECT
      ReachedBy_sn_new.source AS source,
      t_4_HandedOver.target AS target,
      CASE WHEN (ReachedBy_sn_new.valid_from > t_4_HandedOver.valid_from) THEN ReachedBy_sn_new.valid_from ELSE t_4_HandedOver.valid_from END AS valid_from,
      CASE WHEN (ReachedBy_sn_new.valid_to < t_4_HandedOver.valid_to) THEN ReachedBy_sn_new.valid_to ELSE t_4_HandedOver.valid_to END AS valid_to
    FROM
      synalog_test.ReachedBy_sn_new AS ReachedBy_sn_new, t_1_HandedOver AS t_4_HandedOver
    WHERE
      (CASE WHEN (ReachedBy_sn_new.valid_from > t_4_HandedOver.valid_from) THEN ReachedBy_sn_new.valid_from ELSE t_4_HandedOver.valid_from END < CASE WHEN (ReachedBy_sn_new.valid_to < t_4_HandedOver.valid_to) THEN ReachedBy_sn_new.valid_to ELSE t_4_HandedOver.valid_to END) AND
      (t_4_HandedOver.source IS NOT DISTINCT FROM ReachedBy_sn_new.target)
  
) AS UNUSED_TABLE_NAME  ),
t_2_ReachedBy_sn_back_step AS (SELECT
  ReachedBy_MultBodyAggAux_f1.source AS source,
  ReachedBy_MultBodyAggAux_f1.target AS target,
  ReachedBy_MultBodyAggAux_f1.valid_from AS valid_from,
  ReachedBy_MultBodyAggAux_f1.valid_to AS valid_to
FROM
  t_3_ReachedBy_MultBodyAggAux_f1 AS ReachedBy_MultBodyAggAux_f1
GROUP BY 1, 2, 3, 4),
t_1_ReachedBy_sn_back_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      ReachedBy_sn_back_step.source AS source,
      ReachedBy_sn_back_step.target AS target,
      ReachedBy_sn_back_step.valid_from AS valid_from,
      ReachedBy_sn_back_step.valid_to AS valid_to,
      0 AS synalog_sn_in_full
    FROM
      t_2_ReachedBy_sn_back_step AS ReachedBy_sn_back_step
   UNION ALL
  
    SELECT
      ReachedBy_sn_full.source AS source,
      ReachedBy_sn_full.target AS target,
      ReachedBy_sn_full.valid_from AS valid_from,
      ReachedBy_sn_full.valid_to AS valid_to,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.ReachedBy_sn_full AS ReachedBy_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_ReachedBy_sn_back_seen AS (SELECT
  ReachedBy_sn_back_seen_MultBodyAggAux.source AS source,
  ReachedBy_sn_back_seen_MultBodyAggAux.target AS target,
  ReachedBy_sn_back_seen_MultBodyAggAux.valid_from AS valid_from,
  ReachedBy_sn_back_seen_MultBodyAggAux.valid_to AS valid_to,
  MAX(ReachedBy_sn_back_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_ReachedBy_sn_back_seen_MultBodyAggAux AS ReachedBy_sn_back_seen_MultBodyAggAux
GROUP BY 1, 2, 3, 4)
SELECT
  ReachedBy_sn_back_seen.source AS source,
  ReachedBy_sn_back_seen.target AS target,
  ReachedBy_sn_back_seen.valid_from AS valid_from,
  ReachedBy_sn_back_seen.valid_to AS valid_to
FROM
  t_0_ReachedBy_sn_back_seen AS ReachedBy_sn_back_seen
WHERE
  (ReachedBy_sn_back_seen.synalog_sn_in_full = 0)
GROUP BY 1, 2, 3, 4;

INSERT INTO synalog_test.ReachedBy_sn_full SELECT * FROM synalog_test.ReachedBy_sn_delta;

DROP TABLE IF EXISTS synalog_test.ReachedBy_sn_new;
CREATE TABLE synalog_test.ReachedBy_sn_new AS WITH t_1_HandedOver AS (SELECT * FROM (
  
    SELECT
      'a' AS source,
      'b' AS target,
      '2024-01-01' AS valid_from,
      '2024-03-01' AS valid_to
   UNION ALL
  
    SELECT
      'b' AS source,
      'c' AS target,
      '2024-02-01' AS valid_from,
      '2024-04-01' AS valid_to
   UNION ALL
  
    SELECT
      'c' AS source,
      'd' AS target,
      '2024-05-01' AS valid_from,
      '2024-06-01' AS valid_to
   UNION ALL
  
    SELECT
      'a' AS source,
      'c' AS target,
      '2024-03-15' AS valid_from,
      '2024-04-15' AS valid_to
  
) AS UNUSED_TABLE_NAME  ),
t_3_ReachedBy_MultBodyAggAux_f12 AS (SELECT * FROM (
  
    SELECT
      HandedOver.source AS source,
      HandedOver.target AS target,
      HandedOver.valid_from AS valid_from,
      HandedOver.valid_to AS valid_to
    FROM
      t_1_HandedOver AS HandedOver
   UNION ALL
  
    SELECT
      ReachedBy_sn_delta.source AS source,
      t_4_HandedOver.target AS target,
      CASE WHEN (ReachedBy_sn_delta.valid_from > t_4_HandedOver.valid_from) THEN ReachedBy_sn_delta.valid_from ELSE t_4_HandedOver.valid_from END AS valid_from,
      CASE WHEN (ReachedBy_sn_delta.valid_to < t_4_HandedOver.valid_to) THEN ReachedBy_sn_delta.valid_to ELSE t_4_HandedOver.valid_to END AS valid_to
    FROM
      synalog_test.ReachedBy_sn_delta AS ReachedBy_sn_delta, t_1_HandedOver AS t_4_HandedOver
    WHERE
      (CASE WHEN (ReachedBy_sn_delta.valid_from > t_4_HandedOver.valid_from) THEN ReachedBy_sn_delta.valid_from ELSE t_4_HandedOver.valid_from END < CASE WHEN (ReachedBy_sn_delta.valid_to < t_4_HandedOver.valid_to) THEN ReachedBy_sn_delta.valid_to ELSE t_4_HandedOver.valid_to END) AND
      (t_4_HandedOver.source IS NOT DISTINCT FROM ReachedBy_sn_delta.target)
  
) AS UNUSED_TABLE_NAME  ),
t_2_ReachedBy_sn_step AS (SELECT
  ReachedBy_MultBodyAggAux_f12.source AS source,
  ReachedBy_MultBodyAggAux_f12.target AS target,
  ReachedBy_MultBodyAggAux_f12.valid_from AS valid_from,
  ReachedBy_MultBodyAggAux_f12.valid_to AS valid_to
FROM
  t_3_ReachedBy_MultBodyAggAux_f12 AS ReachedBy_MultBodyAggAux_f12
GROUP BY 1, 2, 3, 4),
t_1_ReachedBy_sn_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      ReachedBy_sn_step.source AS source,
      ReachedBy_sn_step.target AS target,
      ReachedBy_sn_step.valid_from AS valid_from,
      ReachedBy_sn_step.valid_to AS valid_to,
      0 AS synalog_sn_in_full
    FROM
      t_2_ReachedBy_sn_step AS ReachedBy_sn_step
   UNION ALL
  
    SELECT
      ReachedBy_sn_full.source AS source,
      ReachedBy_sn_full.target AS target,
      ReachedBy_sn_full.valid_from AS valid_from,
      ReachedBy_sn_full.valid_to AS valid_to,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.ReachedBy_sn_full AS ReachedBy_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_ReachedBy_sn_seen AS (SELECT
  ReachedBy_sn_seen_MultBodyAggAux.source AS source,
  ReachedBy_sn_seen_MultBodyAggAux.target AS target,
  ReachedBy_sn_seen_MultBodyAggAux.valid_from AS valid_from,
  ReachedBy_sn_seen_MultBodyAggAux.valid_to AS valid_to,
  MAX(ReachedBy_sn_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_ReachedBy_sn_seen_MultBodyAggAux AS ReachedBy_sn_seen_MultBodyAggAux
GROUP BY 1, 2, 3, 4)
SELECT
  ReachedBy_sn_seen.source AS source,
  ReachedBy_sn_seen.target AS target,
  ReachedBy_sn_seen.valid_from AS valid_from,
  ReachedBy_sn_seen.valid_to AS valid_to
FROM
  t_0_ReachedBy_sn_seen AS ReachedBy_sn_seen
WHERE
  (ReachedBy_sn_seen.synalog_sn_in_full = 0)
GROUP BY 1, 2, 3, 4;

INSERT INTO synalog_test.ReachedBy_sn_full SELECT * FROM synalog_test.ReachedBy_sn_new;

DROP TABLE IF EXISTS synalog_test.ReachedBy_sn_delta;
CREATE TABLE synalog_test.ReachedBy_sn_delta AS WITH t_1_HandedOver AS (SELECT * FROM (
  
    SELECT
      'a' AS source,
      'b' AS target,
      '2024-01-01' AS valid_from,
      '2024-03-01' AS valid_to
   UNION ALL
  
    SELECT
      'b' AS source,
      'c' AS target,
      '2024-02-01' AS valid_from,
      '2024-04-01' AS valid_to
   UNION ALL
  
    SELECT
      'c' AS source,
      'd' AS target,
      '2024-05-01' AS valid_from,
      '2024-06-01' AS valid_to
   UNION ALL
  
    SELECT
      'a' AS source,
      'c' AS target,
      '2024-03-15' AS valid_from,
      '2024-04-15' AS valid_to
  
) AS UNUSED_TABLE_NAME  ),
t_3_ReachedBy_MultBodyAggAux_f1 AS (SELECT * FROM (
  
    SELECT
      HandedOver.source AS source,
      HandedOver.target AS target,
      HandedOver.valid_from AS valid_from,
      HandedOver.valid_to AS valid_to
    FROM
      t_1_HandedOver AS HandedOver
   UNION ALL
  
    SELECT
      ReachedBy_sn_new.source AS source,
      t_4_HandedOver.target AS target,
      CASE WHEN (ReachedBy_sn_new.valid_from > t_4_HandedOver.valid_from) THEN ReachedBy_sn_new.valid_from ELSE t_4_HandedOver.valid_from END AS valid_from,
      CASE WHEN (ReachedBy_sn_new.valid_to < t_4_HandedOver.valid_to) THEN ReachedBy_sn_new.valid_to ELSE t_4_HandedOver.valid_to END AS valid_to
    FROM
      synalog_test.ReachedBy_sn_new AS ReachedBy_sn_new, t_1_HandedOver AS t_4_HandedOver
    WHERE
      (CASE WHEN (ReachedBy_sn_new.valid_from > t_4_HandedOver.valid_from) THEN ReachedBy_sn_new.valid_from ELSE t_4_HandedOver.valid_from END < CASE WHEN (ReachedBy_sn_new.valid_to < t_4_HandedOver.valid_to) THEN ReachedBy_sn_new.valid_to ELSE t_4_HandedOver.valid_to END) AND
      (t_4_HandedOver.source IS NOT DISTINCT FROM ReachedBy_sn_new.target)
  
) AS UNUSED_TABLE_NAME  ),
t_2_ReachedBy_sn_back_step AS (SELECT
  ReachedBy_MultBodyAggAux_f1.source AS source,
  ReachedBy_MultBodyAggAux_f1.target AS target,
  ReachedBy_MultBodyAggAux_f1.valid_from AS valid_from,
  ReachedBy_MultBodyAggAux_f1.valid_to AS valid_to
FROM
  t_3_ReachedBy_MultBodyAggAux_f1 AS ReachedBy_MultBodyAggAux_f1
GROUP BY 1, 2, 3, 4),
t_1_ReachedBy_sn_back_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      ReachedBy_sn_back_step.source AS source,
      ReachedBy_sn_back_step.target AS target,
      ReachedBy_sn_back_step.valid_from AS valid_from,
      ReachedBy_sn_back_step.valid_to AS valid_to,
      0 AS synalog_sn_in_full
    FROM
      t_2_ReachedBy_sn_back_step AS ReachedBy_sn_back_step
   UNION ALL
  
    SELECT
      ReachedBy_sn_full.source AS source,
      ReachedBy_sn_full.target AS target,
      ReachedBy_sn_full.valid_from AS valid_from,
      ReachedBy_sn_full.valid_to AS valid_to,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.ReachedBy_sn_full AS ReachedBy_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_ReachedBy_sn_back_seen AS (SELECT
  ReachedBy_sn_back_seen_MultBodyAggAux.source AS source,
  ReachedBy_sn_back_seen_MultBodyAggAux.target AS target,
  ReachedBy_sn_back_seen_MultBodyAggAux.valid_from AS valid_from,
  ReachedBy_sn_back_seen_MultBodyAggAux.valid_to AS valid_to,
  MAX(ReachedBy_sn_back_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_ReachedBy_sn_back_seen_MultBodyAggAux AS ReachedBy_sn_back_seen_MultBodyAggAux
GROUP BY 1, 2, 3, 4)
SELECT
  ReachedBy_sn_back_seen.source AS source,
  ReachedBy_sn_back_seen.target AS target,
  ReachedBy_sn_back_seen.valid_from AS valid_from,
  ReachedBy_sn_back_seen.valid_to AS valid_to
FROM
  t_0_ReachedBy_sn_back_seen AS ReachedBy_sn_back_seen
WHERE
  (ReachedBy_sn_back_seen.synalog_sn_in_full = 0)
GROUP BY 1, 2, 3, 4;

INSERT INTO synalog_test.ReachedBy_sn_full SELECT * FROM synalog_test.ReachedBy_sn_delta;

DROP TABLE IF EXISTS synalog_test.ReachedBy_sn_new;
CREATE TABLE synalog_test.ReachedBy_sn_new AS WITH t_1_HandedOver AS (SELECT * FROM (
  
    SELECT
      'a' AS source,
      'b' AS target,
      '2024-01-01' AS valid_from,
      '2024-03-01' AS valid_to
   UNION ALL
  
    SELECT
      'b' AS source,
      'c' AS target,
      '2024-02-01' AS valid_from,
      '2024-04-01' AS valid_to
   UNION ALL
  
    SELECT
      'c' AS source,
      'd' AS target,
      '2024-05-01' AS valid_from,
      '2024-06-01' AS valid_to
   UNION ALL
  
    SELECT
      'a' AS source,
      'c' AS target,
      '2024-03-15' AS valid_from,
      '2024-04-15' AS valid_to
  
) AS UNUSED_TABLE_NAME  ),
t_3_ReachedBy_MultBodyAggAux_f12 AS (SELECT * FROM (
  
    SELECT
      HandedOver.source AS source,
      HandedOver.target AS target,
      HandedOver.valid_from AS valid_from,
      HandedOver.valid_to AS valid_to
    FROM
      t_1_HandedOver AS HandedOver
   UNION ALL
  
    SELECT
      ReachedBy_sn_delta.source AS source,
      t_4_HandedOver.target AS target,
      CASE WHEN (ReachedBy_sn_delta.valid_from > t_4_HandedOver.valid_from) THEN ReachedBy_sn_delta.valid_from ELSE t_4_HandedOver.valid_from END AS valid_from,
      CASE WHEN (ReachedBy_sn_delta.valid_to < t_4_HandedOver.valid_to) THEN ReachedBy_sn_delta.valid_to ELSE t_4_HandedOver.valid_to END AS valid_to
    FROM
      synalog_test.ReachedBy_sn_delta AS ReachedBy_sn_delta, t_1_HandedOver AS t_4_HandedOver
    WHERE
      (CASE WHEN (ReachedBy_sn_delta.valid_from > t_4_HandedOver.valid_from) THEN ReachedBy_sn_delta.valid_from ELSE t_4_HandedOver.valid_from END < CASE WHEN (ReachedBy_sn_delta.valid_to < t_4_HandedOver.valid_to) THEN ReachedBy_sn_delta.valid_to ELSE t_4_HandedOver.valid_to END) AND
      (t_4_HandedOver.source IS NOT DISTINCT FROM ReachedBy_sn_delta.target)
  
) AS UNUSED_TABLE_NAME  ),
t_2_ReachedBy_sn_step AS (SELECT
  ReachedBy_MultBodyAggAux_f12.source AS source,
  ReachedBy_MultBodyAggAux_f12.target AS target,
  ReachedBy_MultBodyAggAux_f12.valid_from AS valid_from,
  ReachedBy_MultBodyAggAux_f12.valid_to AS valid_to
FROM
  t_3_ReachedBy_MultBodyAggAux_f12 AS ReachedBy_MultBodyAggAux_f12
GROUP BY 1, 2, 3, 4),
t_1_ReachedBy_sn_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      ReachedBy_sn_step.source AS source,
      ReachedBy_sn_step.target AS target,
      ReachedBy_sn_step.valid_from AS valid_from,
      ReachedBy_sn_step.valid_to AS valid_to,
      0 AS synalog_sn_in_full
    FROM
      t_2_ReachedBy_sn_step AS ReachedBy_sn_step
   UNION ALL
  
    SELECT
      ReachedBy_sn_full.source AS source,
      ReachedBy_sn_full.target AS target,
      ReachedBy_sn_full.valid_from AS valid_from,
      ReachedBy_sn_full.valid_to AS valid_to,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.ReachedBy_sn_full AS ReachedBy_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_ReachedBy_sn_seen AS (SELECT
  ReachedBy_sn_seen_MultBodyAggAux.source AS source,
  ReachedBy_sn_seen_MultBodyAggAux.target AS target,
  ReachedBy_sn_seen_MultBodyAggAux.valid_from AS valid_from,
  ReachedBy_sn_seen_MultBodyAggAux.valid_to AS valid_to,
  MAX(ReachedBy_sn_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_ReachedBy_sn_seen_MultBodyAggAux AS ReachedBy_sn_seen_MultBodyAggAux
GROUP BY 1, 2, 3, 4)
SELECT
  ReachedBy_sn_seen.source AS source,
  ReachedBy_sn_seen.target AS target,
  ReachedBy_sn_seen.valid_from AS valid_from,
  ReachedBy_sn_seen.valid_to AS valid_to
FROM
  t_0_ReachedBy_sn_seen AS ReachedBy_sn_seen
WHERE
  (ReachedBy_sn_seen.synalog_sn_in_full = 0)
GROUP BY 1, 2, 3, 4;

INSERT INTO synalog_test.ReachedBy_sn_full SELECT * FROM synalog_test.ReachedBy_sn_new;

DROP TABLE IF EXISTS synalog_test.ReachedBy_sn_delta;
CREATE TABLE synalog_test.ReachedBy_sn_delta AS WITH t_1_HandedOver AS (SELECT * FROM (
  
    SELECT
      'a' AS source,
      'b' AS target,
      '2024-01-01' AS valid_from,
      '2024-03-01' AS valid_to
   UNION ALL
  
    SELECT
      'b' AS source,
      'c' AS target,
      '2024-02-01' AS valid_from,
      '2024-04-01' AS valid_to
   UNION ALL
  
    SELECT
      'c' AS source,
      'd' AS target,
      '2024-05-01' AS valid_from,
      '2024-06-01' AS valid_to
   UNION ALL
  
    SELECT
      'a' AS source,
      'c' AS target,
      '2024-03-15' AS valid_from,
      '2024-04-15' AS valid_to
  
) AS UNUSED_TABLE_NAME  ),
t_3_ReachedBy_MultBodyAggAux_f1 AS (SELECT * FROM (
  
    SELECT
      HandedOver.source AS source,
      HandedOver.target AS target,
      HandedOver.valid_from AS valid_from,
      HandedOver.valid_to AS valid_to
    FROM
      t_1_HandedOver AS HandedOver
   UNION ALL
  
    SELECT
      ReachedBy_sn_new.source AS source,
      t_4_HandedOver.target AS target,
      CASE WHEN (ReachedBy_sn_new.valid_from > t_4_HandedOver.valid_from) THEN ReachedBy_sn_new.valid_from ELSE t_4_HandedOver.valid_from END AS valid_from,
      CASE WHEN (ReachedBy_sn_new.valid_to < t_4_HandedOver.valid_to) THEN ReachedBy_sn_new.valid_to ELSE t_4_HandedOver.valid_to END AS valid_to
    FROM
      synalog_test.ReachedBy_sn_new AS ReachedBy_sn_new, t_1_HandedOver AS t_4_HandedOver
    WHERE
      (CASE WHEN (ReachedBy_sn_new.valid_from > t_4_HandedOver.valid_from) THEN ReachedBy_sn_new.valid_from ELSE t_4_HandedOver.valid_from END < CASE WHEN (ReachedBy_sn_new.valid_to < t_4_HandedOver.valid_to) THEN ReachedBy_sn_new.valid_to ELSE t_4_HandedOver.valid_to END) AND
      (t_4_HandedOver.source IS NOT DISTINCT FROM ReachedBy_sn_new.target)
  
) AS UNUSED_TABLE_NAME  ),
t_2_ReachedBy_sn_back_step AS (SELECT
  ReachedBy_MultBodyAggAux_f1.source AS source,
  ReachedBy_MultBodyAggAux_f1.target AS target,
  ReachedBy_MultBodyAggAux_f1.valid_from AS valid_from,
  ReachedBy_MultBodyAggAux_f1.valid_to AS valid_to
FROM
  t_3_ReachedBy_MultBodyAggAux_f1 AS ReachedBy_MultBodyAggAux_f1
GROUP BY 1, 2, 3, 4),
t_1_ReachedBy_sn_back_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      ReachedBy_sn_back_step.source AS source,
      ReachedBy_sn_back_step.target AS target,
      ReachedBy_sn_back_step.valid_from AS valid_from,
      ReachedBy_sn_back_step.valid_to AS valid_to,
      0 AS synalog_sn_in_full
    FROM
      t_2_ReachedBy_sn_back_step AS ReachedBy_sn_back_step
   UNION ALL
  
    SELECT
      ReachedBy_sn_full.source AS source,
      ReachedBy_sn_full.target AS target,
      ReachedBy_sn_full.valid_from AS valid_from,
      ReachedBy_sn_full.valid_to AS valid_to,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.ReachedBy_sn_full AS ReachedBy_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_ReachedBy_sn_back_seen AS (SELECT
  ReachedBy_sn_back_seen_MultBodyAggAux.source AS source,
  ReachedBy_sn_back_seen_MultBodyAggAux.target AS target,
  ReachedBy_sn_back_seen_MultBodyAggAux.valid_from AS valid_from,
  ReachedBy_sn_back_seen_MultBodyAggAux.valid_to AS valid_to,
  MAX(ReachedBy_sn_back_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_ReachedBy_sn_back_seen_MultBodyAggAux AS ReachedBy_sn_back_seen_MultBodyAggAux
GROUP BY 1, 2, 3, 4)
SELECT
  ReachedBy_sn_back_seen.source AS source,
  ReachedBy_sn_back_seen.target AS target,
  ReachedBy_sn_back_seen.valid_from AS valid_from,
  ReachedBy_sn_back_seen.valid_to AS valid_to
FROM
  t_0_ReachedBy_sn_back_seen AS ReachedBy_sn_back_seen
WHERE
  (ReachedBy_sn_back_seen.synalog_sn_in_full = 0)
GROUP BY 1, 2, 3, 4;

INSERT INTO synalog_test.ReachedBy_sn_full SELECT * FROM synalog_test.ReachedBy_sn_delta;

SELECT
  ReachedBy_sn_full.source AS source,
  ReachedBy_sn_full.target AS target,
  ReachedBy_sn_full.valid_from AS valid_from,
  ReachedBy_sn_full.valid_to AS valid_to
FROM
  synalog_test.ReachedBy_sn_full AS ReachedBy_sn_full ORDER BY source, target, valid_from;