/*
  Nombre: 01_inventario_parches.sql
  Objetivo: listar parches aplicados en la base.
  Requiere: SELECT en DBA_REGISTRY_SQLPATCH
  Compatible: Oracle 12.1+
*/

SELECT
  patch_id,
  patch_type,
  action,
  status,
  action_time,
  description
FROM dba_registry_sqlpatch
ORDER BY action_time DESC;
