/*
  Nombre: 03_estado_managed_standby.sql
  Objetivo: estado de procesos Data Guard Managed Standby.
  Requiere: SELECT en V$MANAGED_STANDBY
  Compatible: Oracle 12c+
*/

SELECT
  process,
  status,
  thread#,
  sequence#,
  block#,
  blocks
FROM v$managed_standby
ORDER BY process;
