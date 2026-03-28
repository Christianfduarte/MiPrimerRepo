/*
  Nombre: 02_resumen_backups_7d.sql
  Objetivo: resumen de backups RMAN últimos 7 días.
  Requiere: SELECT en V$RMAN_BACKUP_JOB_DETAILS
  Compatible: Oracle 12c+
*/

SELECT
  TRUNC(start_time) AS fecha,
  input_type,
  status,
  COUNT(*) AS jobs,
  ROUND(SUM(output_bytes)/1024/1024/1024, 2) AS gb_total
FROM v$rman_backup_job_details
WHERE start_time >= SYSDATE - 7
GROUP BY TRUNC(start_time), input_type, status
ORDER BY fecha DESC, input_type;
