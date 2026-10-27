DROP TABLE IF EXISTS synalog_test.A_sn_delta;
CREATE TABLE synalog_test.A_sn_delta AS WITH t_0_A_MultBodyAggAux_f2 AS (SELECT * FROM (
  
    SELECT
      0 AS y
  
) AS UNUSED_TABLE_NAME  )
SELECT
  A_MultBodyAggAux_f2.y AS y
FROM
  t_0_A_MultBodyAggAux_f2 AS A_MultBodyAggAux_f2
GROUP BY y;

-- Interacting with table synalog_test.A_sn_delta

DROP TABLE IF EXISTS synalog_test.A_sn_t0;
CREATE TABLE synalog_test.A_sn_t0 AS SELECT
  A_sn_delta.y AS y
FROM
  synalog_test.A_sn_delta AS A_sn_delta
WHERE
  (1 = 0);

-- Interacting with table synalog_test.A_sn_t0

DROP TABLE IF EXISTS synalog_test.A_sn_t1;
CREATE TABLE synalog_test.A_sn_t1 AS WITH t_1_A_MultBodyAggAux_f3 AS (SELECT * FROM (
  
    SELECT
      0 AS y
   UNION ALL
  
    SELECT
      ((x_9) + (1)) AS y
    FROM
      synalog_test.A_sn_t0 AS A_sn_t0, UNNEST(GENERATE_ARRAY(0, 100 - 1)) as x_9
    WHERE
      (A_sn_t0.y IS NOT DISTINCT FROM x_9)
  
) AS UNUSED_TABLE_NAME  ),
t_0_A_sn_r1 AS (SELECT
  A_MultBodyAggAux_f3.y AS y
FROM
  t_1_A_MultBodyAggAux_f3 AS A_MultBodyAggAux_f3
GROUP BY y)
SELECT
  A_sn_r1.y AS y
FROM
  t_0_A_sn_r1 AS A_sn_r1
WHERE
  (1 = 0);

-- Interacting with table synalog_test.A_sn_t1

DROP TABLE IF EXISTS synalog_test.A_sn_t2;
CREATE TABLE synalog_test.A_sn_t2 AS WITH t_1_A_MultBodyAggAux_f4 AS (SELECT * FROM (
  
    SELECT
      0 AS y
   UNION ALL
  
    SELECT
      ((x_9) + (1)) AS y
    FROM
      synalog_test.A_sn_t1 AS A_sn_t1, UNNEST(GENERATE_ARRAY(0, 100 - 1)) as x_9
    WHERE
      (A_sn_t1.y IS NOT DISTINCT FROM x_9)
  
) AS UNUSED_TABLE_NAME  ),
t_0_A_sn_r2 AS (SELECT
  A_MultBodyAggAux_f4.y AS y
FROM
  t_1_A_MultBodyAggAux_f4 AS A_MultBodyAggAux_f4
GROUP BY y)
SELECT
  A_sn_r2.y AS y
FROM
  t_0_A_sn_r2 AS A_sn_r2
WHERE
  (1 = 0);

-- Interacting with table synalog_test.A_sn_t2

DROP TABLE IF EXISTS synalog_test.A_sn_t3;
CREATE TABLE synalog_test.A_sn_t3 AS WITH t_1_A_MultBodyAggAux_f5 AS (SELECT * FROM (
  
    SELECT
      0 AS y
   UNION ALL
  
    SELECT
      ((x_9) + (1)) AS y
    FROM
      synalog_test.A_sn_t2 AS A_sn_t2, UNNEST(GENERATE_ARRAY(0, 100 - 1)) as x_9
    WHERE
      (A_sn_t2.y IS NOT DISTINCT FROM x_9)
  
) AS UNUSED_TABLE_NAME  ),
t_0_A_sn_r3 AS (SELECT
  A_MultBodyAggAux_f5.y AS y
FROM
  t_1_A_MultBodyAggAux_f5 AS A_MultBodyAggAux_f5
GROUP BY y)
SELECT
  A_sn_r3.y AS y
FROM
  t_0_A_sn_r3 AS A_sn_r3
WHERE
  (1 = 0);

-- Interacting with table synalog_test.A_sn_t3

DROP TABLE IF EXISTS synalog_test.A_sn_full;
CREATE TABLE synalog_test.A_sn_full AS SELECT * FROM (
  
    SELECT
      A_sn_delta.y AS y
    FROM
      synalog_test.A_sn_delta AS A_sn_delta
   UNION ALL
  
    SELECT
      A_sn_t1.y AS y
    FROM
      synalog_test.A_sn_t1 AS A_sn_t1
   UNION ALL
  
    SELECT
      A_sn_t2.y AS y
    FROM
      synalog_test.A_sn_t2 AS A_sn_t2
   UNION ALL
  
    SELECT
      A_sn_t3.y AS y
    FROM
      synalog_test.A_sn_t3 AS A_sn_t3
  
) AS UNUSED_TABLE_NAME  ;

-- Interacting with table synalog_test.A_sn_full

DROP TABLE IF EXISTS synalog_test.B_sn_delta;
CREATE TABLE synalog_test.B_sn_delta AS WITH t_0_B_MultBodyAggAux_f8 AS (SELECT * FROM (
  
    SELECT
      0 AS y
  
) AS UNUSED_TABLE_NAME  )
SELECT
  B_MultBodyAggAux_f8.y AS y
FROM
  t_0_B_MultBodyAggAux_f8 AS B_MultBodyAggAux_f8
GROUP BY y;

-- Interacting with table synalog_test.B_sn_delta

DROP TABLE IF EXISTS synalog_test.B_sn_t0;
CREATE TABLE synalog_test.B_sn_t0 AS SELECT
  B_sn_delta.y AS y
FROM
  synalog_test.B_sn_delta AS B_sn_delta
WHERE
  (1 = 0);

-- Interacting with table synalog_test.B_sn_t0

DROP TABLE IF EXISTS synalog_test.B_sn_t1;
CREATE TABLE synalog_test.B_sn_t1 AS WITH t_1_B_MultBodyAggAux_f9 AS (SELECT * FROM (
  
    SELECT
      0 AS y
   UNION ALL
  
    SELECT
      ((x_9) + (1)) AS y
    FROM
      synalog_test.B_sn_t0 AS B_sn_t0, UNNEST(GENERATE_ARRAY(0, 100 - 1)) as x_9
    WHERE
      (B_sn_t0.y IS NOT DISTINCT FROM x_9)
  
) AS UNUSED_TABLE_NAME  ),
t_0_B_sn_r1 AS (SELECT
  B_MultBodyAggAux_f9.y AS y
FROM
  t_1_B_MultBodyAggAux_f9 AS B_MultBodyAggAux_f9
GROUP BY y)
SELECT
  B_sn_r1.y AS y
FROM
  t_0_B_sn_r1 AS B_sn_r1
WHERE
  (1 = 0);

-- Interacting with table synalog_test.B_sn_t1

DROP TABLE IF EXISTS synalog_test.B_sn_t2;
CREATE TABLE synalog_test.B_sn_t2 AS WITH t_1_B_MultBodyAggAux_f10 AS (SELECT * FROM (
  
    SELECT
      0 AS y
   UNION ALL
  
    SELECT
      ((x_9) + (1)) AS y
    FROM
      synalog_test.B_sn_t1 AS B_sn_t1, UNNEST(GENERATE_ARRAY(0, 100 - 1)) as x_9
    WHERE
      (B_sn_t1.y IS NOT DISTINCT FROM x_9)
  
) AS UNUSED_TABLE_NAME  ),
t_0_B_sn_r2 AS (SELECT
  B_MultBodyAggAux_f10.y AS y
FROM
  t_1_B_MultBodyAggAux_f10 AS B_MultBodyAggAux_f10
GROUP BY y)
SELECT
  B_sn_r2.y AS y
FROM
  t_0_B_sn_r2 AS B_sn_r2
WHERE
  (1 = 0);

-- Interacting with table synalog_test.B_sn_t2

DROP TABLE IF EXISTS synalog_test.B_sn_t3;
CREATE TABLE synalog_test.B_sn_t3 AS WITH t_1_B_MultBodyAggAux_f11 AS (SELECT * FROM (
  
    SELECT
      0 AS y
   UNION ALL
  
    SELECT
      ((x_9) + (1)) AS y
    FROM
      synalog_test.B_sn_t2 AS B_sn_t2, UNNEST(GENERATE_ARRAY(0, 100 - 1)) as x_9
    WHERE
      (B_sn_t2.y IS NOT DISTINCT FROM x_9)
  
) AS UNUSED_TABLE_NAME  ),
t_0_B_sn_r3 AS (SELECT
  B_MultBodyAggAux_f11.y AS y
FROM
  t_1_B_MultBodyAggAux_f11 AS B_MultBodyAggAux_f11
GROUP BY y)
SELECT
  B_sn_r3.y AS y
FROM
  t_0_B_sn_r3 AS B_sn_r3
WHERE
  (1 = 0);

-- Interacting with table synalog_test.B_sn_t3

DROP TABLE IF EXISTS synalog_test.B_sn_full;
CREATE TABLE synalog_test.B_sn_full AS SELECT * FROM (
  
    SELECT
      B_sn_delta.y AS y
    FROM
      synalog_test.B_sn_delta AS B_sn_delta
   UNION ALL
  
    SELECT
      B_sn_t1.y AS y
    FROM
      synalog_test.B_sn_t1 AS B_sn_t1
   UNION ALL
  
    SELECT
      B_sn_t2.y AS y
    FROM
      synalog_test.B_sn_t2 AS B_sn_t2
   UNION ALL
  
    SELECT
      B_sn_t3.y AS y
    FROM
      synalog_test.B_sn_t3 AS B_sn_t3
  
) AS UNUSED_TABLE_NAME  ;

-- Interacting with table synalog_test.B_sn_full

DROP TABLE IF EXISTS synalog_test.A_sn_new;
CREATE TABLE synalog_test.A_sn_new AS WITH t_3_A_MultBodyAggAux_f6 AS (SELECT * FROM (
  
    SELECT
      0 AS y
   UNION ALL
  
    SELECT
      ((x_16) + (1)) AS y
    FROM
      synalog_test.A_sn_delta AS A_sn_delta, UNNEST(GENERATE_ARRAY(0, 100 - 1)) as x_16
    WHERE
      (A_sn_delta.y IS NOT DISTINCT FROM x_16)
  
) AS UNUSED_TABLE_NAME  ),
t_2_A_sn_step AS (SELECT
  A_MultBodyAggAux_f6.y AS y
FROM
  t_3_A_MultBodyAggAux_f6 AS A_MultBodyAggAux_f6
GROUP BY y),
t_1_A_sn_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      A_sn_step.y AS y,
      0 AS synalog_sn_in_full
    FROM
      t_2_A_sn_step AS A_sn_step
   UNION ALL
  
    SELECT
      A_sn_full.y AS y,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.A_sn_full AS A_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_A_sn_seen AS (SELECT
  A_sn_seen_MultBodyAggAux.y AS y,
  MAX(A_sn_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_A_sn_seen_MultBodyAggAux AS A_sn_seen_MultBodyAggAux
GROUP BY y)
SELECT
  A_sn_seen.y AS y
FROM
  t_0_A_sn_seen AS A_sn_seen
WHERE
  (A_sn_seen.synalog_sn_in_full = 0)
GROUP BY y;

INSERT INTO synalog_test.A_sn_full SELECT * FROM synalog_test.A_sn_new;

DROP TABLE IF EXISTS synalog_test.A_sn_delta;
CREATE TABLE synalog_test.A_sn_delta AS WITH t_3_A_MultBodyAggAux_f1 AS (SELECT * FROM (
  
    SELECT
      0 AS y
   UNION ALL
  
    SELECT
      ((x_16) + (1)) AS y
    FROM
      synalog_test.A_sn_new AS A_sn_new, UNNEST(GENERATE_ARRAY(0, 100 - 1)) as x_16
    WHERE
      (A_sn_new.y IS NOT DISTINCT FROM x_16)
  
) AS UNUSED_TABLE_NAME  ),
t_2_A_sn_back_step AS (SELECT
  A_MultBodyAggAux_f1.y AS y
FROM
  t_3_A_MultBodyAggAux_f1 AS A_MultBodyAggAux_f1
GROUP BY y),
t_1_A_sn_back_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      A_sn_back_step.y AS y,
      0 AS synalog_sn_in_full
    FROM
      t_2_A_sn_back_step AS A_sn_back_step
   UNION ALL
  
    SELECT
      A_sn_full.y AS y,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.A_sn_full AS A_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_A_sn_back_seen AS (SELECT
  A_sn_back_seen_MultBodyAggAux.y AS y,
  MAX(A_sn_back_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_A_sn_back_seen_MultBodyAggAux AS A_sn_back_seen_MultBodyAggAux
GROUP BY y)
SELECT
  A_sn_back_seen.y AS y
FROM
  t_0_A_sn_back_seen AS A_sn_back_seen
WHERE
  (A_sn_back_seen.synalog_sn_in_full = 0)
GROUP BY y;

INSERT INTO synalog_test.A_sn_full SELECT * FROM synalog_test.A_sn_delta;

DROP TABLE IF EXISTS synalog_test.A_sn_new;
CREATE TABLE synalog_test.A_sn_new AS WITH t_3_A_MultBodyAggAux_f6 AS (SELECT * FROM (
  
    SELECT
      0 AS y
   UNION ALL
  
    SELECT
      ((x_16) + (1)) AS y
    FROM
      synalog_test.A_sn_delta AS A_sn_delta, UNNEST(GENERATE_ARRAY(0, 100 - 1)) as x_16
    WHERE
      (A_sn_delta.y IS NOT DISTINCT FROM x_16)
  
) AS UNUSED_TABLE_NAME  ),
t_2_A_sn_step AS (SELECT
  A_MultBodyAggAux_f6.y AS y
FROM
  t_3_A_MultBodyAggAux_f6 AS A_MultBodyAggAux_f6
GROUP BY y),
t_1_A_sn_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      A_sn_step.y AS y,
      0 AS synalog_sn_in_full
    FROM
      t_2_A_sn_step AS A_sn_step
   UNION ALL
  
    SELECT
      A_sn_full.y AS y,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.A_sn_full AS A_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_A_sn_seen AS (SELECT
  A_sn_seen_MultBodyAggAux.y AS y,
  MAX(A_sn_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_A_sn_seen_MultBodyAggAux AS A_sn_seen_MultBodyAggAux
GROUP BY y)
SELECT
  A_sn_seen.y AS y
FROM
  t_0_A_sn_seen AS A_sn_seen
WHERE
  (A_sn_seen.synalog_sn_in_full = 0)
GROUP BY y;

INSERT INTO synalog_test.A_sn_full SELECT * FROM synalog_test.A_sn_new;

DROP TABLE IF EXISTS synalog_test.A_sn_delta;
CREATE TABLE synalog_test.A_sn_delta AS WITH t_3_A_MultBodyAggAux_f1 AS (SELECT * FROM (
  
    SELECT
      0 AS y
   UNION ALL
  
    SELECT
      ((x_16) + (1)) AS y
    FROM
      synalog_test.A_sn_new AS A_sn_new, UNNEST(GENERATE_ARRAY(0, 100 - 1)) as x_16
    WHERE
      (A_sn_new.y IS NOT DISTINCT FROM x_16)
  
) AS UNUSED_TABLE_NAME  ),
t_2_A_sn_back_step AS (SELECT
  A_MultBodyAggAux_f1.y AS y
FROM
  t_3_A_MultBodyAggAux_f1 AS A_MultBodyAggAux_f1
GROUP BY y),
t_1_A_sn_back_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      A_sn_back_step.y AS y,
      0 AS synalog_sn_in_full
    FROM
      t_2_A_sn_back_step AS A_sn_back_step
   UNION ALL
  
    SELECT
      A_sn_full.y AS y,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.A_sn_full AS A_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_A_sn_back_seen AS (SELECT
  A_sn_back_seen_MultBodyAggAux.y AS y,
  MAX(A_sn_back_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_A_sn_back_seen_MultBodyAggAux AS A_sn_back_seen_MultBodyAggAux
GROUP BY y)
SELECT
  A_sn_back_seen.y AS y
FROM
  t_0_A_sn_back_seen AS A_sn_back_seen
WHERE
  (A_sn_back_seen.synalog_sn_in_full = 0)
GROUP BY y;

INSERT INTO synalog_test.A_sn_full SELECT * FROM synalog_test.A_sn_delta;

DROP TABLE IF EXISTS synalog_test.A_sn_new;
CREATE TABLE synalog_test.A_sn_new AS WITH t_3_A_MultBodyAggAux_f6 AS (SELECT * FROM (
  
    SELECT
      0 AS y
   UNION ALL
  
    SELECT
      ((x_16) + (1)) AS y
    FROM
      synalog_test.A_sn_delta AS A_sn_delta, UNNEST(GENERATE_ARRAY(0, 100 - 1)) as x_16
    WHERE
      (A_sn_delta.y IS NOT DISTINCT FROM x_16)
  
) AS UNUSED_TABLE_NAME  ),
t_2_A_sn_step AS (SELECT
  A_MultBodyAggAux_f6.y AS y
FROM
  t_3_A_MultBodyAggAux_f6 AS A_MultBodyAggAux_f6
GROUP BY y),
t_1_A_sn_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      A_sn_step.y AS y,
      0 AS synalog_sn_in_full
    FROM
      t_2_A_sn_step AS A_sn_step
   UNION ALL
  
    SELECT
      A_sn_full.y AS y,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.A_sn_full AS A_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_A_sn_seen AS (SELECT
  A_sn_seen_MultBodyAggAux.y AS y,
  MAX(A_sn_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_A_sn_seen_MultBodyAggAux AS A_sn_seen_MultBodyAggAux
GROUP BY y)
SELECT
  A_sn_seen.y AS y
FROM
  t_0_A_sn_seen AS A_sn_seen
WHERE
  (A_sn_seen.synalog_sn_in_full = 0)
GROUP BY y;

INSERT INTO synalog_test.A_sn_full SELECT * FROM synalog_test.A_sn_new;

DROP TABLE IF EXISTS synalog_test.A_sn_delta;
CREATE TABLE synalog_test.A_sn_delta AS WITH t_3_A_MultBodyAggAux_f1 AS (SELECT * FROM (
  
    SELECT
      0 AS y
   UNION ALL
  
    SELECT
      ((x_16) + (1)) AS y
    FROM
      synalog_test.A_sn_new AS A_sn_new, UNNEST(GENERATE_ARRAY(0, 100 - 1)) as x_16
    WHERE
      (A_sn_new.y IS NOT DISTINCT FROM x_16)
  
) AS UNUSED_TABLE_NAME  ),
t_2_A_sn_back_step AS (SELECT
  A_MultBodyAggAux_f1.y AS y
FROM
  t_3_A_MultBodyAggAux_f1 AS A_MultBodyAggAux_f1
GROUP BY y),
t_1_A_sn_back_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      A_sn_back_step.y AS y,
      0 AS synalog_sn_in_full
    FROM
      t_2_A_sn_back_step AS A_sn_back_step
   UNION ALL
  
    SELECT
      A_sn_full.y AS y,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.A_sn_full AS A_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_A_sn_back_seen AS (SELECT
  A_sn_back_seen_MultBodyAggAux.y AS y,
  MAX(A_sn_back_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_A_sn_back_seen_MultBodyAggAux AS A_sn_back_seen_MultBodyAggAux
GROUP BY y)
SELECT
  A_sn_back_seen.y AS y
FROM
  t_0_A_sn_back_seen AS A_sn_back_seen
WHERE
  (A_sn_back_seen.synalog_sn_in_full = 0)
GROUP BY y;

INSERT INTO synalog_test.A_sn_full SELECT * FROM synalog_test.A_sn_delta;

DROP TABLE IF EXISTS synalog_test.A_sn_new;
CREATE TABLE synalog_test.A_sn_new AS WITH t_3_A_MultBodyAggAux_f6 AS (SELECT * FROM (
  
    SELECT
      0 AS y
   UNION ALL
  
    SELECT
      ((x_16) + (1)) AS y
    FROM
      synalog_test.A_sn_delta AS A_sn_delta, UNNEST(GENERATE_ARRAY(0, 100 - 1)) as x_16
    WHERE
      (A_sn_delta.y IS NOT DISTINCT FROM x_16)
  
) AS UNUSED_TABLE_NAME  ),
t_2_A_sn_step AS (SELECT
  A_MultBodyAggAux_f6.y AS y
FROM
  t_3_A_MultBodyAggAux_f6 AS A_MultBodyAggAux_f6
GROUP BY y),
t_1_A_sn_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      A_sn_step.y AS y,
      0 AS synalog_sn_in_full
    FROM
      t_2_A_sn_step AS A_sn_step
   UNION ALL
  
    SELECT
      A_sn_full.y AS y,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.A_sn_full AS A_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_A_sn_seen AS (SELECT
  A_sn_seen_MultBodyAggAux.y AS y,
  MAX(A_sn_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_A_sn_seen_MultBodyAggAux AS A_sn_seen_MultBodyAggAux
GROUP BY y)
SELECT
  A_sn_seen.y AS y
FROM
  t_0_A_sn_seen AS A_sn_seen
WHERE
  (A_sn_seen.synalog_sn_in_full = 0)
GROUP BY y;

INSERT INTO synalog_test.A_sn_full SELECT * FROM synalog_test.A_sn_new;

DROP TABLE IF EXISTS synalog_test.A_sn_delta;
CREATE TABLE synalog_test.A_sn_delta AS WITH t_3_A_MultBodyAggAux_f1 AS (SELECT * FROM (
  
    SELECT
      0 AS y
   UNION ALL
  
    SELECT
      ((x_16) + (1)) AS y
    FROM
      synalog_test.A_sn_new AS A_sn_new, UNNEST(GENERATE_ARRAY(0, 100 - 1)) as x_16
    WHERE
      (A_sn_new.y IS NOT DISTINCT FROM x_16)
  
) AS UNUSED_TABLE_NAME  ),
t_2_A_sn_back_step AS (SELECT
  A_MultBodyAggAux_f1.y AS y
FROM
  t_3_A_MultBodyAggAux_f1 AS A_MultBodyAggAux_f1
GROUP BY y),
t_1_A_sn_back_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      A_sn_back_step.y AS y,
      0 AS synalog_sn_in_full
    FROM
      t_2_A_sn_back_step AS A_sn_back_step
   UNION ALL
  
    SELECT
      A_sn_full.y AS y,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.A_sn_full AS A_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_A_sn_back_seen AS (SELECT
  A_sn_back_seen_MultBodyAggAux.y AS y,
  MAX(A_sn_back_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_A_sn_back_seen_MultBodyAggAux AS A_sn_back_seen_MultBodyAggAux
GROUP BY y)
SELECT
  A_sn_back_seen.y AS y
FROM
  t_0_A_sn_back_seen AS A_sn_back_seen
WHERE
  (A_sn_back_seen.synalog_sn_in_full = 0)
GROUP BY y;

INSERT INTO synalog_test.A_sn_full SELECT * FROM synalog_test.A_sn_delta;

DROP TABLE IF EXISTS synalog_test.A_sn_new;
CREATE TABLE synalog_test.A_sn_new AS WITH t_3_A_MultBodyAggAux_f6 AS (SELECT * FROM (
  
    SELECT
      0 AS y
   UNION ALL
  
    SELECT
      ((x_16) + (1)) AS y
    FROM
      synalog_test.A_sn_delta AS A_sn_delta, UNNEST(GENERATE_ARRAY(0, 100 - 1)) as x_16
    WHERE
      (A_sn_delta.y IS NOT DISTINCT FROM x_16)
  
) AS UNUSED_TABLE_NAME  ),
t_2_A_sn_step AS (SELECT
  A_MultBodyAggAux_f6.y AS y
FROM
  t_3_A_MultBodyAggAux_f6 AS A_MultBodyAggAux_f6
GROUP BY y),
t_1_A_sn_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      A_sn_step.y AS y,
      0 AS synalog_sn_in_full
    FROM
      t_2_A_sn_step AS A_sn_step
   UNION ALL
  
    SELECT
      A_sn_full.y AS y,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.A_sn_full AS A_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_A_sn_seen AS (SELECT
  A_sn_seen_MultBodyAggAux.y AS y,
  MAX(A_sn_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_A_sn_seen_MultBodyAggAux AS A_sn_seen_MultBodyAggAux
GROUP BY y)
SELECT
  A_sn_seen.y AS y
FROM
  t_0_A_sn_seen AS A_sn_seen
WHERE
  (A_sn_seen.synalog_sn_in_full = 0)
GROUP BY y;

INSERT INTO synalog_test.A_sn_full SELECT * FROM synalog_test.A_sn_new;

DROP TABLE IF EXISTS synalog_test.A_sn_delta;
CREATE TABLE synalog_test.A_sn_delta AS WITH t_3_A_MultBodyAggAux_f1 AS (SELECT * FROM (
  
    SELECT
      0 AS y
   UNION ALL
  
    SELECT
      ((x_16) + (1)) AS y
    FROM
      synalog_test.A_sn_new AS A_sn_new, UNNEST(GENERATE_ARRAY(0, 100 - 1)) as x_16
    WHERE
      (A_sn_new.y IS NOT DISTINCT FROM x_16)
  
) AS UNUSED_TABLE_NAME  ),
t_2_A_sn_back_step AS (SELECT
  A_MultBodyAggAux_f1.y AS y
FROM
  t_3_A_MultBodyAggAux_f1 AS A_MultBodyAggAux_f1
GROUP BY y),
t_1_A_sn_back_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      A_sn_back_step.y AS y,
      0 AS synalog_sn_in_full
    FROM
      t_2_A_sn_back_step AS A_sn_back_step
   UNION ALL
  
    SELECT
      A_sn_full.y AS y,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.A_sn_full AS A_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_A_sn_back_seen AS (SELECT
  A_sn_back_seen_MultBodyAggAux.y AS y,
  MAX(A_sn_back_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_A_sn_back_seen_MultBodyAggAux AS A_sn_back_seen_MultBodyAggAux
GROUP BY y)
SELECT
  A_sn_back_seen.y AS y
FROM
  t_0_A_sn_back_seen AS A_sn_back_seen
WHERE
  (A_sn_back_seen.synalog_sn_in_full = 0)
GROUP BY y;

INSERT INTO synalog_test.A_sn_full SELECT * FROM synalog_test.A_sn_delta;

DROP TABLE IF EXISTS synalog_test.A_sn_new;
CREATE TABLE synalog_test.A_sn_new AS WITH t_3_A_MultBodyAggAux_f6 AS (SELECT * FROM (
  
    SELECT
      0 AS y
   UNION ALL
  
    SELECT
      ((x_16) + (1)) AS y
    FROM
      synalog_test.A_sn_delta AS A_sn_delta, UNNEST(GENERATE_ARRAY(0, 100 - 1)) as x_16
    WHERE
      (A_sn_delta.y IS NOT DISTINCT FROM x_16)
  
) AS UNUSED_TABLE_NAME  ),
t_2_A_sn_step AS (SELECT
  A_MultBodyAggAux_f6.y AS y
FROM
  t_3_A_MultBodyAggAux_f6 AS A_MultBodyAggAux_f6
GROUP BY y),
t_1_A_sn_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      A_sn_step.y AS y,
      0 AS synalog_sn_in_full
    FROM
      t_2_A_sn_step AS A_sn_step
   UNION ALL
  
    SELECT
      A_sn_full.y AS y,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.A_sn_full AS A_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_A_sn_seen AS (SELECT
  A_sn_seen_MultBodyAggAux.y AS y,
  MAX(A_sn_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_A_sn_seen_MultBodyAggAux AS A_sn_seen_MultBodyAggAux
GROUP BY y)
SELECT
  A_sn_seen.y AS y
FROM
  t_0_A_sn_seen AS A_sn_seen
WHERE
  (A_sn_seen.synalog_sn_in_full = 0)
GROUP BY y;

INSERT INTO synalog_test.A_sn_full SELECT * FROM synalog_test.A_sn_new;

DROP TABLE IF EXISTS synalog_test.A_sn_delta;
CREATE TABLE synalog_test.A_sn_delta AS WITH t_3_A_MultBodyAggAux_f1 AS (SELECT * FROM (
  
    SELECT
      0 AS y
   UNION ALL
  
    SELECT
      ((x_16) + (1)) AS y
    FROM
      synalog_test.A_sn_new AS A_sn_new, UNNEST(GENERATE_ARRAY(0, 100 - 1)) as x_16
    WHERE
      (A_sn_new.y IS NOT DISTINCT FROM x_16)
  
) AS UNUSED_TABLE_NAME  ),
t_2_A_sn_back_step AS (SELECT
  A_MultBodyAggAux_f1.y AS y
FROM
  t_3_A_MultBodyAggAux_f1 AS A_MultBodyAggAux_f1
GROUP BY y),
t_1_A_sn_back_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      A_sn_back_step.y AS y,
      0 AS synalog_sn_in_full
    FROM
      t_2_A_sn_back_step AS A_sn_back_step
   UNION ALL
  
    SELECT
      A_sn_full.y AS y,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.A_sn_full AS A_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_A_sn_back_seen AS (SELECT
  A_sn_back_seen_MultBodyAggAux.y AS y,
  MAX(A_sn_back_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_A_sn_back_seen_MultBodyAggAux AS A_sn_back_seen_MultBodyAggAux
GROUP BY y)
SELECT
  A_sn_back_seen.y AS y
FROM
  t_0_A_sn_back_seen AS A_sn_back_seen
WHERE
  (A_sn_back_seen.synalog_sn_in_full = 0)
GROUP BY y;

INSERT INTO synalog_test.A_sn_full SELECT * FROM synalog_test.A_sn_delta;

DROP TABLE IF EXISTS synalog_test.A_sn_new;
CREATE TABLE synalog_test.A_sn_new AS WITH t_3_A_MultBodyAggAux_f6 AS (SELECT * FROM (
  
    SELECT
      0 AS y
   UNION ALL
  
    SELECT
      ((x_16) + (1)) AS y
    FROM
      synalog_test.A_sn_delta AS A_sn_delta, UNNEST(GENERATE_ARRAY(0, 100 - 1)) as x_16
    WHERE
      (A_sn_delta.y IS NOT DISTINCT FROM x_16)
  
) AS UNUSED_TABLE_NAME  ),
t_2_A_sn_step AS (SELECT
  A_MultBodyAggAux_f6.y AS y
FROM
  t_3_A_MultBodyAggAux_f6 AS A_MultBodyAggAux_f6
GROUP BY y),
t_1_A_sn_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      A_sn_step.y AS y,
      0 AS synalog_sn_in_full
    FROM
      t_2_A_sn_step AS A_sn_step
   UNION ALL
  
    SELECT
      A_sn_full.y AS y,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.A_sn_full AS A_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_A_sn_seen AS (SELECT
  A_sn_seen_MultBodyAggAux.y AS y,
  MAX(A_sn_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_A_sn_seen_MultBodyAggAux AS A_sn_seen_MultBodyAggAux
GROUP BY y)
SELECT
  A_sn_seen.y AS y
FROM
  t_0_A_sn_seen AS A_sn_seen
WHERE
  (A_sn_seen.synalog_sn_in_full = 0)
GROUP BY y;

INSERT INTO synalog_test.A_sn_full SELECT * FROM synalog_test.A_sn_new;

DROP TABLE IF EXISTS synalog_test.A_sn_delta;
CREATE TABLE synalog_test.A_sn_delta AS WITH t_3_A_MultBodyAggAux_f1 AS (SELECT * FROM (
  
    SELECT
      0 AS y
   UNION ALL
  
    SELECT
      ((x_16) + (1)) AS y
    FROM
      synalog_test.A_sn_new AS A_sn_new, UNNEST(GENERATE_ARRAY(0, 100 - 1)) as x_16
    WHERE
      (A_sn_new.y IS NOT DISTINCT FROM x_16)
  
) AS UNUSED_TABLE_NAME  ),
t_2_A_sn_back_step AS (SELECT
  A_MultBodyAggAux_f1.y AS y
FROM
  t_3_A_MultBodyAggAux_f1 AS A_MultBodyAggAux_f1
GROUP BY y),
t_1_A_sn_back_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      A_sn_back_step.y AS y,
      0 AS synalog_sn_in_full
    FROM
      t_2_A_sn_back_step AS A_sn_back_step
   UNION ALL
  
    SELECT
      A_sn_full.y AS y,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.A_sn_full AS A_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_A_sn_back_seen AS (SELECT
  A_sn_back_seen_MultBodyAggAux.y AS y,
  MAX(A_sn_back_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_A_sn_back_seen_MultBodyAggAux AS A_sn_back_seen_MultBodyAggAux
GROUP BY y)
SELECT
  A_sn_back_seen.y AS y
FROM
  t_0_A_sn_back_seen AS A_sn_back_seen
WHERE
  (A_sn_back_seen.synalog_sn_in_full = 0)
GROUP BY y;

INSERT INTO synalog_test.A_sn_full SELECT * FROM synalog_test.A_sn_delta;

DROP TABLE IF EXISTS synalog_test.A_sn_new;
CREATE TABLE synalog_test.A_sn_new AS WITH t_3_A_MultBodyAggAux_f6 AS (SELECT * FROM (
  
    SELECT
      0 AS y
   UNION ALL
  
    SELECT
      ((x_16) + (1)) AS y
    FROM
      synalog_test.A_sn_delta AS A_sn_delta, UNNEST(GENERATE_ARRAY(0, 100 - 1)) as x_16
    WHERE
      (A_sn_delta.y IS NOT DISTINCT FROM x_16)
  
) AS UNUSED_TABLE_NAME  ),
t_2_A_sn_step AS (SELECT
  A_MultBodyAggAux_f6.y AS y
FROM
  t_3_A_MultBodyAggAux_f6 AS A_MultBodyAggAux_f6
GROUP BY y),
t_1_A_sn_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      A_sn_step.y AS y,
      0 AS synalog_sn_in_full
    FROM
      t_2_A_sn_step AS A_sn_step
   UNION ALL
  
    SELECT
      A_sn_full.y AS y,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.A_sn_full AS A_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_A_sn_seen AS (SELECT
  A_sn_seen_MultBodyAggAux.y AS y,
  MAX(A_sn_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_A_sn_seen_MultBodyAggAux AS A_sn_seen_MultBodyAggAux
GROUP BY y)
SELECT
  A_sn_seen.y AS y
FROM
  t_0_A_sn_seen AS A_sn_seen
WHERE
  (A_sn_seen.synalog_sn_in_full = 0)
GROUP BY y;

INSERT INTO synalog_test.A_sn_full SELECT * FROM synalog_test.A_sn_new;

DROP TABLE IF EXISTS synalog_test.A_sn_delta;
CREATE TABLE synalog_test.A_sn_delta AS WITH t_3_A_MultBodyAggAux_f1 AS (SELECT * FROM (
  
    SELECT
      0 AS y
   UNION ALL
  
    SELECT
      ((x_16) + (1)) AS y
    FROM
      synalog_test.A_sn_new AS A_sn_new, UNNEST(GENERATE_ARRAY(0, 100 - 1)) as x_16
    WHERE
      (A_sn_new.y IS NOT DISTINCT FROM x_16)
  
) AS UNUSED_TABLE_NAME  ),
t_2_A_sn_back_step AS (SELECT
  A_MultBodyAggAux_f1.y AS y
FROM
  t_3_A_MultBodyAggAux_f1 AS A_MultBodyAggAux_f1
GROUP BY y),
t_1_A_sn_back_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      A_sn_back_step.y AS y,
      0 AS synalog_sn_in_full
    FROM
      t_2_A_sn_back_step AS A_sn_back_step
   UNION ALL
  
    SELECT
      A_sn_full.y AS y,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.A_sn_full AS A_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_A_sn_back_seen AS (SELECT
  A_sn_back_seen_MultBodyAggAux.y AS y,
  MAX(A_sn_back_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_A_sn_back_seen_MultBodyAggAux AS A_sn_back_seen_MultBodyAggAux
GROUP BY y)
SELECT
  A_sn_back_seen.y AS y
FROM
  t_0_A_sn_back_seen AS A_sn_back_seen
WHERE
  (A_sn_back_seen.synalog_sn_in_full = 0)
GROUP BY y;

INSERT INTO synalog_test.A_sn_full SELECT * FROM synalog_test.A_sn_delta;

DROP TABLE IF EXISTS synalog_test.A_sn_new;
CREATE TABLE synalog_test.A_sn_new AS WITH t_3_A_MultBodyAggAux_f6 AS (SELECT * FROM (
  
    SELECT
      0 AS y
   UNION ALL
  
    SELECT
      ((x_16) + (1)) AS y
    FROM
      synalog_test.A_sn_delta AS A_sn_delta, UNNEST(GENERATE_ARRAY(0, 100 - 1)) as x_16
    WHERE
      (A_sn_delta.y IS NOT DISTINCT FROM x_16)
  
) AS UNUSED_TABLE_NAME  ),
t_2_A_sn_step AS (SELECT
  A_MultBodyAggAux_f6.y AS y
FROM
  t_3_A_MultBodyAggAux_f6 AS A_MultBodyAggAux_f6
GROUP BY y),
t_1_A_sn_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      A_sn_step.y AS y,
      0 AS synalog_sn_in_full
    FROM
      t_2_A_sn_step AS A_sn_step
   UNION ALL
  
    SELECT
      A_sn_full.y AS y,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.A_sn_full AS A_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_A_sn_seen AS (SELECT
  A_sn_seen_MultBodyAggAux.y AS y,
  MAX(A_sn_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_A_sn_seen_MultBodyAggAux AS A_sn_seen_MultBodyAggAux
GROUP BY y)
SELECT
  A_sn_seen.y AS y
FROM
  t_0_A_sn_seen AS A_sn_seen
WHERE
  (A_sn_seen.synalog_sn_in_full = 0)
GROUP BY y;

INSERT INTO synalog_test.A_sn_full SELECT * FROM synalog_test.A_sn_new;

DROP TABLE IF EXISTS synalog_test.A_sn_delta;
CREATE TABLE synalog_test.A_sn_delta AS WITH t_3_A_MultBodyAggAux_f1 AS (SELECT * FROM (
  
    SELECT
      0 AS y
   UNION ALL
  
    SELECT
      ((x_16) + (1)) AS y
    FROM
      synalog_test.A_sn_new AS A_sn_new, UNNEST(GENERATE_ARRAY(0, 100 - 1)) as x_16
    WHERE
      (A_sn_new.y IS NOT DISTINCT FROM x_16)
  
) AS UNUSED_TABLE_NAME  ),
t_2_A_sn_back_step AS (SELECT
  A_MultBodyAggAux_f1.y AS y
FROM
  t_3_A_MultBodyAggAux_f1 AS A_MultBodyAggAux_f1
GROUP BY y),
t_1_A_sn_back_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      A_sn_back_step.y AS y,
      0 AS synalog_sn_in_full
    FROM
      t_2_A_sn_back_step AS A_sn_back_step
   UNION ALL
  
    SELECT
      A_sn_full.y AS y,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.A_sn_full AS A_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_A_sn_back_seen AS (SELECT
  A_sn_back_seen_MultBodyAggAux.y AS y,
  MAX(A_sn_back_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_A_sn_back_seen_MultBodyAggAux AS A_sn_back_seen_MultBodyAggAux
GROUP BY y)
SELECT
  A_sn_back_seen.y AS y
FROM
  t_0_A_sn_back_seen AS A_sn_back_seen
WHERE
  (A_sn_back_seen.synalog_sn_in_full = 0)
GROUP BY y;

INSERT INTO synalog_test.A_sn_full SELECT * FROM synalog_test.A_sn_delta;

DROP TABLE IF EXISTS synalog_test.A_sn_new;
CREATE TABLE synalog_test.A_sn_new AS WITH t_3_A_MultBodyAggAux_f6 AS (SELECT * FROM (
  
    SELECT
      0 AS y
   UNION ALL
  
    SELECT
      ((x_16) + (1)) AS y
    FROM
      synalog_test.A_sn_delta AS A_sn_delta, UNNEST(GENERATE_ARRAY(0, 100 - 1)) as x_16
    WHERE
      (A_sn_delta.y IS NOT DISTINCT FROM x_16)
  
) AS UNUSED_TABLE_NAME  ),
t_2_A_sn_step AS (SELECT
  A_MultBodyAggAux_f6.y AS y
FROM
  t_3_A_MultBodyAggAux_f6 AS A_MultBodyAggAux_f6
GROUP BY y),
t_1_A_sn_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      A_sn_step.y AS y,
      0 AS synalog_sn_in_full
    FROM
      t_2_A_sn_step AS A_sn_step
   UNION ALL
  
    SELECT
      A_sn_full.y AS y,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.A_sn_full AS A_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_A_sn_seen AS (SELECT
  A_sn_seen_MultBodyAggAux.y AS y,
  MAX(A_sn_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_A_sn_seen_MultBodyAggAux AS A_sn_seen_MultBodyAggAux
GROUP BY y)
SELECT
  A_sn_seen.y AS y
FROM
  t_0_A_sn_seen AS A_sn_seen
WHERE
  (A_sn_seen.synalog_sn_in_full = 0)
GROUP BY y;

INSERT INTO synalog_test.A_sn_full SELECT * FROM synalog_test.A_sn_new;

DROP TABLE IF EXISTS synalog_test.A_sn_delta;
CREATE TABLE synalog_test.A_sn_delta AS WITH t_3_A_MultBodyAggAux_f1 AS (SELECT * FROM (
  
    SELECT
      0 AS y
   UNION ALL
  
    SELECT
      ((x_16) + (1)) AS y
    FROM
      synalog_test.A_sn_new AS A_sn_new, UNNEST(GENERATE_ARRAY(0, 100 - 1)) as x_16
    WHERE
      (A_sn_new.y IS NOT DISTINCT FROM x_16)
  
) AS UNUSED_TABLE_NAME  ),
t_2_A_sn_back_step AS (SELECT
  A_MultBodyAggAux_f1.y AS y
FROM
  t_3_A_MultBodyAggAux_f1 AS A_MultBodyAggAux_f1
GROUP BY y),
t_1_A_sn_back_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      A_sn_back_step.y AS y,
      0 AS synalog_sn_in_full
    FROM
      t_2_A_sn_back_step AS A_sn_back_step
   UNION ALL
  
    SELECT
      A_sn_full.y AS y,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.A_sn_full AS A_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_A_sn_back_seen AS (SELECT
  A_sn_back_seen_MultBodyAggAux.y AS y,
  MAX(A_sn_back_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_A_sn_back_seen_MultBodyAggAux AS A_sn_back_seen_MultBodyAggAux
GROUP BY y)
SELECT
  A_sn_back_seen.y AS y
FROM
  t_0_A_sn_back_seen AS A_sn_back_seen
WHERE
  (A_sn_back_seen.synalog_sn_in_full = 0)
GROUP BY y;

INSERT INTO synalog_test.A_sn_full SELECT * FROM synalog_test.A_sn_delta;

DROP TABLE IF EXISTS synalog_test.A_sn_new;
CREATE TABLE synalog_test.A_sn_new AS WITH t_3_A_MultBodyAggAux_f6 AS (SELECT * FROM (
  
    SELECT
      0 AS y
   UNION ALL
  
    SELECT
      ((x_16) + (1)) AS y
    FROM
      synalog_test.A_sn_delta AS A_sn_delta, UNNEST(GENERATE_ARRAY(0, 100 - 1)) as x_16
    WHERE
      (A_sn_delta.y IS NOT DISTINCT FROM x_16)
  
) AS UNUSED_TABLE_NAME  ),
t_2_A_sn_step AS (SELECT
  A_MultBodyAggAux_f6.y AS y
FROM
  t_3_A_MultBodyAggAux_f6 AS A_MultBodyAggAux_f6
GROUP BY y),
t_1_A_sn_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      A_sn_step.y AS y,
      0 AS synalog_sn_in_full
    FROM
      t_2_A_sn_step AS A_sn_step
   UNION ALL
  
    SELECT
      A_sn_full.y AS y,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.A_sn_full AS A_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_A_sn_seen AS (SELECT
  A_sn_seen_MultBodyAggAux.y AS y,
  MAX(A_sn_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_A_sn_seen_MultBodyAggAux AS A_sn_seen_MultBodyAggAux
GROUP BY y)
SELECT
  A_sn_seen.y AS y
FROM
  t_0_A_sn_seen AS A_sn_seen
WHERE
  (A_sn_seen.synalog_sn_in_full = 0)
GROUP BY y;

INSERT INTO synalog_test.A_sn_full SELECT * FROM synalog_test.A_sn_new;

DROP TABLE IF EXISTS synalog_test.B_sn_new;
CREATE TABLE synalog_test.B_sn_new AS WITH t_3_B_MultBodyAggAux_f12 AS (SELECT * FROM (
  
    SELECT
      0 AS y
   UNION ALL
  
    SELECT
      ((x_16) + (1)) AS y
    FROM
      synalog_test.B_sn_delta AS B_sn_delta, UNNEST(GENERATE_ARRAY(0, 100 - 1)) as x_16
    WHERE
      (B_sn_delta.y IS NOT DISTINCT FROM x_16)
  
) AS UNUSED_TABLE_NAME  ),
t_2_B_sn_step AS (SELECT
  B_MultBodyAggAux_f12.y AS y
FROM
  t_3_B_MultBodyAggAux_f12 AS B_MultBodyAggAux_f12
GROUP BY y),
t_1_B_sn_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      B_sn_step.y AS y,
      0 AS synalog_sn_in_full
    FROM
      t_2_B_sn_step AS B_sn_step
   UNION ALL
  
    SELECT
      B_sn_full.y AS y,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.B_sn_full AS B_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_B_sn_seen AS (SELECT
  B_sn_seen_MultBodyAggAux.y AS y,
  MAX(B_sn_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_B_sn_seen_MultBodyAggAux AS B_sn_seen_MultBodyAggAux
GROUP BY y)
SELECT
  B_sn_seen.y AS y
FROM
  t_0_B_sn_seen AS B_sn_seen
WHERE
  (B_sn_seen.synalog_sn_in_full = 0)
GROUP BY y;

INSERT INTO synalog_test.B_sn_full SELECT * FROM synalog_test.B_sn_new;

DROP TABLE IF EXISTS synalog_test.B_sn_delta;
CREATE TABLE synalog_test.B_sn_delta AS WITH t_3_B_MultBodyAggAux_f7 AS (SELECT * FROM (
  
    SELECT
      0 AS y
   UNION ALL
  
    SELECT
      ((x_16) + (1)) AS y
    FROM
      synalog_test.B_sn_new AS B_sn_new, UNNEST(GENERATE_ARRAY(0, 100 - 1)) as x_16
    WHERE
      (B_sn_new.y IS NOT DISTINCT FROM x_16)
  
) AS UNUSED_TABLE_NAME  ),
t_2_B_sn_back_step AS (SELECT
  B_MultBodyAggAux_f7.y AS y
FROM
  t_3_B_MultBodyAggAux_f7 AS B_MultBodyAggAux_f7
GROUP BY y),
t_1_B_sn_back_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      B_sn_back_step.y AS y,
      0 AS synalog_sn_in_full
    FROM
      t_2_B_sn_back_step AS B_sn_back_step
   UNION ALL
  
    SELECT
      B_sn_full.y AS y,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.B_sn_full AS B_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_B_sn_back_seen AS (SELECT
  B_sn_back_seen_MultBodyAggAux.y AS y,
  MAX(B_sn_back_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_B_sn_back_seen_MultBodyAggAux AS B_sn_back_seen_MultBodyAggAux
GROUP BY y)
SELECT
  B_sn_back_seen.y AS y
FROM
  t_0_B_sn_back_seen AS B_sn_back_seen
WHERE
  (B_sn_back_seen.synalog_sn_in_full = 0)
GROUP BY y;

INSERT INTO synalog_test.B_sn_full SELECT * FROM synalog_test.B_sn_delta;

DROP TABLE IF EXISTS synalog_test.B_sn_new;
CREATE TABLE synalog_test.B_sn_new AS WITH t_3_B_MultBodyAggAux_f12 AS (SELECT * FROM (
  
    SELECT
      0 AS y
   UNION ALL
  
    SELECT
      ((x_16) + (1)) AS y
    FROM
      synalog_test.B_sn_delta AS B_sn_delta, UNNEST(GENERATE_ARRAY(0, 100 - 1)) as x_16
    WHERE
      (B_sn_delta.y IS NOT DISTINCT FROM x_16)
  
) AS UNUSED_TABLE_NAME  ),
t_2_B_sn_step AS (SELECT
  B_MultBodyAggAux_f12.y AS y
FROM
  t_3_B_MultBodyAggAux_f12 AS B_MultBodyAggAux_f12
GROUP BY y),
t_1_B_sn_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      B_sn_step.y AS y,
      0 AS synalog_sn_in_full
    FROM
      t_2_B_sn_step AS B_sn_step
   UNION ALL
  
    SELECT
      B_sn_full.y AS y,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.B_sn_full AS B_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_B_sn_seen AS (SELECT
  B_sn_seen_MultBodyAggAux.y AS y,
  MAX(B_sn_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_B_sn_seen_MultBodyAggAux AS B_sn_seen_MultBodyAggAux
GROUP BY y)
SELECT
  B_sn_seen.y AS y
FROM
  t_0_B_sn_seen AS B_sn_seen
WHERE
  (B_sn_seen.synalog_sn_in_full = 0)
GROUP BY y;

INSERT INTO synalog_test.B_sn_full SELECT * FROM synalog_test.B_sn_new;

DROP TABLE IF EXISTS synalog_test.B_sn_delta;
CREATE TABLE synalog_test.B_sn_delta AS WITH t_3_B_MultBodyAggAux_f7 AS (SELECT * FROM (
  
    SELECT
      0 AS y
   UNION ALL
  
    SELECT
      ((x_16) + (1)) AS y
    FROM
      synalog_test.B_sn_new AS B_sn_new, UNNEST(GENERATE_ARRAY(0, 100 - 1)) as x_16
    WHERE
      (B_sn_new.y IS NOT DISTINCT FROM x_16)
  
) AS UNUSED_TABLE_NAME  ),
t_2_B_sn_back_step AS (SELECT
  B_MultBodyAggAux_f7.y AS y
FROM
  t_3_B_MultBodyAggAux_f7 AS B_MultBodyAggAux_f7
GROUP BY y),
t_1_B_sn_back_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      B_sn_back_step.y AS y,
      0 AS synalog_sn_in_full
    FROM
      t_2_B_sn_back_step AS B_sn_back_step
   UNION ALL
  
    SELECT
      B_sn_full.y AS y,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.B_sn_full AS B_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_B_sn_back_seen AS (SELECT
  B_sn_back_seen_MultBodyAggAux.y AS y,
  MAX(B_sn_back_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_B_sn_back_seen_MultBodyAggAux AS B_sn_back_seen_MultBodyAggAux
GROUP BY y)
SELECT
  B_sn_back_seen.y AS y
FROM
  t_0_B_sn_back_seen AS B_sn_back_seen
WHERE
  (B_sn_back_seen.synalog_sn_in_full = 0)
GROUP BY y;

INSERT INTO synalog_test.B_sn_full SELECT * FROM synalog_test.B_sn_delta;

DROP TABLE IF EXISTS synalog_test.B_sn_new;
CREATE TABLE synalog_test.B_sn_new AS WITH t_3_B_MultBodyAggAux_f12 AS (SELECT * FROM (
  
    SELECT
      0 AS y
   UNION ALL
  
    SELECT
      ((x_16) + (1)) AS y
    FROM
      synalog_test.B_sn_delta AS B_sn_delta, UNNEST(GENERATE_ARRAY(0, 100 - 1)) as x_16
    WHERE
      (B_sn_delta.y IS NOT DISTINCT FROM x_16)
  
) AS UNUSED_TABLE_NAME  ),
t_2_B_sn_step AS (SELECT
  B_MultBodyAggAux_f12.y AS y
FROM
  t_3_B_MultBodyAggAux_f12 AS B_MultBodyAggAux_f12
GROUP BY y),
t_1_B_sn_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      B_sn_step.y AS y,
      0 AS synalog_sn_in_full
    FROM
      t_2_B_sn_step AS B_sn_step
   UNION ALL
  
    SELECT
      B_sn_full.y AS y,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.B_sn_full AS B_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_B_sn_seen AS (SELECT
  B_sn_seen_MultBodyAggAux.y AS y,
  MAX(B_sn_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_B_sn_seen_MultBodyAggAux AS B_sn_seen_MultBodyAggAux
GROUP BY y)
SELECT
  B_sn_seen.y AS y
FROM
  t_0_B_sn_seen AS B_sn_seen
WHERE
  (B_sn_seen.synalog_sn_in_full = 0)
GROUP BY y;

INSERT INTO synalog_test.B_sn_full SELECT * FROM synalog_test.B_sn_new;

DROP TABLE IF EXISTS synalog_test.B_sn_delta;
CREATE TABLE synalog_test.B_sn_delta AS WITH t_3_B_MultBodyAggAux_f7 AS (SELECT * FROM (
  
    SELECT
      0 AS y
   UNION ALL
  
    SELECT
      ((x_16) + (1)) AS y
    FROM
      synalog_test.B_sn_new AS B_sn_new, UNNEST(GENERATE_ARRAY(0, 100 - 1)) as x_16
    WHERE
      (B_sn_new.y IS NOT DISTINCT FROM x_16)
  
) AS UNUSED_TABLE_NAME  ),
t_2_B_sn_back_step AS (SELECT
  B_MultBodyAggAux_f7.y AS y
FROM
  t_3_B_MultBodyAggAux_f7 AS B_MultBodyAggAux_f7
GROUP BY y),
t_1_B_sn_back_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      B_sn_back_step.y AS y,
      0 AS synalog_sn_in_full
    FROM
      t_2_B_sn_back_step AS B_sn_back_step
   UNION ALL
  
    SELECT
      B_sn_full.y AS y,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.B_sn_full AS B_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_B_sn_back_seen AS (SELECT
  B_sn_back_seen_MultBodyAggAux.y AS y,
  MAX(B_sn_back_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_B_sn_back_seen_MultBodyAggAux AS B_sn_back_seen_MultBodyAggAux
GROUP BY y)
SELECT
  B_sn_back_seen.y AS y
FROM
  t_0_B_sn_back_seen AS B_sn_back_seen
WHERE
  (B_sn_back_seen.synalog_sn_in_full = 0)
GROUP BY y;

INSERT INTO synalog_test.B_sn_full SELECT * FROM synalog_test.B_sn_delta;

DROP TABLE IF EXISTS synalog_test.B_sn_new;
CREATE TABLE synalog_test.B_sn_new AS WITH t_3_B_MultBodyAggAux_f12 AS (SELECT * FROM (
  
    SELECT
      0 AS y
   UNION ALL
  
    SELECT
      ((x_16) + (1)) AS y
    FROM
      synalog_test.B_sn_delta AS B_sn_delta, UNNEST(GENERATE_ARRAY(0, 100 - 1)) as x_16
    WHERE
      (B_sn_delta.y IS NOT DISTINCT FROM x_16)
  
) AS UNUSED_TABLE_NAME  ),
t_2_B_sn_step AS (SELECT
  B_MultBodyAggAux_f12.y AS y
FROM
  t_3_B_MultBodyAggAux_f12 AS B_MultBodyAggAux_f12
GROUP BY y),
t_1_B_sn_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      B_sn_step.y AS y,
      0 AS synalog_sn_in_full
    FROM
      t_2_B_sn_step AS B_sn_step
   UNION ALL
  
    SELECT
      B_sn_full.y AS y,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.B_sn_full AS B_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_B_sn_seen AS (SELECT
  B_sn_seen_MultBodyAggAux.y AS y,
  MAX(B_sn_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_B_sn_seen_MultBodyAggAux AS B_sn_seen_MultBodyAggAux
GROUP BY y)
SELECT
  B_sn_seen.y AS y
FROM
  t_0_B_sn_seen AS B_sn_seen
WHERE
  (B_sn_seen.synalog_sn_in_full = 0)
GROUP BY y;

INSERT INTO synalog_test.B_sn_full SELECT * FROM synalog_test.B_sn_new;

DROP TABLE IF EXISTS synalog_test.B_sn_delta;
CREATE TABLE synalog_test.B_sn_delta AS WITH t_3_B_MultBodyAggAux_f7 AS (SELECT * FROM (
  
    SELECT
      0 AS y
   UNION ALL
  
    SELECT
      ((x_16) + (1)) AS y
    FROM
      synalog_test.B_sn_new AS B_sn_new, UNNEST(GENERATE_ARRAY(0, 100 - 1)) as x_16
    WHERE
      (B_sn_new.y IS NOT DISTINCT FROM x_16)
  
) AS UNUSED_TABLE_NAME  ),
t_2_B_sn_back_step AS (SELECT
  B_MultBodyAggAux_f7.y AS y
FROM
  t_3_B_MultBodyAggAux_f7 AS B_MultBodyAggAux_f7
GROUP BY y),
t_1_B_sn_back_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      B_sn_back_step.y AS y,
      0 AS synalog_sn_in_full
    FROM
      t_2_B_sn_back_step AS B_sn_back_step
   UNION ALL
  
    SELECT
      B_sn_full.y AS y,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.B_sn_full AS B_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_B_sn_back_seen AS (SELECT
  B_sn_back_seen_MultBodyAggAux.y AS y,
  MAX(B_sn_back_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_B_sn_back_seen_MultBodyAggAux AS B_sn_back_seen_MultBodyAggAux
GROUP BY y)
SELECT
  B_sn_back_seen.y AS y
FROM
  t_0_B_sn_back_seen AS B_sn_back_seen
WHERE
  (B_sn_back_seen.synalog_sn_in_full = 0)
GROUP BY y;

INSERT INTO synalog_test.B_sn_full SELECT * FROM synalog_test.B_sn_delta;

DROP TABLE IF EXISTS synalog_test.B_sn_new;
CREATE TABLE synalog_test.B_sn_new AS WITH t_3_B_MultBodyAggAux_f12 AS (SELECT * FROM (
  
    SELECT
      0 AS y
   UNION ALL
  
    SELECT
      ((x_16) + (1)) AS y
    FROM
      synalog_test.B_sn_delta AS B_sn_delta, UNNEST(GENERATE_ARRAY(0, 100 - 1)) as x_16
    WHERE
      (B_sn_delta.y IS NOT DISTINCT FROM x_16)
  
) AS UNUSED_TABLE_NAME  ),
t_2_B_sn_step AS (SELECT
  B_MultBodyAggAux_f12.y AS y
FROM
  t_3_B_MultBodyAggAux_f12 AS B_MultBodyAggAux_f12
GROUP BY y),
t_1_B_sn_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      B_sn_step.y AS y,
      0 AS synalog_sn_in_full
    FROM
      t_2_B_sn_step AS B_sn_step
   UNION ALL
  
    SELECT
      B_sn_full.y AS y,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.B_sn_full AS B_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_B_sn_seen AS (SELECT
  B_sn_seen_MultBodyAggAux.y AS y,
  MAX(B_sn_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_B_sn_seen_MultBodyAggAux AS B_sn_seen_MultBodyAggAux
GROUP BY y)
SELECT
  B_sn_seen.y AS y
FROM
  t_0_B_sn_seen AS B_sn_seen
WHERE
  (B_sn_seen.synalog_sn_in_full = 0)
GROUP BY y;

INSERT INTO synalog_test.B_sn_full SELECT * FROM synalog_test.B_sn_new;

DROP TABLE IF EXISTS synalog_test.B_sn_delta;
CREATE TABLE synalog_test.B_sn_delta AS WITH t_3_B_MultBodyAggAux_f7 AS (SELECT * FROM (
  
    SELECT
      0 AS y
   UNION ALL
  
    SELECT
      ((x_16) + (1)) AS y
    FROM
      synalog_test.B_sn_new AS B_sn_new, UNNEST(GENERATE_ARRAY(0, 100 - 1)) as x_16
    WHERE
      (B_sn_new.y IS NOT DISTINCT FROM x_16)
  
) AS UNUSED_TABLE_NAME  ),
t_2_B_sn_back_step AS (SELECT
  B_MultBodyAggAux_f7.y AS y
FROM
  t_3_B_MultBodyAggAux_f7 AS B_MultBodyAggAux_f7
GROUP BY y),
t_1_B_sn_back_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      B_sn_back_step.y AS y,
      0 AS synalog_sn_in_full
    FROM
      t_2_B_sn_back_step AS B_sn_back_step
   UNION ALL
  
    SELECT
      B_sn_full.y AS y,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.B_sn_full AS B_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_B_sn_back_seen AS (SELECT
  B_sn_back_seen_MultBodyAggAux.y AS y,
  MAX(B_sn_back_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_B_sn_back_seen_MultBodyAggAux AS B_sn_back_seen_MultBodyAggAux
GROUP BY y)
SELECT
  B_sn_back_seen.y AS y
FROM
  t_0_B_sn_back_seen AS B_sn_back_seen
WHERE
  (B_sn_back_seen.synalog_sn_in_full = 0)
GROUP BY y;

INSERT INTO synalog_test.B_sn_full SELECT * FROM synalog_test.B_sn_delta;

DROP TABLE IF EXISTS synalog_test.B_sn_new;
CREATE TABLE synalog_test.B_sn_new AS WITH t_3_B_MultBodyAggAux_f12 AS (SELECT * FROM (
  
    SELECT
      0 AS y
   UNION ALL
  
    SELECT
      ((x_16) + (1)) AS y
    FROM
      synalog_test.B_sn_delta AS B_sn_delta, UNNEST(GENERATE_ARRAY(0, 100 - 1)) as x_16
    WHERE
      (B_sn_delta.y IS NOT DISTINCT FROM x_16)
  
) AS UNUSED_TABLE_NAME  ),
t_2_B_sn_step AS (SELECT
  B_MultBodyAggAux_f12.y AS y
FROM
  t_3_B_MultBodyAggAux_f12 AS B_MultBodyAggAux_f12
GROUP BY y),
t_1_B_sn_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      B_sn_step.y AS y,
      0 AS synalog_sn_in_full
    FROM
      t_2_B_sn_step AS B_sn_step
   UNION ALL
  
    SELECT
      B_sn_full.y AS y,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.B_sn_full AS B_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_B_sn_seen AS (SELECT
  B_sn_seen_MultBodyAggAux.y AS y,
  MAX(B_sn_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_B_sn_seen_MultBodyAggAux AS B_sn_seen_MultBodyAggAux
GROUP BY y)
SELECT
  B_sn_seen.y AS y
FROM
  t_0_B_sn_seen AS B_sn_seen
WHERE
  (B_sn_seen.synalog_sn_in_full = 0)
GROUP BY y;

INSERT INTO synalog_test.B_sn_full SELECT * FROM synalog_test.B_sn_new;

DROP TABLE IF EXISTS synalog_test.B_sn_delta;
CREATE TABLE synalog_test.B_sn_delta AS WITH t_3_B_MultBodyAggAux_f7 AS (SELECT * FROM (
  
    SELECT
      0 AS y
   UNION ALL
  
    SELECT
      ((x_16) + (1)) AS y
    FROM
      synalog_test.B_sn_new AS B_sn_new, UNNEST(GENERATE_ARRAY(0, 100 - 1)) as x_16
    WHERE
      (B_sn_new.y IS NOT DISTINCT FROM x_16)
  
) AS UNUSED_TABLE_NAME  ),
t_2_B_sn_back_step AS (SELECT
  B_MultBodyAggAux_f7.y AS y
FROM
  t_3_B_MultBodyAggAux_f7 AS B_MultBodyAggAux_f7
GROUP BY y),
t_1_B_sn_back_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      B_sn_back_step.y AS y,
      0 AS synalog_sn_in_full
    FROM
      t_2_B_sn_back_step AS B_sn_back_step
   UNION ALL
  
    SELECT
      B_sn_full.y AS y,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.B_sn_full AS B_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_B_sn_back_seen AS (SELECT
  B_sn_back_seen_MultBodyAggAux.y AS y,
  MAX(B_sn_back_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_B_sn_back_seen_MultBodyAggAux AS B_sn_back_seen_MultBodyAggAux
GROUP BY y)
SELECT
  B_sn_back_seen.y AS y
FROM
  t_0_B_sn_back_seen AS B_sn_back_seen
WHERE
  (B_sn_back_seen.synalog_sn_in_full = 0)
GROUP BY y;

INSERT INTO synalog_test.B_sn_full SELECT * FROM synalog_test.B_sn_delta;

DROP TABLE IF EXISTS synalog_test.B_sn_new;
CREATE TABLE synalog_test.B_sn_new AS WITH t_3_B_MultBodyAggAux_f12 AS (SELECT * FROM (
  
    SELECT
      0 AS y
   UNION ALL
  
    SELECT
      ((x_16) + (1)) AS y
    FROM
      synalog_test.B_sn_delta AS B_sn_delta, UNNEST(GENERATE_ARRAY(0, 100 - 1)) as x_16
    WHERE
      (B_sn_delta.y IS NOT DISTINCT FROM x_16)
  
) AS UNUSED_TABLE_NAME  ),
t_2_B_sn_step AS (SELECT
  B_MultBodyAggAux_f12.y AS y
FROM
  t_3_B_MultBodyAggAux_f12 AS B_MultBodyAggAux_f12
GROUP BY y),
t_1_B_sn_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      B_sn_step.y AS y,
      0 AS synalog_sn_in_full
    FROM
      t_2_B_sn_step AS B_sn_step
   UNION ALL
  
    SELECT
      B_sn_full.y AS y,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.B_sn_full AS B_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_B_sn_seen AS (SELECT
  B_sn_seen_MultBodyAggAux.y AS y,
  MAX(B_sn_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_B_sn_seen_MultBodyAggAux AS B_sn_seen_MultBodyAggAux
GROUP BY y)
SELECT
  B_sn_seen.y AS y
FROM
  t_0_B_sn_seen AS B_sn_seen
WHERE
  (B_sn_seen.synalog_sn_in_full = 0)
GROUP BY y;

INSERT INTO synalog_test.B_sn_full SELECT * FROM synalog_test.B_sn_new;

DROP TABLE IF EXISTS synalog_test.B_sn_delta;
CREATE TABLE synalog_test.B_sn_delta AS WITH t_3_B_MultBodyAggAux_f7 AS (SELECT * FROM (
  
    SELECT
      0 AS y
   UNION ALL
  
    SELECT
      ((x_16) + (1)) AS y
    FROM
      synalog_test.B_sn_new AS B_sn_new, UNNEST(GENERATE_ARRAY(0, 100 - 1)) as x_16
    WHERE
      (B_sn_new.y IS NOT DISTINCT FROM x_16)
  
) AS UNUSED_TABLE_NAME  ),
t_2_B_sn_back_step AS (SELECT
  B_MultBodyAggAux_f7.y AS y
FROM
  t_3_B_MultBodyAggAux_f7 AS B_MultBodyAggAux_f7
GROUP BY y),
t_1_B_sn_back_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      B_sn_back_step.y AS y,
      0 AS synalog_sn_in_full
    FROM
      t_2_B_sn_back_step AS B_sn_back_step
   UNION ALL
  
    SELECT
      B_sn_full.y AS y,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.B_sn_full AS B_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_B_sn_back_seen AS (SELECT
  B_sn_back_seen_MultBodyAggAux.y AS y,
  MAX(B_sn_back_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_B_sn_back_seen_MultBodyAggAux AS B_sn_back_seen_MultBodyAggAux
GROUP BY y)
SELECT
  B_sn_back_seen.y AS y
FROM
  t_0_B_sn_back_seen AS B_sn_back_seen
WHERE
  (B_sn_back_seen.synalog_sn_in_full = 0)
GROUP BY y;

INSERT INTO synalog_test.B_sn_full SELECT * FROM synalog_test.B_sn_delta;

DROP TABLE IF EXISTS synalog_test.B_sn_new;
CREATE TABLE synalog_test.B_sn_new AS WITH t_3_B_MultBodyAggAux_f12 AS (SELECT * FROM (
  
    SELECT
      0 AS y
   UNION ALL
  
    SELECT
      ((x_16) + (1)) AS y
    FROM
      synalog_test.B_sn_delta AS B_sn_delta, UNNEST(GENERATE_ARRAY(0, 100 - 1)) as x_16
    WHERE
      (B_sn_delta.y IS NOT DISTINCT FROM x_16)
  
) AS UNUSED_TABLE_NAME  ),
t_2_B_sn_step AS (SELECT
  B_MultBodyAggAux_f12.y AS y
FROM
  t_3_B_MultBodyAggAux_f12 AS B_MultBodyAggAux_f12
GROUP BY y),
t_1_B_sn_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      B_sn_step.y AS y,
      0 AS synalog_sn_in_full
    FROM
      t_2_B_sn_step AS B_sn_step
   UNION ALL
  
    SELECT
      B_sn_full.y AS y,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.B_sn_full AS B_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_B_sn_seen AS (SELECT
  B_sn_seen_MultBodyAggAux.y AS y,
  MAX(B_sn_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_B_sn_seen_MultBodyAggAux AS B_sn_seen_MultBodyAggAux
GROUP BY y)
SELECT
  B_sn_seen.y AS y
FROM
  t_0_B_sn_seen AS B_sn_seen
WHERE
  (B_sn_seen.synalog_sn_in_full = 0)
GROUP BY y;

INSERT INTO synalog_test.B_sn_full SELECT * FROM synalog_test.B_sn_new;

DROP TABLE IF EXISTS synalog_test.B_sn_delta;
CREATE TABLE synalog_test.B_sn_delta AS WITH t_3_B_MultBodyAggAux_f7 AS (SELECT * FROM (
  
    SELECT
      0 AS y
   UNION ALL
  
    SELECT
      ((x_16) + (1)) AS y
    FROM
      synalog_test.B_sn_new AS B_sn_new, UNNEST(GENERATE_ARRAY(0, 100 - 1)) as x_16
    WHERE
      (B_sn_new.y IS NOT DISTINCT FROM x_16)
  
) AS UNUSED_TABLE_NAME  ),
t_2_B_sn_back_step AS (SELECT
  B_MultBodyAggAux_f7.y AS y
FROM
  t_3_B_MultBodyAggAux_f7 AS B_MultBodyAggAux_f7
GROUP BY y),
t_1_B_sn_back_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      B_sn_back_step.y AS y,
      0 AS synalog_sn_in_full
    FROM
      t_2_B_sn_back_step AS B_sn_back_step
   UNION ALL
  
    SELECT
      B_sn_full.y AS y,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.B_sn_full AS B_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_B_sn_back_seen AS (SELECT
  B_sn_back_seen_MultBodyAggAux.y AS y,
  MAX(B_sn_back_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_B_sn_back_seen_MultBodyAggAux AS B_sn_back_seen_MultBodyAggAux
GROUP BY y)
SELECT
  B_sn_back_seen.y AS y
FROM
  t_0_B_sn_back_seen AS B_sn_back_seen
WHERE
  (B_sn_back_seen.synalog_sn_in_full = 0)
GROUP BY y;

INSERT INTO synalog_test.B_sn_full SELECT * FROM synalog_test.B_sn_delta;

DROP TABLE IF EXISTS synalog_test.B_sn_new;
CREATE TABLE synalog_test.B_sn_new AS WITH t_3_B_MultBodyAggAux_f12 AS (SELECT * FROM (
  
    SELECT
      0 AS y
   UNION ALL
  
    SELECT
      ((x_16) + (1)) AS y
    FROM
      synalog_test.B_sn_delta AS B_sn_delta, UNNEST(GENERATE_ARRAY(0, 100 - 1)) as x_16
    WHERE
      (B_sn_delta.y IS NOT DISTINCT FROM x_16)
  
) AS UNUSED_TABLE_NAME  ),
t_2_B_sn_step AS (SELECT
  B_MultBodyAggAux_f12.y AS y
FROM
  t_3_B_MultBodyAggAux_f12 AS B_MultBodyAggAux_f12
GROUP BY y),
t_1_B_sn_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      B_sn_step.y AS y,
      0 AS synalog_sn_in_full
    FROM
      t_2_B_sn_step AS B_sn_step
   UNION ALL
  
    SELECT
      B_sn_full.y AS y,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.B_sn_full AS B_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_B_sn_seen AS (SELECT
  B_sn_seen_MultBodyAggAux.y AS y,
  MAX(B_sn_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_B_sn_seen_MultBodyAggAux AS B_sn_seen_MultBodyAggAux
GROUP BY y)
SELECT
  B_sn_seen.y AS y
FROM
  t_0_B_sn_seen AS B_sn_seen
WHERE
  (B_sn_seen.synalog_sn_in_full = 0)
GROUP BY y;

INSERT INTO synalog_test.B_sn_full SELECT * FROM synalog_test.B_sn_new;

DROP TABLE IF EXISTS synalog_test.B_sn_delta;
CREATE TABLE synalog_test.B_sn_delta AS WITH t_3_B_MultBodyAggAux_f7 AS (SELECT * FROM (
  
    SELECT
      0 AS y
   UNION ALL
  
    SELECT
      ((x_16) + (1)) AS y
    FROM
      synalog_test.B_sn_new AS B_sn_new, UNNEST(GENERATE_ARRAY(0, 100 - 1)) as x_16
    WHERE
      (B_sn_new.y IS NOT DISTINCT FROM x_16)
  
) AS UNUSED_TABLE_NAME  ),
t_2_B_sn_back_step AS (SELECT
  B_MultBodyAggAux_f7.y AS y
FROM
  t_3_B_MultBodyAggAux_f7 AS B_MultBodyAggAux_f7
GROUP BY y),
t_1_B_sn_back_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      B_sn_back_step.y AS y,
      0 AS synalog_sn_in_full
    FROM
      t_2_B_sn_back_step AS B_sn_back_step
   UNION ALL
  
    SELECT
      B_sn_full.y AS y,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.B_sn_full AS B_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_B_sn_back_seen AS (SELECT
  B_sn_back_seen_MultBodyAggAux.y AS y,
  MAX(B_sn_back_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_B_sn_back_seen_MultBodyAggAux AS B_sn_back_seen_MultBodyAggAux
GROUP BY y)
SELECT
  B_sn_back_seen.y AS y
FROM
  t_0_B_sn_back_seen AS B_sn_back_seen
WHERE
  (B_sn_back_seen.synalog_sn_in_full = 0)
GROUP BY y;

INSERT INTO synalog_test.B_sn_full SELECT * FROM synalog_test.B_sn_delta;

DROP TABLE IF EXISTS synalog_test.B_sn_new;
CREATE TABLE synalog_test.B_sn_new AS WITH t_3_B_MultBodyAggAux_f12 AS (SELECT * FROM (
  
    SELECT
      0 AS y
   UNION ALL
  
    SELECT
      ((x_16) + (1)) AS y
    FROM
      synalog_test.B_sn_delta AS B_sn_delta, UNNEST(GENERATE_ARRAY(0, 100 - 1)) as x_16
    WHERE
      (B_sn_delta.y IS NOT DISTINCT FROM x_16)
  
) AS UNUSED_TABLE_NAME  ),
t_2_B_sn_step AS (SELECT
  B_MultBodyAggAux_f12.y AS y
FROM
  t_3_B_MultBodyAggAux_f12 AS B_MultBodyAggAux_f12
GROUP BY y),
t_1_B_sn_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      B_sn_step.y AS y,
      0 AS synalog_sn_in_full
    FROM
      t_2_B_sn_step AS B_sn_step
   UNION ALL
  
    SELECT
      B_sn_full.y AS y,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.B_sn_full AS B_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_B_sn_seen AS (SELECT
  B_sn_seen_MultBodyAggAux.y AS y,
  MAX(B_sn_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_B_sn_seen_MultBodyAggAux AS B_sn_seen_MultBodyAggAux
GROUP BY y)
SELECT
  B_sn_seen.y AS y
FROM
  t_0_B_sn_seen AS B_sn_seen
WHERE
  (B_sn_seen.synalog_sn_in_full = 0)
GROUP BY y;

INSERT INTO synalog_test.B_sn_full SELECT * FROM synalog_test.B_sn_new;

DROP TABLE IF EXISTS synalog_test.B_sn_delta;
CREATE TABLE synalog_test.B_sn_delta AS WITH t_3_B_MultBodyAggAux_f7 AS (SELECT * FROM (
  
    SELECT
      0 AS y
   UNION ALL
  
    SELECT
      ((x_16) + (1)) AS y
    FROM
      synalog_test.B_sn_new AS B_sn_new, UNNEST(GENERATE_ARRAY(0, 100 - 1)) as x_16
    WHERE
      (B_sn_new.y IS NOT DISTINCT FROM x_16)
  
) AS UNUSED_TABLE_NAME  ),
t_2_B_sn_back_step AS (SELECT
  B_MultBodyAggAux_f7.y AS y
FROM
  t_3_B_MultBodyAggAux_f7 AS B_MultBodyAggAux_f7
GROUP BY y),
t_1_B_sn_back_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      B_sn_back_step.y AS y,
      0 AS synalog_sn_in_full
    FROM
      t_2_B_sn_back_step AS B_sn_back_step
   UNION ALL
  
    SELECT
      B_sn_full.y AS y,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.B_sn_full AS B_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_B_sn_back_seen AS (SELECT
  B_sn_back_seen_MultBodyAggAux.y AS y,
  MAX(B_sn_back_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_B_sn_back_seen_MultBodyAggAux AS B_sn_back_seen_MultBodyAggAux
GROUP BY y)
SELECT
  B_sn_back_seen.y AS y
FROM
  t_0_B_sn_back_seen AS B_sn_back_seen
WHERE
  (B_sn_back_seen.synalog_sn_in_full = 0)
GROUP BY y;

INSERT INTO synalog_test.B_sn_full SELECT * FROM synalog_test.B_sn_delta;

DROP TABLE IF EXISTS synalog_test.B_sn_new;
CREATE TABLE synalog_test.B_sn_new AS WITH t_3_B_MultBodyAggAux_f12 AS (SELECT * FROM (
  
    SELECT
      0 AS y
   UNION ALL
  
    SELECT
      ((x_16) + (1)) AS y
    FROM
      synalog_test.B_sn_delta AS B_sn_delta, UNNEST(GENERATE_ARRAY(0, 100 - 1)) as x_16
    WHERE
      (B_sn_delta.y IS NOT DISTINCT FROM x_16)
  
) AS UNUSED_TABLE_NAME  ),
t_2_B_sn_step AS (SELECT
  B_MultBodyAggAux_f12.y AS y
FROM
  t_3_B_MultBodyAggAux_f12 AS B_MultBodyAggAux_f12
GROUP BY y),
t_1_B_sn_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      B_sn_step.y AS y,
      0 AS synalog_sn_in_full
    FROM
      t_2_B_sn_step AS B_sn_step
   UNION ALL
  
    SELECT
      B_sn_full.y AS y,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.B_sn_full AS B_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_B_sn_seen AS (SELECT
  B_sn_seen_MultBodyAggAux.y AS y,
  MAX(B_sn_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_B_sn_seen_MultBodyAggAux AS B_sn_seen_MultBodyAggAux
GROUP BY y)
SELECT
  B_sn_seen.y AS y
FROM
  t_0_B_sn_seen AS B_sn_seen
WHERE
  (B_sn_seen.synalog_sn_in_full = 0)
GROUP BY y;

INSERT INTO synalog_test.B_sn_full SELECT * FROM synalog_test.B_sn_new;

DROP TABLE IF EXISTS synalog_test.B_sn_delta;
CREATE TABLE synalog_test.B_sn_delta AS WITH t_3_B_MultBodyAggAux_f7 AS (SELECT * FROM (
  
    SELECT
      0 AS y
   UNION ALL
  
    SELECT
      ((x_16) + (1)) AS y
    FROM
      synalog_test.B_sn_new AS B_sn_new, UNNEST(GENERATE_ARRAY(0, 100 - 1)) as x_16
    WHERE
      (B_sn_new.y IS NOT DISTINCT FROM x_16)
  
) AS UNUSED_TABLE_NAME  ),
t_2_B_sn_back_step AS (SELECT
  B_MultBodyAggAux_f7.y AS y
FROM
  t_3_B_MultBodyAggAux_f7 AS B_MultBodyAggAux_f7
GROUP BY y),
t_1_B_sn_back_seen_MultBodyAggAux AS (SELECT * FROM (
  
    SELECT
      B_sn_back_step.y AS y,
      0 AS synalog_sn_in_full
    FROM
      t_2_B_sn_back_step AS B_sn_back_step
   UNION ALL
  
    SELECT
      B_sn_full.y AS y,
      1 AS synalog_sn_in_full
    FROM
      synalog_test.B_sn_full AS B_sn_full
  
) AS UNUSED_TABLE_NAME  ),
t_0_B_sn_back_seen AS (SELECT
  B_sn_back_seen_MultBodyAggAux.y AS y,
  MAX(B_sn_back_seen_MultBodyAggAux.synalog_sn_in_full) AS synalog_sn_in_full
FROM
  t_1_B_sn_back_seen_MultBodyAggAux AS B_sn_back_seen_MultBodyAggAux
GROUP BY y)
SELECT
  B_sn_back_seen.y AS y
FROM
  t_0_B_sn_back_seen AS B_sn_back_seen
WHERE
  (B_sn_back_seen.synalog_sn_in_full = 0)
GROUP BY y;

INSERT INTO synalog_test.B_sn_full SELECT * FROM synalog_test.B_sn_delta;

SELECT
  MAX(A_sn_full.y) AS a,
  MAX(B_sn_full.y) AS b
FROM
  synalog_test.A_sn_full AS A_sn_full, synalog_test.B_sn_full AS B_sn_full;