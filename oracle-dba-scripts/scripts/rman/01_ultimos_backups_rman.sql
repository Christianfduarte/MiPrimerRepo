/*
  Nombre: 01_ultimos_backups_rman.sql
  Objetivo: consultar últimos backups registrados por RMAN.
  Requiere: SELECT en V$RMAN_BACKUP_JOB_DETAILS
  Compatible: Oracle 12c+
*/

SELECT
  session_key,
  input_type,
  status,
  TO_CHAR(start_time, 'YYYY-MM-DD HH24:MI:SS') AS inicio,
  TO_CHAR(end_time, 'YYYY-MM-DD HH24:MI:SS') AS fin,
  ROUND(output_bytes / 1024 / 1024 / 1024, 2) AS gb_salida
FROM v$rman_backup_job_details
ORDER BY start_time DESC;
