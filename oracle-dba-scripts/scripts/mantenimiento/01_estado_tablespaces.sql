/*
  Nombre: 01_estado_tablespaces.sql
  Objetivo: revisar estado y uso de tablespaces.
  Requiere: SELECT en DBA_DATA_FILES y DBA_FREE_SPACE
  Compatible: Oracle 12c+
*/

SELECT
  df.tablespace_name,
  ROUND(SUM(df.bytes) / 1024 / 1024, 2) AS mb_total,
  ROUND((SUM(df.bytes) - NVL(fs.free_bytes, 0)) / 1024 / 1024, 2) AS mb_usado,
  ROUND(NVL(fs.free_bytes, 0) / 1024 / 1024, 2) AS mb_libre
FROM dba_data_files df
LEFT JOIN (
  SELECT
    tablespace_name,
    SUM(bytes) AS free_bytes
  FROM dba_free_space
  GROUP BY tablespace_name
) fs ON fs.tablespace_name = df.tablespace_name
GROUP BY df.tablespace_name, fs.free_bytes
ORDER BY df.tablespace_name;
