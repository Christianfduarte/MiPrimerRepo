/*
  Nombre: 02_perfiles_y_limites.sql
  Objetivo: revisar límites de perfiles de usuario.
  Requiere: SELECT en DBA_PROFILES
  Compatible: Oracle 12c+
*/

SELECT
  profile,
  resource_name,
  limit
FROM dba_profiles
WHERE resource_name IN ('FAILED_LOGIN_ATTEMPTS','PASSWORD_LIFE_TIME','PASSWORD_REUSE_TIME','SESSIONS_PER_USER')
ORDER BY profile, resource_name;
