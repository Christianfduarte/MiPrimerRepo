/*
  Nombre: 02_tablespaces_criticos.sql
  Objetivo: detectar tablespaces sobre umbral de uso.
  Requiere: SELECT en DBA_DATA_FILES, DBA_FREE_SPACE
  Compatible: Oracle 12c+
*/

WITH t AS (
  SELECT
    df.tablespace_name,
    SUM(df.bytes) total_bytes,
    NVL(fs.free_bytes, 0) free_bytes
  FROM dba_data_files df
  LEFT JOIN (
    SELECT tablespace_name, SUM(bytes) free_bytes
    FROM dba_free_space
    GROUP BY tablespace_name
  ) fs ON fs.tablespace_name = df.tablespace_name
  GROUP BY df.tablespace_name, fs.free_bytes
)
SELECT
  tablespace_name,
  ROUND(total_bytes/1024/1024,2) mb_total,
  ROUND((total_bytes-free_bytes)/1024/1024,2) mb_usado,
  ROUND((total_bytes-free_bytes)/NULLIF(total_bytes,0)*100,2) pct_usado
FROM t
WHERE (total_bytes-free_bytes)/NULLIF(total_bytes,0)*100 >= 85
ORDER BY pct_usado DESC;
