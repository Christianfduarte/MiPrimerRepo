/*
  Nombre: 03_jobs_fallidos.sql
  Objetivo: jobs scheduler con fallas recientes.
  Requiere: SELECT en DBA_SCHEDULER_JOB_RUN_DETAILS
  Compatible: Oracle 12c+
*/

SELECT
  owner,
  job_name,
  status,
  error#,
  additional_info,
  log_date
FROM dba_scheduler_job_run_details
WHERE status <> 'SUCCEEDED'
  AND log_date >= SYSDATE - 7
ORDER BY log_date DESC;
