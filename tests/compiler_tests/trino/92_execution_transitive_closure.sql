DROP TABLE IF EXISTS synalog_test.Reach_sn_delta;
CREATE TABLE synalog_test.Reach_sn_delta AS WITH t_1_Edge AS (SELECT * FROM (
  
    SELECT
      'a' AS x,
      'b' AS y
   UNION ALL
  
    SELECT
      'b' AS x,
      'c' AS y
   UNION ALL
  
    SELECT
      'c' AS x,
      'd' AS y
  
) AS UNUSED_TABLE_NAME  ),
t_0_Reach_MultBodyAggAux_f2 AS (SELECT * FROM (
  
    SELECT
      Edge.x AS x,
      Edge.y AS y
    FROM
      t_1_Edge AS Edge
  
) AS UNUSED_TABLE_NAME  )
SELECT
  Reach_MultBodyAggAux_f2.x AS x,
  Reach_MultBodyAggAux_f2.y AS y
FROM
  t_0_Reach_MultBodyAggAux_f2 AS Reach_MultBodyAggAux_f2
GROUP BY 1, 2;

-- Interacting with table synalog_test.Reach_sn_delta

DROP TABLE IF EXISTS synalog_test.Reach_sn_t0;
CREATE TABLE synalog_test.Reach_sn_t0 AS SELECT
  Reach_sn_delta.x AS x,
  Reach_sn_delta.y AS y
FROM
  synalog_test.Reach_sn_delta AS Reach_sn_delta
WHERE
  (1 = 0);

-- Interacting with table synalog_test.Reach_sn_t0

DROP TABLE IF EXISTS synalog_test.Reach_sn_t1;
CREATE TABLE synalog_test.Reach_sn_t1 AS WITH t_1_Edge AS (SELECT * FROM (
  
    SELECT
      'a' AS x,
      'b' AS y
   UNION ALL
  
    SELECT
      'b' AS x,
      'c' AS y
   UNION ALL
  
    SELECT
      'c' AS x,
      'd' AS y
  
) AS UNUSED_TABLE_NAME  ),
t_1_Reach_MultBodyAggAux_f3 AS (SELECT * FROM (
  
    SELECT
      Edge.x AS x,
      Edge.y AS y
    FROM
      t_1_Edge AS Edge
   UNION ALL
  
    SELECT
      Reach_sn_t0.x AS x,
      t_2_Edge.y AS y
    FROM
      synalog_test.Reach_sn_t0 AS Reach_sn_t0, t_1_Edge AS t_2_Edge
    WHERE
      (t_2_Edge.x IS NOT DISTINCT FROM Reach_sn_t0.y)
  
) AS UNUSED_TABLE_NAME  ),
t_0_Reach_sn_r1 AS (SELECT
  Reach_MultBodyAggAux_f3.x AS x,
  Reach_MultBodyAggAux_f3.y AS y
FROM
  t_1_Reach_MultBodyAggAux_f3 AS Reach_MultBodyAggAux_f3
GROUP BY 1, 2)
SELECT
  Reach_sn_r1.x AS x,
  Reach_sn_r1.y AS y
FROM
  t_0_Reach_sn_r1 AS Reach_sn_r1
WHERE
  (1 = 0);

-- Interacting with table synalog_test.Reach_sn_t1

DROP TABLE IF EXISTS synalog_test.Reach_sn_t2;
CREATE TABLE synalog_test.Reach_sn_t2 AS WITH t_1_Edge AS (SELECT * FROM (
  
    SELECT
      'a' AS x,
      'b' AS y
   UNION ALL
  
    SELECT
      'b' AS x,
      'c' AS y
   UNION ALL
  
    SELECT
      'c' AS x,
      'd' AS y
  
) AS UNUSED_TABLE_NAME  ),
t_1_Reach_MultBodyAggAux_f4 AS (SELECT * FROM (
  
    SELECT
      Edge.x AS x,
      Edge.y AS y
    FROM
      t_1_Edge AS Edge
   UNION ALL
  
    SELECT
      Reach_sn_t1.x AS x,
      t_2_Edge.y AS y
    FROM
      synalog_test.Reach_sn_t1 AS Reach_sn_t1, t_1_Edge AS t_2_Edge
    WHERE
      (t_2_Edge.x IS NOT DISTINCT FROM Reach_sn_t1.y)
  
) AS UNUSED_TABLE_NAME  ),
t_0_Reach_sn_r2 AS (SELECT
  Reach_MultBodyAggAux_f4.x AS x,
  Reach_MultBodyAggAux_f4.y AS y
FROM
  t_1_Reach_MultBodyAggAux_f4 AS Reach_MultBodyAggAux_f4
GROUP BY 1, 2)
SELECT
  Reach_sn_r2.x AS x,
  Reach_sn_r2.y AS y
FROM
  t_0_Reach_sn_r2 AS Reach_sn_r2
WHERE
  (1 = 0);

-- Interacting with table synalog_test.Reach_sn_t2

DROP TABLE IF EXISTS synalog_test.Reach_sn_t3;
CREATE TABLE synalog_test.Reach_sn_t3 AS WITH t_1_Edge AS (SELECT * FROM (
  
    SELECT
      'a' AS x,
      'b' AS y
   UNION ALL
  
    SELECT
      'b' AS x,
      'c' AS y
   UNION ALL
  
    SELECT
      'c' AS x,
      'd' AS y
  
) AS UNUSED_TABLE_NAME  ),
t_1_Reach_MultBodyAggAux_f5 AS (SELECT * FROM (
  
    SELECT
      Edge.x AS x,
      Edge.y AS y
    FROM
      t_1_Edge AS Edge
   UNION ALL
  
    SELECT
      Reach_sn_t2.x AS x,
      t_2_Edge.y AS y
    FROM
      synalog_test.Reach_sn_t2 AS Reach_sn_t2, t_1_Edge AS t_2_Edge
    WHERE
      (t_2_Edge.x IS NOT DISTINCT FROM Reach_sn_t2.y)
  
) AS UNUSED_TABLE_NAME  ),
t_0_Reach_sn_r3 AS (SELECT
  Reach_MultBodyAggAux_f5.x AS x,
  Reach_MultBodyAggAux_f5.y AS y
FROM
  t_1_Reach_MultBodyAggAux_f5 AS Reach_MultBodyAggAux_f5
GROUP BY 1, 2)
SELECT
  Reach_sn_r3.x AS x,
  Reach_sn_r3.y AS y
FROM
  t_0_Reach_sn_r3 AS Reach_sn_r3
WHERE
  (1 = 0);

-- Interacting with table synalog_test.Reach_sn_t3

DROP TABLE IF EXISTS synalog_test.Reach_sn_t4;
CREATE TABLE synalog_test.Reach_sn_t4 AS WITH t_1_Edge AS (SELECT * FROM (
  
    SELECT
      'a' AS x,
      'b' AS y
   UNION ALL
  
    SELECT
      'b' AS x,
      'c' AS y
   UNION ALL
  
    SELECT
      'c' AS x,
      'd' AS y
  
) AS UNUSED_TABLE_NAME  ),
t_1_Reach_MultBodyAggAux_f6 AS (SELECT * FROM (
  
    SELECT
      Edge.x AS x,
      Edge.y AS y
    FROM
      t_1_Edge AS Edge
   UNION ALL
  
    SELECT
      Reach_sn_t3.x AS x,
      t_2_Edge.y AS y
    FROM
      synalog_test.Reach_sn_t3 AS Reach_sn_t3, t_1_Edge AS t_2_Edge
    WHERE
      (t_2_Edge.x IS NOT DISTINCT FROM Reach_sn_t3.y)
  
) AS UNUSED_TABLE_NAME  ),
t_0_Reach_sn_r4 AS (SELECT
  Reach_MultBodyAggAux_f6.x AS x,
  Reach_MultBodyAggAux_f6.y AS y
FROM
  t_1_Reach_MultBodyAggAux_f6 AS Reach_MultBodyAggAux_f6
GROUP BY 1, 2)
SELECT
  Reach_sn_r4.x AS x,
  Reach_sn_r4.y AS y
FROM
  t_0_Reach_sn_r4 AS Reach_sn_r4
WHERE
  (1 = 0);

-- Interacting with table synalog_test.Reach_sn_t4

DROP TABLE IF EXISTS synalog_test.Reach_sn_t5;
CREATE TABLE synalog_test.Reach_sn_t5 AS WITH t_1_Edge AS (SELECT * FROM (
  
    SELECT
      'a' AS x,
      'b' AS y
   UNION ALL
  
    SELECT
      'b' AS x,
      'c' AS y
   UNION ALL
  
    SELECT
      'c' AS x,
      'd' AS y
  
) AS UNUSED_TABLE_NAME  ),
t_1_Reach_MultBodyAggAux_f7 AS (SELECT * FROM (
  
    SELECT
      Edge.x AS x,
      Edge.y AS y
    FROM
      t_1_Edge AS Edge
   UNION ALL
  
    SELECT
      Reach_sn_t4.x AS x,
      t_2_Edge.y AS y
    FROM
      synalog_test.Reach_sn_t4 AS Reach_sn_t4, t_1_Edge AS t_2_Edge
    WHERE
      (t_2_Edge.x IS NOT DISTINCT FROM Reach_sn_t4.y)
  
) AS UNUSED_TABLE_NAME  ),
t_0_Reach_sn_r5 AS (SELECT
  Reach_MultBodyAggAux_f7.x AS x,
  Reach_MultBodyAggAux_f7.y AS y
FROM
  t_1_Reach_MultBodyAggAux_f7 AS Reach_MultBodyAggAux_f7
GROUP BY 1, 2)
SELECT
  Reach_sn_r5.x AS x,
  Reach_sn_r5.y AS y
FROM
  t_0_Reach_sn_r5 AS Reach_sn_r5
WHERE
  (1 = 0);

-- Interacting with table synalog_test.Reach_sn_t5

DROP TABLE IF EXISTS synalog_test.Reach_sn_full;
CREATE TABLE synalog_test.Reach_sn_full AS SELECT * FROM (
  
    SELECT
      Reach_sn_delta.x AS x,
      Reach_sn_delta.y AS y
    FROM
      synalog_test.Reach_sn_delta AS Reach_sn_delta
   UNION ALL
  
    SELECT
      Reach_sn_t1.x AS x,
      Reach_sn_t1.y AS y
    FROM
      synalog_test.Reach_sn_t1 AS Reach_sn_t1
   UNION ALL
  
    SELECT
      Reach_sn_t2.x AS x,
      Reach_sn_t2.y AS y
    FROM
      synalog_test.Reach_sn_t2 AS Reach_sn_t2
   UNION ALL
  
    SELECT
      Reach_sn_t3.x AS x,
      Reach_sn_t3.y AS y
    FROM
      synalog_test.Reach_sn_t3 AS Reach_sn_t3
   UNION ALL
  
    SELECT
      Reach_sn_t4.x AS x,
      Reach_sn_t4.y AS y
    FROM
      synalog_test.Reach_sn_t4 AS Reach_sn_t4
   UNION ALL
  
    SELECT
      Reach_sn_t5.x AS x,
      Reach_sn_t5.y AS y
    FROM
      synalog_test.Reach_sn_t5 AS Reach_sn_t5
  
) AS UNUSED_TABLE_NAME  ;

-- Interacting with table synalog_test.Reach_sn_full

DROP TABLE IF EXISTS synalog_test.Reach_sn_new;
CREATE TABLE synalog_test.Reach_sn_new AS WITH t_1_Edge AS (SELECT * FROM (
  
    SELECT
      'a' AS x,
      'b' AS y
   UNION ALL
  
    SELECT
      'b' AS x,
      'c' AS y
   UNION ALL
  
    SELECT
      'c' AS x,
      'd' AS y
  
) AS UNUSED_TABLE_NAME  ),
t_3_Reach_MultBodyAggAux_f8 AS (SELECT * FROM (
  
    SELECT
      Edge.x AS x,
      Edge.y AS y
    FROM
      t_1_Edge AS Edge
   UNION ALL
  
    SELECT
      Reach_sn_delta.x AS x,
      t_4_Edge.y AS y
    FROM
      synalog_test.Reach_sn_delta AS Reach_sn_delta, t_1_Edge AS t_4_Edge
    WHERE
      (t_4_Edge.x IS NOT DISTINCT FROM Reach_sn_delta.y)
  
) AS UNUSED_TABLE_NAME  ),
t_2_Reach_sn_step AS (SELECT
  Reach_MultBodyAggAux_f8.x AS x,
  Reach_MultBodyAggAux_f8.y AS y
FROM
  t_3_Reach_MultBodyAggAux_f8 AS Reach_MultBodyAggAux_f8
GROUP BY 1, 2),
t_1_Reach_sn_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      Reach_sn_step.x AS x,
      Reach_sn_step.y AS y,
      0 AS synalog_sn_in_full
    FROM
      t_2_Reach_sn_step AS Reach_sn_step
   UNION ALL
  
    SELECT
      Reach_sn_full.x AS x,
      Reach_sn_full.y AS y,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.Reach_sn_full AS Reach_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_Reach_sn_seen AS (SELECT
  Reach_sn_seen_MultBodyAggAux.x AS x,
  Reach_sn_seen_MultBodyAggAux.y AS y,
  MAX(Reach_sn_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_Reach_sn_seen_MultBodyAggAux AS Reach_sn_seen_MultBodyAggAux
GROUP BY 1, 2)
SELECT
  Reach_sn_seen.x AS x,
  Reach_sn_seen.y AS y
FROM
  t_0_Reach_sn_seen AS Reach_sn_seen
WHERE
  (Reach_sn_seen.synalog_sn_in_full = 0)
GROUP BY 1, 2;

INSERT INTO synalog_test.Reach_sn_full SELECT * FROM synalog_test.Reach_sn_new;

DROP TABLE IF EXISTS synalog_test.Reach_sn_delta;
CREATE TABLE synalog_test.Reach_sn_delta AS WITH t_1_Edge AS (SELECT * FROM (
  
    SELECT
      'a' AS x,
      'b' AS y
   UNION ALL
  
    SELECT
      'b' AS x,
      'c' AS y
   UNION ALL
  
    SELECT
      'c' AS x,
      'd' AS y
  
) AS UNUSED_TABLE_NAME  ),
t_3_Reach_MultBodyAggAux_f1 AS (SELECT * FROM (
  
    SELECT
      Edge.x AS x,
      Edge.y AS y
    FROM
      t_1_Edge AS Edge
   UNION ALL
  
    SELECT
      Reach_sn_new.x AS x,
      t_4_Edge.y AS y
    FROM
      synalog_test.Reach_sn_new AS Reach_sn_new, t_1_Edge AS t_4_Edge
    WHERE
      (t_4_Edge.x IS NOT DISTINCT FROM Reach_sn_new.y)
  
) AS UNUSED_TABLE_NAME  ),
t_2_Reach_sn_back_step AS (SELECT
  Reach_MultBodyAggAux_f1.x AS x,
  Reach_MultBodyAggAux_f1.y AS y
FROM
  t_3_Reach_MultBodyAggAux_f1 AS Reach_MultBodyAggAux_f1
GROUP BY 1, 2),
t_1_Reach_sn_back_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      Reach_sn_back_step.x AS x,
      Reach_sn_back_step.y AS y,
      0 AS synalog_sn_in_full
    FROM
      t_2_Reach_sn_back_step AS Reach_sn_back_step
   UNION ALL
  
    SELECT
      Reach_sn_full.x AS x,
      Reach_sn_full.y AS y,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.Reach_sn_full AS Reach_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_Reach_sn_back_seen AS (SELECT
  Reach_sn_back_seen_MultBodyAggAux.x AS x,
  Reach_sn_back_seen_MultBodyAggAux.y AS y,
  MAX(Reach_sn_back_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_Reach_sn_back_seen_MultBodyAggAux AS Reach_sn_back_seen_MultBodyAggAux
GROUP BY 1, 2)
SELECT
  Reach_sn_back_seen.x AS x,
  Reach_sn_back_seen.y AS y
FROM
  t_0_Reach_sn_back_seen AS Reach_sn_back_seen
WHERE
  (Reach_sn_back_seen.synalog_sn_in_full = 0)
GROUP BY 1, 2;

INSERT INTO synalog_test.Reach_sn_full SELECT * FROM synalog_test.Reach_sn_delta;

DROP TABLE IF EXISTS synalog_test.Reach_sn_new;
CREATE TABLE synalog_test.Reach_sn_new AS WITH t_1_Edge AS (SELECT * FROM (
  
    SELECT
      'a' AS x,
      'b' AS y
   UNION ALL
  
    SELECT
      'b' AS x,
      'c' AS y
   UNION ALL
  
    SELECT
      'c' AS x,
      'd' AS y
  
) AS UNUSED_TABLE_NAME  ),
t_3_Reach_MultBodyAggAux_f8 AS (SELECT * FROM (
  
    SELECT
      Edge.x AS x,
      Edge.y AS y
    FROM
      t_1_Edge AS Edge
   UNION ALL
  
    SELECT
      Reach_sn_delta.x AS x,
      t_4_Edge.y AS y
    FROM
      synalog_test.Reach_sn_delta AS Reach_sn_delta, t_1_Edge AS t_4_Edge
    WHERE
      (t_4_Edge.x IS NOT DISTINCT FROM Reach_sn_delta.y)
  
) AS UNUSED_TABLE_NAME  ),
t_2_Reach_sn_step AS (SELECT
  Reach_MultBodyAggAux_f8.x AS x,
  Reach_MultBodyAggAux_f8.y AS y
FROM
  t_3_Reach_MultBodyAggAux_f8 AS Reach_MultBodyAggAux_f8
GROUP BY 1, 2),
t_1_Reach_sn_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      Reach_sn_step.x AS x,
      Reach_sn_step.y AS y,
      0 AS synalog_sn_in_full
    FROM
      t_2_Reach_sn_step AS Reach_sn_step
   UNION ALL
  
    SELECT
      Reach_sn_full.x AS x,
      Reach_sn_full.y AS y,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.Reach_sn_full AS Reach_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_Reach_sn_seen AS (SELECT
  Reach_sn_seen_MultBodyAggAux.x AS x,
  Reach_sn_seen_MultBodyAggAux.y AS y,
  MAX(Reach_sn_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_Reach_sn_seen_MultBodyAggAux AS Reach_sn_seen_MultBodyAggAux
GROUP BY 1, 2)
SELECT
  Reach_sn_seen.x AS x,
  Reach_sn_seen.y AS y
FROM
  t_0_Reach_sn_seen AS Reach_sn_seen
WHERE
  (Reach_sn_seen.synalog_sn_in_full = 0)
GROUP BY 1, 2;

INSERT INTO synalog_test.Reach_sn_full SELECT * FROM synalog_test.Reach_sn_new;

DROP TABLE IF EXISTS synalog_test.Reach_sn_delta;
CREATE TABLE synalog_test.Reach_sn_delta AS WITH t_1_Edge AS (SELECT * FROM (
  
    SELECT
      'a' AS x,
      'b' AS y
   UNION ALL
  
    SELECT
      'b' AS x,
      'c' AS y
   UNION ALL
  
    SELECT
      'c' AS x,
      'd' AS y
  
) AS UNUSED_TABLE_NAME  ),
t_3_Reach_MultBodyAggAux_f1 AS (SELECT * FROM (
  
    SELECT
      Edge.x AS x,
      Edge.y AS y
    FROM
      t_1_Edge AS Edge
   UNION ALL
  
    SELECT
      Reach_sn_new.x AS x,
      t_4_Edge.y AS y
    FROM
      synalog_test.Reach_sn_new AS Reach_sn_new, t_1_Edge AS t_4_Edge
    WHERE
      (t_4_Edge.x IS NOT DISTINCT FROM Reach_sn_new.y)
  
) AS UNUSED_TABLE_NAME  ),
t_2_Reach_sn_back_step AS (SELECT
  Reach_MultBodyAggAux_f1.x AS x,
  Reach_MultBodyAggAux_f1.y AS y
FROM
  t_3_Reach_MultBodyAggAux_f1 AS Reach_MultBodyAggAux_f1
GROUP BY 1, 2),
t_1_Reach_sn_back_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      Reach_sn_back_step.x AS x,
      Reach_sn_back_step.y AS y,
      0 AS synalog_sn_in_full
    FROM
      t_2_Reach_sn_back_step AS Reach_sn_back_step
   UNION ALL
  
    SELECT
      Reach_sn_full.x AS x,
      Reach_sn_full.y AS y,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.Reach_sn_full AS Reach_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_Reach_sn_back_seen AS (SELECT
  Reach_sn_back_seen_MultBodyAggAux.x AS x,
  Reach_sn_back_seen_MultBodyAggAux.y AS y,
  MAX(Reach_sn_back_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_Reach_sn_back_seen_MultBodyAggAux AS Reach_sn_back_seen_MultBodyAggAux
GROUP BY 1, 2)
SELECT
  Reach_sn_back_seen.x AS x,
  Reach_sn_back_seen.y AS y
FROM
  t_0_Reach_sn_back_seen AS Reach_sn_back_seen
WHERE
  (Reach_sn_back_seen.synalog_sn_in_full = 0)
GROUP BY 1, 2;

INSERT INTO synalog_test.Reach_sn_full SELECT * FROM synalog_test.Reach_sn_delta;

DROP TABLE IF EXISTS synalog_test.Reach_sn_new;
CREATE TABLE synalog_test.Reach_sn_new AS WITH t_1_Edge AS (SELECT * FROM (
  
    SELECT
      'a' AS x,
      'b' AS y
   UNION ALL
  
    SELECT
      'b' AS x,
      'c' AS y
   UNION ALL
  
    SELECT
      'c' AS x,
      'd' AS y
  
) AS UNUSED_TABLE_NAME  ),
t_3_Reach_MultBodyAggAux_f8 AS (SELECT * FROM (
  
    SELECT
      Edge.x AS x,
      Edge.y AS y
    FROM
      t_1_Edge AS Edge
   UNION ALL
  
    SELECT
      Reach_sn_delta.x AS x,
      t_4_Edge.y AS y
    FROM
      synalog_test.Reach_sn_delta AS Reach_sn_delta, t_1_Edge AS t_4_Edge
    WHERE
      (t_4_Edge.x IS NOT DISTINCT FROM Reach_sn_delta.y)
  
) AS UNUSED_TABLE_NAME  ),
t_2_Reach_sn_step AS (SELECT
  Reach_MultBodyAggAux_f8.x AS x,
  Reach_MultBodyAggAux_f8.y AS y
FROM
  t_3_Reach_MultBodyAggAux_f8 AS Reach_MultBodyAggAux_f8
GROUP BY 1, 2),
t_1_Reach_sn_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      Reach_sn_step.x AS x,
      Reach_sn_step.y AS y,
      0 AS synalog_sn_in_full
    FROM
      t_2_Reach_sn_step AS Reach_sn_step
   UNION ALL
  
    SELECT
      Reach_sn_full.x AS x,
      Reach_sn_full.y AS y,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.Reach_sn_full AS Reach_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_Reach_sn_seen AS (SELECT
  Reach_sn_seen_MultBodyAggAux.x AS x,
  Reach_sn_seen_MultBodyAggAux.y AS y,
  MAX(Reach_sn_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_Reach_sn_seen_MultBodyAggAux AS Reach_sn_seen_MultBodyAggAux
GROUP BY 1, 2)
SELECT
  Reach_sn_seen.x AS x,
  Reach_sn_seen.y AS y
FROM
  t_0_Reach_sn_seen AS Reach_sn_seen
WHERE
  (Reach_sn_seen.synalog_sn_in_full = 0)
GROUP BY 1, 2;

INSERT INTO synalog_test.Reach_sn_full SELECT * FROM synalog_test.Reach_sn_new;

DROP TABLE IF EXISTS synalog_test.Reach_sn_delta;
CREATE TABLE synalog_test.Reach_sn_delta AS WITH t_1_Edge AS (SELECT * FROM (
  
    SELECT
      'a' AS x,
      'b' AS y
   UNION ALL
  
    SELECT
      'b' AS x,
      'c' AS y
   UNION ALL
  
    SELECT
      'c' AS x,
      'd' AS y
  
) AS UNUSED_TABLE_NAME  ),
t_3_Reach_MultBodyAggAux_f1 AS (SELECT * FROM (
  
    SELECT
      Edge.x AS x,
      Edge.y AS y
    FROM
      t_1_Edge AS Edge
   UNION ALL
  
    SELECT
      Reach_sn_new.x AS x,
      t_4_Edge.y AS y
    FROM
      synalog_test.Reach_sn_new AS Reach_sn_new, t_1_Edge AS t_4_Edge
    WHERE
      (t_4_Edge.x IS NOT DISTINCT FROM Reach_sn_new.y)
  
) AS UNUSED_TABLE_NAME  ),
t_2_Reach_sn_back_step AS (SELECT
  Reach_MultBodyAggAux_f1.x AS x,
  Reach_MultBodyAggAux_f1.y AS y
FROM
  t_3_Reach_MultBodyAggAux_f1 AS Reach_MultBodyAggAux_f1
GROUP BY 1, 2),
t_1_Reach_sn_back_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      Reach_sn_back_step.x AS x,
      Reach_sn_back_step.y AS y,
      0 AS synalog_sn_in_full
    FROM
      t_2_Reach_sn_back_step AS Reach_sn_back_step
   UNION ALL
  
    SELECT
      Reach_sn_full.x AS x,
      Reach_sn_full.y AS y,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.Reach_sn_full AS Reach_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_Reach_sn_back_seen AS (SELECT
  Reach_sn_back_seen_MultBodyAggAux.x AS x,
  Reach_sn_back_seen_MultBodyAggAux.y AS y,
  MAX(Reach_sn_back_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_Reach_sn_back_seen_MultBodyAggAux AS Reach_sn_back_seen_MultBodyAggAux
GROUP BY 1, 2)
SELECT
  Reach_sn_back_seen.x AS x,
  Reach_sn_back_seen.y AS y
FROM
  t_0_Reach_sn_back_seen AS Reach_sn_back_seen
WHERE
  (Reach_sn_back_seen.synalog_sn_in_full = 0)
GROUP BY 1, 2;

INSERT INTO synalog_test.Reach_sn_full SELECT * FROM synalog_test.Reach_sn_delta;

DROP TABLE IF EXISTS synalog_test.Reach_sn_new;
CREATE TABLE synalog_test.Reach_sn_new AS WITH t_1_Edge AS (SELECT * FROM (
  
    SELECT
      'a' AS x,
      'b' AS y
   UNION ALL
  
    SELECT
      'b' AS x,
      'c' AS y
   UNION ALL
  
    SELECT
      'c' AS x,
      'd' AS y
  
) AS UNUSED_TABLE_NAME  ),
t_3_Reach_MultBodyAggAux_f8 AS (SELECT * FROM (
  
    SELECT
      Edge.x AS x,
      Edge.y AS y
    FROM
      t_1_Edge AS Edge
   UNION ALL
  
    SELECT
      Reach_sn_delta.x AS x,
      t_4_Edge.y AS y
    FROM
      synalog_test.Reach_sn_delta AS Reach_sn_delta, t_1_Edge AS t_4_Edge
    WHERE
      (t_4_Edge.x IS NOT DISTINCT FROM Reach_sn_delta.y)
  
) AS UNUSED_TABLE_NAME  ),
t_2_Reach_sn_step AS (SELECT
  Reach_MultBodyAggAux_f8.x AS x,
  Reach_MultBodyAggAux_f8.y AS y
FROM
  t_3_Reach_MultBodyAggAux_f8 AS Reach_MultBodyAggAux_f8
GROUP BY 1, 2),
t_1_Reach_sn_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      Reach_sn_step.x AS x,
      Reach_sn_step.y AS y,
      0 AS synalog_sn_in_full
    FROM
      t_2_Reach_sn_step AS Reach_sn_step
   UNION ALL
  
    SELECT
      Reach_sn_full.x AS x,
      Reach_sn_full.y AS y,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.Reach_sn_full AS Reach_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_Reach_sn_seen AS (SELECT
  Reach_sn_seen_MultBodyAggAux.x AS x,
  Reach_sn_seen_MultBodyAggAux.y AS y,
  MAX(Reach_sn_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_Reach_sn_seen_MultBodyAggAux AS Reach_sn_seen_MultBodyAggAux
GROUP BY 1, 2)
SELECT
  Reach_sn_seen.x AS x,
  Reach_sn_seen.y AS y
FROM
  t_0_Reach_sn_seen AS Reach_sn_seen
WHERE
  (Reach_sn_seen.synalog_sn_in_full = 0)
GROUP BY 1, 2;

INSERT INTO synalog_test.Reach_sn_full SELECT * FROM synalog_test.Reach_sn_new;

DROP TABLE IF EXISTS synalog_test.Reach_sn_delta;
CREATE TABLE synalog_test.Reach_sn_delta AS WITH t_1_Edge AS (SELECT * FROM (
  
    SELECT
      'a' AS x,
      'b' AS y
   UNION ALL
  
    SELECT
      'b' AS x,
      'c' AS y
   UNION ALL
  
    SELECT
      'c' AS x,
      'd' AS y
  
) AS UNUSED_TABLE_NAME  ),
t_3_Reach_MultBodyAggAux_f1 AS (SELECT * FROM (
  
    SELECT
      Edge.x AS x,
      Edge.y AS y
    FROM
      t_1_Edge AS Edge
   UNION ALL
  
    SELECT
      Reach_sn_new.x AS x,
      t_4_Edge.y AS y
    FROM
      synalog_test.Reach_sn_new AS Reach_sn_new, t_1_Edge AS t_4_Edge
    WHERE
      (t_4_Edge.x IS NOT DISTINCT FROM Reach_sn_new.y)
  
) AS UNUSED_TABLE_NAME  ),
t_2_Reach_sn_back_step AS (SELECT
  Reach_MultBodyAggAux_f1.x AS x,
  Reach_MultBodyAggAux_f1.y AS y
FROM
  t_3_Reach_MultBodyAggAux_f1 AS Reach_MultBodyAggAux_f1
GROUP BY 1, 2),
t_1_Reach_sn_back_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      Reach_sn_back_step.x AS x,
      Reach_sn_back_step.y AS y,
      0 AS synalog_sn_in_full
    FROM
      t_2_Reach_sn_back_step AS Reach_sn_back_step
   UNION ALL
  
    SELECT
      Reach_sn_full.x AS x,
      Reach_sn_full.y AS y,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.Reach_sn_full AS Reach_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_Reach_sn_back_seen AS (SELECT
  Reach_sn_back_seen_MultBodyAggAux.x AS x,
  Reach_sn_back_seen_MultBodyAggAux.y AS y,
  MAX(Reach_sn_back_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_Reach_sn_back_seen_MultBodyAggAux AS Reach_sn_back_seen_MultBodyAggAux
GROUP BY 1, 2)
SELECT
  Reach_sn_back_seen.x AS x,
  Reach_sn_back_seen.y AS y
FROM
  t_0_Reach_sn_back_seen AS Reach_sn_back_seen
WHERE
  (Reach_sn_back_seen.synalog_sn_in_full = 0)
GROUP BY 1, 2;

INSERT INTO synalog_test.Reach_sn_full SELECT * FROM synalog_test.Reach_sn_delta;

DROP TABLE IF EXISTS synalog_test.Reach_sn_new;
CREATE TABLE synalog_test.Reach_sn_new AS WITH t_1_Edge AS (SELECT * FROM (
  
    SELECT
      'a' AS x,
      'b' AS y
   UNION ALL
  
    SELECT
      'b' AS x,
      'c' AS y
   UNION ALL
  
    SELECT
      'c' AS x,
      'd' AS y
  
) AS UNUSED_TABLE_NAME  ),
t_3_Reach_MultBodyAggAux_f8 AS (SELECT * FROM (
  
    SELECT
      Edge.x AS x,
      Edge.y AS y
    FROM
      t_1_Edge AS Edge
   UNION ALL
  
    SELECT
      Reach_sn_delta.x AS x,
      t_4_Edge.y AS y
    FROM
      synalog_test.Reach_sn_delta AS Reach_sn_delta, t_1_Edge AS t_4_Edge
    WHERE
      (t_4_Edge.x IS NOT DISTINCT FROM Reach_sn_delta.y)
  
) AS UNUSED_TABLE_NAME  ),
t_2_Reach_sn_step AS (SELECT
  Reach_MultBodyAggAux_f8.x AS x,
  Reach_MultBodyAggAux_f8.y AS y
FROM
  t_3_Reach_MultBodyAggAux_f8 AS Reach_MultBodyAggAux_f8
GROUP BY 1, 2),
t_1_Reach_sn_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      Reach_sn_step.x AS x,
      Reach_sn_step.y AS y,
      0 AS synalog_sn_in_full
    FROM
      t_2_Reach_sn_step AS Reach_sn_step
   UNION ALL
  
    SELECT
      Reach_sn_full.x AS x,
      Reach_sn_full.y AS y,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.Reach_sn_full AS Reach_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_Reach_sn_seen AS (SELECT
  Reach_sn_seen_MultBodyAggAux.x AS x,
  Reach_sn_seen_MultBodyAggAux.y AS y,
  MAX(Reach_sn_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_Reach_sn_seen_MultBodyAggAux AS Reach_sn_seen_MultBodyAggAux
GROUP BY 1, 2)
SELECT
  Reach_sn_seen.x AS x,
  Reach_sn_seen.y AS y
FROM
  t_0_Reach_sn_seen AS Reach_sn_seen
WHERE
  (Reach_sn_seen.synalog_sn_in_full = 0)
GROUP BY 1, 2;

INSERT INTO synalog_test.Reach_sn_full SELECT * FROM synalog_test.Reach_sn_new;

DROP TABLE IF EXISTS synalog_test.Reach_sn_delta;
CREATE TABLE synalog_test.Reach_sn_delta AS WITH t_1_Edge AS (SELECT * FROM (
  
    SELECT
      'a' AS x,
      'b' AS y
   UNION ALL
  
    SELECT
      'b' AS x,
      'c' AS y
   UNION ALL
  
    SELECT
      'c' AS x,
      'd' AS y
  
) AS UNUSED_TABLE_NAME  ),
t_3_Reach_MultBodyAggAux_f1 AS (SELECT * FROM (
  
    SELECT
      Edge.x AS x,
      Edge.y AS y
    FROM
      t_1_Edge AS Edge
   UNION ALL
  
    SELECT
      Reach_sn_new.x AS x,
      t_4_Edge.y AS y
    FROM
      synalog_test.Reach_sn_new AS Reach_sn_new, t_1_Edge AS t_4_Edge
    WHERE
      (t_4_Edge.x IS NOT DISTINCT FROM Reach_sn_new.y)
  
) AS UNUSED_TABLE_NAME  ),
t_2_Reach_sn_back_step AS (SELECT
  Reach_MultBodyAggAux_f1.x AS x,
  Reach_MultBodyAggAux_f1.y AS y
FROM
  t_3_Reach_MultBodyAggAux_f1 AS Reach_MultBodyAggAux_f1
GROUP BY 1, 2),
t_1_Reach_sn_back_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      Reach_sn_back_step.x AS x,
      Reach_sn_back_step.y AS y,
      0 AS synalog_sn_in_full
    FROM
      t_2_Reach_sn_back_step AS Reach_sn_back_step
   UNION ALL
  
    SELECT
      Reach_sn_full.x AS x,
      Reach_sn_full.y AS y,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.Reach_sn_full AS Reach_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_Reach_sn_back_seen AS (SELECT
  Reach_sn_back_seen_MultBodyAggAux.x AS x,
  Reach_sn_back_seen_MultBodyAggAux.y AS y,
  MAX(Reach_sn_back_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_Reach_sn_back_seen_MultBodyAggAux AS Reach_sn_back_seen_MultBodyAggAux
GROUP BY 1, 2)
SELECT
  Reach_sn_back_seen.x AS x,
  Reach_sn_back_seen.y AS y
FROM
  t_0_Reach_sn_back_seen AS Reach_sn_back_seen
WHERE
  (Reach_sn_back_seen.synalog_sn_in_full = 0)
GROUP BY 1, 2;

INSERT INTO synalog_test.Reach_sn_full SELECT * FROM synalog_test.Reach_sn_delta;

SELECT
  Reach_sn_full.x AS x,
  Reach_sn_full.y AS y
FROM
  synalog_test.Reach_sn_full AS Reach_sn_full ORDER BY x, y;