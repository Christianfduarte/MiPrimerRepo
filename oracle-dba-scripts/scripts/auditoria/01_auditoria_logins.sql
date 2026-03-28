/*
  Nombre: 01_auditoria_logins.sql
  Objetivo: revisar últimos eventos de login auditados.
  Requiere: SELECT en DBA_AUDIT_SESSION
  Compatible: Oracle 12c+
*/

SELECT
  username,
  userhost,
  returncode,
  TO_CHAR(timestamp, 'YYYY-MM-DD HH24:MI:SS') AS ts
FROM dba_audit_session
ORDER BY timestamp DESC
FETCH FIRST 100 ROWS ONLY;
