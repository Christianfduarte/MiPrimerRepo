/*
  Nombre: 02_errores_oracle_por_usuario.sql
  Objetivo: intentos fallidos de conexión por usuario.
  Requiere: SELECT en DBA_AUDIT_SESSION
  Compatible: Oracle 12c+
*/

SELECT
  username,
  returncode,
  COUNT(*) AS total
FROM dba_audit_session
WHERE returncode <> 0
  AND timestamp >= SYSDATE - 30
GROUP BY username, returncode
ORDER BY total DESC;
