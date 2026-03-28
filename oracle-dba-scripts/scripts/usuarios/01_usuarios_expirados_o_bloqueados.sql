/*
  Nombre: 01_usuarios_expirados_o_bloqueados.sql
  Objetivo: listar usuarios bloqueados o expirados.
  Requiere: SELECT en DBA_USERS
  Compatible: Oracle 12c+
*/

SELECT
  username,
  account_status,
  lock_date,
  expiry_date,
  profile
FROM dba_users
WHERE account_status LIKE 'LOCKED%'
   OR account_status LIKE 'EXPIRED%'
ORDER BY username;
