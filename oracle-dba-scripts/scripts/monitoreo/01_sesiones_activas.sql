/*
  Nombre: 01_sesiones_activas.sql
  Objetivo: listar sesiones activas para diagnóstico rápido.
  Requiere: acceso a V$SESSION
  Compatible: Oracle 12c+
*/

SELECT
  s.sid,
  s.serial#,
  s.username,
  s.status,
  s.machine,
  s.program,
  s.sql_id,
  s.logon_time
FROM v$session s
WHERE s.type = 'USER'
  AND s.status = 'ACTIVE'
ORDER BY s.logon_time DESC;
