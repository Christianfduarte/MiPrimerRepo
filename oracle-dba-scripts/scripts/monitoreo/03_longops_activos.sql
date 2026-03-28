/*
  Nombre: 03_longops_activos.sql
  Objetivo: monitorear operaciones largas activas.
  Requiere: SELECT en GV$SESSION_LONGOPS
  Compatible: Oracle 12c+
*/

SELECT
  inst_id,
  sid,
  serial#,
  opname,
  target,
  sofar,
  totalwork,
  ROUND(sofar * 100 / NULLIF(totalwork, 0), 2) AS pct,
  elapsed_seconds,
  time_remaining
FROM gv$session_longops
WHERE totalwork > 0
  AND sofar < totalwork
ORDER BY elapsed_seconds DESC;
