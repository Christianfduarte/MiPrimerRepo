/*
  Nombre: 01_roles_usuario.sql
  Objetivo: listar roles asignados a un usuario.
  Requiere: SELECT en DBA_ROLE_PRIVS
  Compatible: Oracle 12c+
*/

-- Reemplaza :USERNAME por el usuario objetivo en tu herramienta SQL.
SELECT
  grantee,
  granted_role,
  admin_option,
  default_role
FROM dba_role_privs
WHERE grantee = UPPER(:USERNAME)
ORDER BY granted_role;
