/*
  Nombre: 03_usuarios_sin_login_90d.sql
  Objetivo: detectar usuarios sin login en 90 días.
  Requiere: SELECT en DBA_USERS
  Compatible: Oracle 12c+
*/

SELECT
  username,
  account_status,
  created,
  last_login,
  profile
FROM dba_users
WHERE last_login IS NULL OR last_login < SYSDATE - 90
ORDER BY last_login NULLS FIRST;
