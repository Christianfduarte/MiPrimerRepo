/*
  Nombre: 01_uso_datafiles.sql
  Objetivo: revisar tamaño de datafiles por tablespace.
  Requiere: SELECT en DBA_DATA_FILES
  Compatible: Oracle 12c+
*/

SELECT
  tablespace_name,
  file_name,
  ROUND(bytes / 1024 / 1024, 2) AS mb
FROM dba_data_files
ORDER BY tablespace_name, file_name;
