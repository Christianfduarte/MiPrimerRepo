/*
  Nombre: 03_datafiles_autextend_off.sql
  Objetivo: datafiles sin AUTOEXTEND habilitado.
  Requiere: SELECT en DBA_DATA_FILES
  Compatible: Oracle 12c+
*/

SELECT
  tablespace_name,
  file_name,
  autoextensible,
  ROUND(bytes/1024/1024,2) mb
FROM dba_data_files
WHERE autoextensible = 'NO'
ORDER BY tablespace_name, file_name;
