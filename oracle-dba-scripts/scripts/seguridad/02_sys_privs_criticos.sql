/*
  Nombre: 02_sys_privs_criticos.sql
  Objetivo: usuarios/roles con privilegios críticos.
  Requiere: SELECT en DBA_SYS_PRIVS
  Compatible: Oracle 12c+
*/

SELECT
  grantee,
  privilege,
  admin_option
FROM dba_sys_privs
WHERE privilege IN (
  'SYSDBA','SYSOPER','SYSASM','CREATE ANY TABLE','DROP ANY TABLE','ALTER SYSTEM','GRANT ANY PRIVILEGE'
)
ORDER BY grantee, privilege;
