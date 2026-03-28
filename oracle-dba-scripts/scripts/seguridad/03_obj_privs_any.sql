/*
  Nombre: 03_obj_privs_any.sql
  Objetivo: revisar grants tipo ANY sobre objetos.
  Requiere: SELECT en DBA_TAB_PRIVS
  Compatible: Oracle 12c+
*/

SELECT
  grantee,
  owner,
  table_name,
  privilege,
  grantable
FROM dba_tab_privs
WHERE privilege IN ('ALTER','DELETE','INSERT','UPDATE','SELECT')
  AND owner IN ('SYS','SYSTEM')
ORDER BY grantee, owner, table_name;
